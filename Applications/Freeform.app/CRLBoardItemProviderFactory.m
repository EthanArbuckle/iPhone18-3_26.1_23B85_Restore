@interface CRLBoardItemProviderFactory
- (CRLBoardItemProviderFactory)initWithBoardItemFactory:(id)a3;
- (_TtC8Freeform19CRLBoardItemFactory)boardItemFactory;
- (id)extractAdaptiveGlyphsFrom:(id)a3 in:(_NSRange)a4;
- (id)extractPasteboardBoardItemsFrom:(id)a3;
- (id)geometryForTextBoxWithPosition:(CGPoint)a3;
- (id)providerForBoardItemFromDetectedImportableURL:(id)a3 fallbackBoardItemProvider:(id)a4;
- (id)providersForBoardItemsFromImportedRichText:(id)a3;
- (id)providersForBoardItemsFromImportedText:(id)a3;
- (id)providersForBoardItemsFromTextStorages:(id)a3 position:(CGPoint)a4 keepHighlights:(BOOL)a5;
- (id)providersForBoardItemsFromURLs:(id)a3;
- (id)styleMappingProvidersForPasteboardBoardItems:(id)a3;
@end

@implementation CRLBoardItemProviderFactory

- (CRLBoardItemProviderFactory)initWithBoardItemFactory:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CRLBoardItemProviderFactory;
  v5 = [(CRLBoardItemProviderFactory *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_boardItemFactory, v4);
  }

  return v6;
}

- (id)styleMappingProvidersForPasteboardBoardItems:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  if (v4)
  {
    v5 = [NSMutableArray arrayWithCapacity:v4];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [CRLStyleMappingBoardItemProvider alloc];
          v13 = [(CRLStyleMappingBoardItemProvider *)v12 initWithIngestibleBoardItem:v11, v15];
          if (v13)
          {
            [v5 addObject:v13];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)providersForBoardItemsFromTextStorages:(id)a3 position:(CGPoint)a4 keepHighlights:(BOOL)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a3;
  if ([v8 count])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = v8;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v21;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          if ([v15 hasVisibleContent])
          {
            v16 = [(CRLBoardItemProviderFactory *)self geometryForTextBoxWithPosition:x, y];
            v17 = [[CRLTextBoxingBoardItemProvider alloc] initWithTextStorage:v15 geometry:v16];
            if (v17)
            {
              if (!v12)
              {
                v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
              }

              [v12 addObject:v17];
            }

            x = x + 15.0;
            y = y + 15.0;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    v8 = v19;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)providersForBoardItemsFromImportedText:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(CRLBoardItemProviderFactory *)self geometryForTextBoxWithPosition:CGPointZero.x, CGPointZero.y];
    v6 = [[CRLTextBoxingBoardItemProvider alloc] initWithTextString:v4 geometry:v5];
    v7 = v6;
    if (v6)
    {
      v10 = v6;
      v8 = [NSArray arrayWithObjects:&v10 count:1];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)providersForBoardItemsFromImportedRichText:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = [(CRLBoardItemProviderFactory *)self extractPasteboardBoardItemsFrom:v4];
  [v5 addObjectsFromArray:v6];

  v7 = [CRLWPStorageSanitizer filterText:v4 removingAttachments:1];

  if ([v7 length])
  {
    v8 = [(CRLBoardItemProviderFactory *)self geometryForTextBoxWithPosition:CGPointZero.x, CGPointZero.y];
    v9 = [[CRLTextBoxingBoardItemProvider alloc] initWithRichTextString:v7 geometry:v8];
    [v5 addObject:v9];
  }

  return v5;
}

- (id)extractPasteboardBoardItemsFrom:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = [v4 length];
  if ([v4 containsAttachmentsInRange:{0, v6}])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1003D72E8;
    v10[3] = &unk_10185DEB0;
    v7 = v5;
    v11 = v7;
    [v4 enumerateAttribute:NSAttachmentAttributeName inRange:0 options:v6 usingBlock:{0, v10}];
    v8 = [(CRLBoardItemProviderFactory *)self extractAdaptiveGlyphsFrom:v4 in:0, v6];
    [v7 addObjectsFromArray:v8];
  }

  return v5;
}

- (id)providersForBoardItemsFromURLs:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 crl_arrayByTransformingWithBlock:&stru_10185DEF0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)providerForBoardItemFromDetectedImportableURL:(id)a3 fallbackBoardItemProvider:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([CRLURLBoardItemProvider canInitWithURL:v5])
  {
    v7 = [[CRLURLBoardItemProvider alloc] initWithURL:v5 fallbackBoardItemProvider:v6 isDetectedURL:1 suggestedName:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)geometryForTextBoxWithPosition:(CGPoint)a3
{
  v3 = [(CRLCanvasInfoGeometry *)[CRLCanvasMutableInfoGeometry alloc] initWithPosition:a3.x size:a3.y, CGSizeZero.width, CGSizeZero.height];
  [(CRLCanvasMutableInfoGeometry *)v3 setWidthValid:0];
  [(CRLCanvasMutableInfoGeometry *)v3 setHeightValid:0];

  return v3;
}

- (_TtC8Freeform19CRLBoardItemFactory)boardItemFactory
{
  WeakRetained = objc_loadWeakRetained(&self->_boardItemFactory);

  return WeakRetained;
}

- (id)extractAdaptiveGlyphsFrom:(id)a3 in:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = self;
  sub_100D80160(v7, location, length);

  sub_1005B981C(&qword_1019F8DC0);
  v9.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v9.super.isa;
}

@end