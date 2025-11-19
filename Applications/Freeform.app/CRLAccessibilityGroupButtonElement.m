@interface CRLAccessibilityGroupButtonElement
- (BOOL)accessibilityActivate;
- (CGRect)_boundingFrame;
- (CGRect)accessibilityFrame;
- (CGRect)boundingFrameInScreenCoordinates;
- (CRLAccessibilityGroupButtonElement)initWithChildren:(id)a3 andParent:(id)a4;
- (id)childRespondingToPress;
- (unint64_t)accessibilityTraits;
@end

@implementation CRLAccessibilityGroupButtonElement

- (CGRect)accessibilityFrame
{
  [(CRLAccessibilityGroupButtonElement *)self boundingFrameInScreenCoordinates];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v14.receiver = self;
  v14.super_class = CRLAccessibilityGroupButtonElement;
  v3 = [(CRLAccessibilityGroupButtonElement *)&v14 accessibilityTraits];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(CRLAccessibilityGroupButtonElement *)self children];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v3 |= [*(*(&v10 + 1) + 8 * v8) accessibilityTraits];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)accessibilityActivate
{
  v3 = [(CRLAccessibilityGroupButtonElement *)self childRespondingToPress];

  if (v3)
  {
    v4 = [(CRLAccessibilityGroupButtonElement *)self childRespondingToPress];
    v5 = [v4 accessibilityActivate];
  }

  else
  {
    v6 = [(CRLAccessibilityGroupButtonElement *)self children];
    v7 = [v6 count];

    if (!v7)
    {
      return 0;
    }

    v4 = [(CRLAccessibilityGroupButtonElement *)self children];
    v8 = [v4 objectAtIndexedSubscript:0];
    v5 = [v8 accessibilityActivate];
  }

  return v5;
}

- (CRLAccessibilityGroupButtonElement)initWithChildren:(id)a3 andParent:(id)a4
{
  v6 = a3;
  v7 = [(CRLAccessibilityElement *)self initWithAccessibilityParent:a4];
  v8 = v7;
  if (v7)
  {
    [(CRLAccessibilityGroupButtonElement *)v7 setChildren:v6];
  }

  return v8;
}

- (CGRect)boundingFrameInScreenCoordinates
{
  v3 = [(CRLAccessibilityElement *)self parent];
  [(CRLAccessibilityGroupButtonElement *)self _boundingFrame];
  [v3 crlaxFrameFromBounds:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)_boundingFrame
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(CRLAccessibilityGroupButtonElement *)self children];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v19 + 1) + 8 * v10) crlaxCGRectValueForKey:@"frame"];
        v27.origin.x = v11;
        v27.origin.y = v12;
        v27.size.width = v13;
        v27.size.height = v14;
        v24.origin.x = x;
        v24.origin.y = y;
        v24.size.width = width;
        v24.size.height = height;
        v25 = CGRectUnion(v24, v27);
        x = v25.origin.x;
        y = v25.origin.y;
        width = v25.size.width;
        height = v25.size.height;
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (id)childRespondingToPress
{
  WeakRetained = objc_loadWeakRetained(&self->_childRespondingToPress);

  return WeakRetained;
}

@end