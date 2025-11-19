@interface CRLTextBoxingBoardItemProvider
+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
- (CRLTextBoxingBoardItemProvider)initWithRichTextString:(id)a3 geometry:(id)a4;
- (CRLTextBoxingBoardItemProvider)initWithTextStorage:(id)a3 geometry:(id)a4;
- (CRLTextBoxingBoardItemProvider)initWithTextString:(id)a3 geometry:(id)a4;
- (id)newBoardItemWithFactory:(id)a3 bakedSize:(BOOL)a4;
- (void)provideBoardItemWithFactory:(id)a3 completionHandler:(id)a4;
@end

@implementation CRLTextBoxingBoardItemProvider

- (CRLTextBoxingBoardItemProvider)initWithTextStorage:(id)a3 geometry:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CRLTextBoxingBoardItemProvider;
  v9 = [(CRLTextBoxingBoardItemProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_textStorage, a3);
    objc_storeStrong(&v10->_geometry, a4);
  }

  return v10;
}

- (CRLTextBoxingBoardItemProvider)initWithTextString:(id)a3 geometry:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CRLTextBoxingBoardItemProvider;
  v9 = [(CRLTextBoxingBoardItemProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_textString, a3);
    objc_storeStrong(&v10->_geometry, a4);
  }

  return v10;
}

- (CRLTextBoxingBoardItemProvider)initWithRichTextString:(id)a3 geometry:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CRLTextBoxingBoardItemProvider;
  v9 = [(CRLTextBoxingBoardItemProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_richTextString, a3);
    objc_storeStrong(&v10->_geometry, a4);
  }

  return v10;
}

+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5
{
  v16 = 0;
  v6 = [NSString crl_stringWithItemProviderData:a3 typeIdentifier:a4 error:&v16];
  v7 = v16;
  if (!v7)
  {
    goto LABEL_7;
  }

  if (qword_101AD5A08 != -1)
  {
    sub_10131A50C();
  }

  v8 = off_1019EDA60;
  if (!os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
  {
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  sub_10131A534(v8, v7);
  if (a5)
  {
LABEL_6:
    v9 = v7;
    *a5 = v7;
  }

LABEL_7:
  if (v6)
  {
    v10 = [CRLCanvasInfoGeometry alloc];
    v11 = *&CGAffineTransformIdentity.c;
    v15[0] = *&CGAffineTransformIdentity.a;
    v15[1] = v11;
    v15[2] = *&CGAffineTransformIdentity.tx;
    v12 = [(CRLCanvasInfoGeometry *)v10 initWithFullTransform:v15 widthValid:0 heightValid:0];
    v13 = [[CRLTextBoxingBoardItemProvider alloc] initWithTextString:v6 geometry:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)newBoardItemWithFactory:(id)a3 bakedSize:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (!self->_textStorage)
  {
    if (self->_textString)
    {
LABEL_4:
      v7 = [v6 makeTextboxItemWithString:?];
      goto LABEL_7;
    }

    if (!self->_richTextString)
    {
      v10 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10131A628();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10131A63C(v10, v11);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10131A6E8();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EE10(v12, v10);
      }

      v13 = [NSString stringWithUTF8String:"[CRLTextBoxingBoardItemProvider newBoardItemWithFactory:bakedSize:]"];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLTextBoxingBoardItemProvider.m"];
      [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:95 isFatal:0 description:"Either the plain text string or the rich text string should be non-nil"];

      if (self->_textString)
      {
        goto LABEL_4;
      }

      if (!self->_richTextString)
      {
        v8 = 0;
        goto LABEL_8;
      }
    }

    v7 = [v6 makeTextboxItemWithAttributedString:?];
    goto LABEL_7;
  }

  v7 = [v5 makeTextBoxItemWithStorage:?];
LABEL_7:
  v8 = v7;
LABEL_8:
  if (self->delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(CRLIngestibleItemImportableBoardItemProviderDelegate *)self->delegate importableBoardItemProviderWillIgnoreMediaCompatibilityOnAllDevicesRequirement:self];
  }

  return v8;
}

- (void)provideBoardItemWithFactory:(id)a3 completionHandler:(id)a4
{
  v9 = a4;
  v6 = [(CRLTextBoxingBoardItemProvider *)self newBoardItemWithFactory:a3 bakedSize:1];
  boardItem = self->_boardItem;
  self->_boardItem = v6;

  v8 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9);
    v8 = v9;
  }
}

@end