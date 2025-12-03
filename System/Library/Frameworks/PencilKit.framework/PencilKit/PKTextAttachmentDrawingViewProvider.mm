@interface PKTextAttachmentDrawingViewProvider
+ (Class)drawingClassForFileType:(id)type;
+ (Class)drawingViewClassForDrawingClass:(Class)class;
+ (Class)tiledViewClassForDrawingClass:(Class)class;
+ (void)registerViewProviderClassIfNecessary;
- (id)location;
- (void)loadView;
@end

@implementation PKTextAttachmentDrawingViewProvider

+ (void)registerViewProviderClassIfNecessary
{
  if ((registerViewProviderClassIfNecessary_didRegister & 1) == 0 && +[PKMetalUtility isMetalAvailable])
  {
    [MEMORY[0x1E69DB7F0] registerTextAttachmentViewProviderClass:objc_opt_class() forFileType:@"com.apple.drawing"];
    if (objc_opt_respondsToSelector())
    {
      [MEMORY[0x1E69DB7F0] registerTextAttachmentViewProviderClass:objc_opt_class() forFileType:@"com.apple.paper"];
    }

    registerViewProviderClassIfNecessary_didRegister = 1;
  }
}

- (id)location
{
  updatedLocationForRecycledViewProvider = [(PKTextAttachmentDrawingViewProvider *)self updatedLocationForRecycledViewProvider];
  v4 = updatedLocationForRecycledViewProvider;
  if (updatedLocationForRecycledViewProvider)
  {
    location = updatedLocationForRecycledViewProvider;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PKTextAttachmentDrawingViewProvider;
    location = [(NSTextAttachmentViewProvider *)&v8 location];
  }

  v6 = location;

  return v6;
}

- (void)loadView
{
  textAttachment = [(NSTextAttachmentViewProvider *)self textAttachment];
  pkInserting = [textAttachment pkInserting];

  textAttachment2 = [(NSTextAttachmentViewProvider *)self textAttachment];
  [textAttachment2 setPkInserting:0];

  textAttachment3 = [(NSTextAttachmentViewProvider *)self textAttachment];
  fileType = [textAttachment3 fileType];
  v8 = [PKTextAttachmentDrawingViewProvider drawingClassForFileType:fileType];

  v9 = objc_alloc([PKTextAttachmentDrawingViewProvider drawingViewClassForDrawingClass:v8]);
  textAttachment4 = [(NSTextAttachmentViewProvider *)self textAttachment];
  v11 = [v9 initWithAttachment:textAttachment4 drawingClass:v8 inserted:pkInserting];
  [(NSTextAttachmentViewProvider *)self setView:v11];

  view = [(NSTextAttachmentViewProvider *)self view];
  [view bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  textAttachment5 = [(NSTextAttachmentViewProvider *)self textAttachment];
  [textAttachment5 setBounds:{v14, v16, v18, v20}];

  textAttachment6 = [(NSTextAttachmentViewProvider *)self textAttachment];
  [textAttachment6 setEmbeddingType:1];

  textAttachment7 = [(NSTextAttachmentViewProvider *)self textAttachment];
  [textAttachment7 setStandaloneAlignment:1];

  textAttachment8 = [(NSTextAttachmentViewProvider *)self textAttachment];
  [textAttachment8 setLineLayoutPadding:0.0];
}

+ (Class)drawingClassForFileType:(id)type
{
  if ([type isEqualToString:@"com.apple.paper"])
  {
    v3 = +[PKDrawing drawingClassForPaper];
  }

  else
  {
    v3 = objc_opt_class();
  }

  return v3;
}

+ (Class)drawingViewClassForDrawingClass:(Class)class
{
  v5 = objc_opt_class();
  if (+[PKDrawing drawingClassForPaper]== class && (objc_opt_respondsToSelector() & 1) != 0)
  {
    drawingViewClassForPaper = [self drawingViewClassForPaper];
LABEL_7:
    v5 = drawingViewClassForPaper;
    goto LABEL_8;
  }

  if (objc_opt_class() == class && (objc_opt_respondsToSelector() & 1) != 0)
  {
    drawingViewClassForPaper = [self inlineDrawingViewClassForPaper];
    goto LABEL_7;
  }

LABEL_8:

  return v5;
}

+ (Class)tiledViewClassForDrawingClass:(Class)class
{
  tiledViewClassForPaper = objc_opt_class();
  if (+[PKDrawing drawingClassForPaper]== class && (objc_opt_respondsToSelector() & 1) != 0)
  {
    tiledViewClassForPaper = [self tiledViewClassForPaper];
  }

  if (objc_opt_class() == class && (objc_opt_respondsToSelector() & 1) != 0)
  {
    tiledViewClassForPaper = [self inlineDrawingTiledViewClassForPaper];
  }

  return tiledViewClassForPaper;
}

@end