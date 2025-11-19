@interface AVTAvatarAttributeEditorFlowLayout
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
@end

@implementation AVTAvatarAttributeEditorFlowLayout

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = AVTAvatarAttributeEditorFlowLayout;
  v3 = [(UICollectionViewFlowLayout *)&v14 layoutAttributesForElementsInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 representedElementCategory] == 1)
        {
          [v8 _setZPosition:0];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v6.receiver = self;
  v6.super_class = AVTAvatarAttributeEditorFlowLayout;
  v4 = [(UICollectionViewFlowLayout *)&v6 layoutAttributesForSupplementaryViewOfKind:a3 atIndexPath:a4];
  [v4 _setZPosition:0];

  return v4;
}

@end