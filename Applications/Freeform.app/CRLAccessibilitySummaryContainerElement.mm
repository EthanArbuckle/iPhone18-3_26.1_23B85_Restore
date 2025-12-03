@interface CRLAccessibilitySummaryContainerElement
- (CGRect)accessibilityFrame;
- (CRLAccessibilitySummaryContainerElement)initWithAccessibilityContainer:(id)container containedElements:(id)elements;
- (id)accessibilityLabel;
@end

@implementation CRLAccessibilitySummaryContainerElement

- (CRLAccessibilitySummaryContainerElement)initWithAccessibilityContainer:(id)container containedElements:(id)elements
{
  elementsCopy = elements;
  v20.receiver = self;
  v20.super_class = CRLAccessibilitySummaryContainerElement;
  v7 = [(CRLAccessibilitySummaryContainerElement *)&v20 initWithAccessibilityContainer:container];
  if (v7)
  {
    v8 = [elementsCopy copy];
    containedElements = v7->_containedElements;
    v7->_containedElements = v8;

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = v7->_containedElements;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v16 + 1) + 8 * v14) setIsAccessibilityElement:{0, v16}];
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v12);
    }
  }

  return v7;
}

- (CGRect)accessibilityFrame
{
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  containedElements = [(CRLAccessibilitySummaryContainerElement *)self containedElements];
  v6 = [containedElements countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    v36 = CGRectZero.origin.y;
    v34 = CGRectZero.size.height;
    v35 = CGRectZero.size.width;
    v9 = height;
    v10 = width;
    v11 = y;
    x = CGRectNull.origin.x;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(containedElements);
        }

        v14 = *(*(&v37 + 1) + 8 * i);
        if (CRLAccessibilityShouldPerformValidationChecks())
        {
          [v14 accessibilityFrame];
          v46.origin.y = v36;
          v46.origin.x = CGRectZero.origin.x;
          v46.size.height = v34;
          v46.size.width = v35;
          if (CGRectEqualToRect(v42, v46))
          {
            ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
            if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Found CGRectZero AX frame for contained element, this is probably a bug", v16, v17, v18, v19, v20, *&v34))
            {
              abort();
            }
          }
        }

        v43.origin.x = x;
        v43.origin.y = v11;
        v43.size.width = v10;
        v43.size.height = v9;
        v47.origin.x = CGRectNull.origin.x;
        v47.origin.y = y;
        v47.size.width = width;
        v47.size.height = height;
        v21 = CGRectEqualToRect(v43, v47);
        [v14 accessibilityFrame];
        v26 = v22;
        v27 = v23;
        v28 = v24;
        v29 = v25;
        if (!v21)
        {
          v44.origin.x = x;
          v44.origin.y = v11;
          v44.size.width = v10;
          v44.size.height = v9;
          *&v22 = CGRectUnion(v44, *&v26);
        }

        x = v22;
        v11 = v23;
        v10 = v24;
        v9 = v25;
      }

      v7 = [containedElements countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = height;
    v10 = width;
    v11 = y;
    x = CGRectNull.origin.x;
  }

  v30 = x;
  v31 = v11;
  v32 = v10;
  v33 = v9;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (id)accessibilityLabel
{
  v3 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  containedElements = [(CRLAccessibilitySummaryContainerElement *)self containedElements];
  v5 = [containedElements countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(containedElements);
        }

        accessibilityLabel = [*(*(&v19 + 1) + 8 * i) accessibilityLabel];
        [v3 crlaxAddObjectIfNotNil:accessibilityLabel];
      }

      v6 = [containedElements countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v17 = __CRLAccessibilityStringForArraysAndVariables(v3, v10, v11, v12, v13, v14, v15, v16, @"__CRLAccessibilityStringForArraysAndVariablesSentinel");

  return v17;
}

@end