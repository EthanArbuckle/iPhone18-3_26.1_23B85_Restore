@interface THNoteCardShapeLayout
- (CGRect)frameForCulling;
- (unsigned)textLayoutShouldIgnoreEquationAlignment:(id)alignment;
@end

@implementation THNoteCardShapeLayout

- (unsigned)textLayoutShouldIgnoreEquationAlignment:(id)alignment
{
  objc_opt_class();
  [(THNoteCardShapeLayout *)self info];
  return [TSUCheckedDynamicCast() ignoreEquationAlignment];
}

- (CGRect)frameForCulling
{
  v24.receiver = self;
  v24.super_class = THNoteCardShapeLayout;
  [(THNoteCardShapeLayout *)&v24 frameForCulling];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  v11 = [-[THNoteCardShapeLayout containedLayout](self "containedLayout")];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v20 + 1) + 8 * v15) frameForCulling];
        v29.origin.x = x;
        v29.origin.y = y;
        v29.size.width = width;
        v29.size.height = height;
        v27 = CGRectUnion(v26, v29);
        x = v27.origin.x;
        y = v27.origin.y;
        width = v27.size.width;
        height = v27.size.height;
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v13);
  }

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

@end