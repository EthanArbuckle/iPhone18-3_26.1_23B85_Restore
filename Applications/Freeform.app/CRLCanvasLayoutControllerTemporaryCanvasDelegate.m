@interface CRLCanvasLayoutControllerTemporaryCanvasDelegate
- (CRLCanvasLayoutControllerTemporaryCanvasDelegate)initWithInfos:(id)a3;
@end

@implementation CRLCanvasLayoutControllerTemporaryCanvasDelegate

- (CRLCanvasLayoutControllerTemporaryCanvasDelegate)initWithInfos:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = CRLCanvasLayoutControllerTemporaryCanvasDelegate;
  v5 = [(CRLCanvasLayoutControllerTemporaryCanvasDelegate *)&v38 init];
  v6 = v5;
  if (v5)
  {
    v26 = v5;
    v7 = +[NSMutableDictionary dictionary];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v27 = v4;
    obj = v4;
    v8 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v8)
    {
      v9 = v8;
      v29 = *v35;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v35 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v34 + 1) + 8 * i);
          v12 = objc_opt_class();
          v13 = sub_100014370(v12, v11);
          v14 = v13;
          if (v13)
          {
            v15 = [v13 id];
            [v7 setObject:v14 forKey:v15];

            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            v16 = [v14 additionalBoardItemsForUUIDBookkeepingForTemporaryCanvases];
            v17 = [v16 countByEnumeratingWithState:&v30 objects:v39 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v31;
              do
              {
                for (j = 0; j != v18; j = j + 1)
                {
                  if (*v31 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v30 + 1) + 8 * j);
                  v22 = [v21 id];
                  [v7 setObject:v21 forKey:v22];
                }

                v18 = [v16 countByEnumeratingWithState:&v30 objects:v39 count:16];
              }

              while (v18);
            }
          }
        }

        v9 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v9);
    }

    v23 = [v7 copy];
    v6 = v26;
    UUIDsToBoardItems = v26->_UUIDsToBoardItems;
    v26->_UUIDsToBoardItems = v23;

    v4 = v27;
  }

  return v6;
}

@end