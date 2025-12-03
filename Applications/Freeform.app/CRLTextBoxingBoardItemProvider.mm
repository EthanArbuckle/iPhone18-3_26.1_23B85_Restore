@interface CRLTextBoxingBoardItemProvider
+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error;
- (CRLTextBoxingBoardItemProvider)initWithRichTextString:(id)string geometry:(id)geometry;
- (CRLTextBoxingBoardItemProvider)initWithTextStorage:(id)storage geometry:(id)geometry;
- (CRLTextBoxingBoardItemProvider)initWithTextString:(id)string geometry:(id)geometry;
- (id)newBoardItemWithFactory:(id)factory bakedSize:(BOOL)size;
- (void)provideBoardItemWithFactory:(id)factory completionHandler:(id)handler;
@end

@implementation CRLTextBoxingBoardItemProvider

- (CRLTextBoxingBoardItemProvider)initWithTextStorage:(id)storage geometry:(id)geometry
{
  storageCopy = storage;
  geometryCopy = geometry;
  v12.receiver = self;
  v12.super_class = CRLTextBoxingBoardItemProvider;
  v9 = [(CRLTextBoxingBoardItemProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_textStorage, storage);
    objc_storeStrong(&v10->_geometry, geometry);
  }

  return v10;
}

- (CRLTextBoxingBoardItemProvider)initWithTextString:(id)string geometry:(id)geometry
{
  stringCopy = string;
  geometryCopy = geometry;
  v12.receiver = self;
  v12.super_class = CRLTextBoxingBoardItemProvider;
  v9 = [(CRLTextBoxingBoardItemProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_textString, string);
    objc_storeStrong(&v10->_geometry, geometry);
  }

  return v10;
}

- (CRLTextBoxingBoardItemProvider)initWithRichTextString:(id)string geometry:(id)geometry
{
  stringCopy = string;
  geometryCopy = geometry;
  v12.receiver = self;
  v12.super_class = CRLTextBoxingBoardItemProvider;
  v9 = [(CRLTextBoxingBoardItemProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_richTextString, string);
    objc_storeStrong(&v10->_geometry, geometry);
  }

  return v10;
}

+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error
{
  v16 = 0;
  v6 = [NSString crl_stringWithItemProviderData:data typeIdentifier:identifier error:&v16];
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
    if (!error)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  sub_10131A534(v8, v7);
  if (error)
  {
LABEL_6:
    v9 = v7;
    *error = v7;
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

- (id)newBoardItemWithFactory:(id)factory bakedSize:(BOOL)size
{
  factoryCopy = factory;
  v6 = factoryCopy;
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

  v7 = [factoryCopy makeTextBoxItemWithStorage:?];
LABEL_7:
  v8 = v7;
LABEL_8:
  if (self->delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(CRLIngestibleItemImportableBoardItemProviderDelegate *)self->delegate importableBoardItemProviderWillIgnoreMediaCompatibilityOnAllDevicesRequirement:self];
  }

  return v8;
}

- (void)provideBoardItemWithFactory:(id)factory completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [(CRLTextBoxingBoardItemProvider *)self newBoardItemWithFactory:factory bakedSize:1];
  boardItem = self->_boardItem;
  self->_boardItem = v6;

  v8 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy);
    v8 = handlerCopy;
  }
}

@end