@interface NTKUpNextCollectionView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation NTKUpNextCollectionView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v39.receiver = self;
  v39.super_class = NTKUpNextCollectionView;
  v8 = [(NTKUpNextCollectionView *)&v39 hitTest:eventCopy withEvent:x, y];
  v9 = v8;
  v10 = v8 == self || v8 == 0;
  if (v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = v9;
  }

  else
  {
    v32 = eventCopy;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    collectionViewLayout = [(NTKUpNextCollectionView *)self collectionViewLayout];
    v13 = [collectionViewLayout layoutAttributesForElementsInRect:{x, y, 1.0, 1.0}];

    v14 = [v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v36;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v36 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v35 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v19 computedFrame];
            v43.origin.x = v20;
            v43.origin.y = v21;
            v43.size.width = v22;
            v43.size.height = v23;
            v42.size.width = 1.0;
            v42.size.height = 1.0;
            v42.origin.x = x;
            v42.origin.y = y;
            if (CGRectIntersectsRect(v42, v43))
            {
              [v19 alpha];
              if (fabs(v24) >= 0.00000011920929 && ![v19 representedElementCategory])
              {
                if (!v16 || (!v19 ? (v34 = 0.0, v25 = 0.0) : ([v19 transform3D], v25 = v34), objc_msgSend(v16, "transform3D"), v25 > v33))
                {
                  v26 = v19;

                  v16 = v26;
                }
              }
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v15);
    }

    else
    {
      v16 = 0;
    }

    indexPath = [v16 indexPath];
    v28 = [(NTKUpNextCollectionView *)self cellForItemAtIndexPath:indexPath];
    v29 = v28;
    if (v28)
    {
      selfCopy = v28;
    }

    else
    {
      selfCopy = self;
    }

    v11 = selfCopy;

    eventCopy = v32;
  }

  return v11;
}

@end