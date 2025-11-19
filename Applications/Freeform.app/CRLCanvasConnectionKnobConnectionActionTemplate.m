@interface CRLCanvasConnectionKnobConnectionActionTemplate
- (CRLCanvasConnectionKnobConnectionActionTemplate)initWithRepForConnecting:(id)a3 andRepsForDragging:(id)a4;
@end

@implementation CRLCanvasConnectionKnobConnectionActionTemplate

- (CRLCanvasConnectionKnobConnectionActionTemplate)initWithRepForConnecting:(id)a3 andRepsForDragging:(id)a4
{
  v7 = a3;
  v8 = a4;
  v31.receiver = self;
  v31.super_class = CRLCanvasConnectionKnobConnectionActionTemplate;
  v9 = [(CRLCanvasConnectionKnobConnectionActionTemplate *)&v31 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_repAXForConnecting, a3);
    v25 = v8;
    v26 = v7;
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = +[NSMutableSet set];
    }

    repAccessibilitiesForDragging = v10->_repAccessibilitiesForDragging;
    v10->_repAccessibilitiesForDragging = v11;

    v13 = [NSMutableDictionary dictionaryWithCapacity:[(NSMutableSet *)v10->_repAccessibilitiesForDragging count]];
    occludingRepAccessibilitiesByUUID = v10->_occludingRepAccessibilitiesByUUID;
    v10->_occludingRepAccessibilitiesByUUID = v13;

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = v10->_repAccessibilitiesForDragging;
    v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v28;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v27 + 1) + 8 * i) crlaxTarget];
          v21 = [v20 layout];
          v22 = [CRLCanvasRepAccessibility crlaxBoardItemIDForLayout:v21];

          if (v22)
          {
            v23 = +[NSMutableSet set];
            [(NSMutableDictionary *)v10->_occludingRepAccessibilitiesByUUID setObject:v23 forKeyedSubscript:v22];
          }
        }

        v17 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v17);
    }

    v8 = v25;
    v7 = v26;
  }

  return v10;
}

@end