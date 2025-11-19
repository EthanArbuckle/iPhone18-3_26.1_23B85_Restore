@interface TSWSelfContainedWPViewController
- (TSKDocumentRoot)documentRoot;
- (TSWSelfContainedWPViewController)initWithStorage:(id)a3 fontSize:(float)a4 textColor:(id)a5;
- (void)dealloc;
- (void)interactiveCanvasControllerDidLayout:(id)a3;
- (void)layoutWithFrame:(CGRect)a3;
- (void)loadView;
- (void)overrideFontColorOfSmartFields:(id)a3;
- (void)p_alignScrollViewForHeight:(double)a3;
- (void)p_cleanup;
- (void)setParagraphAlignment:(unsigned int)a3;
@end

@implementation TSWSelfContainedWPViewController

- (TSWSelfContainedWPViewController)initWithStorage:(id)a3 fontSize:(float)a4 textColor:(id)a5
{
  v24.receiver = self;
  v24.super_class = TSWSelfContainedWPViewController;
  v8 = [(TSWSelfContainedWPViewController *)&v24 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = [a3 copyWithContext:{objc_msgSend(a3, "context")}];
    v8->mStorage = v9;
    v10 = a4;
    v11 = [[TSSPropertyMap alloc] initWithPropertiesAndValues:{17, *&v10, 18, +[TSUColor colorWithUIColor:](TSUColor, "colorWithUIColor:", a5), 102, 0, 87, 0, 88, 0, 85, objc_msgSend([TSWPLineSpacing alloc], "initWithMode:amount:", 0, 1.0), 104, 0, 98, +[UIColor clearColor](UIColor, "clearColor"), 0}];
    v12 = [[TSSPropertyMap alloc] initWithPropertiesAndValues:{17, *&v10, 18, +[TSUColor colorWithUIColor:](TSUColor, "colorWithUIColor:", a5), 0}];
    [a3 range];
    if (v13)
    {
      v14 = 0;
      do
      {
        v22 = v14;
        v23 = 0;
        v15 = [a3 paragraphStyleAtCharIndex:v14 effectiveRange:&v22];
        v16 = [objc_msgSend(v15 "stylesheet")];
        [(TSWPStorage *)v9 setParagraphStyle:v16 forCharRange:v22 undoTransaction:v23, 0];
        v14 += v23;
        [a3 range];
      }

      while (v14 < v17);
    }

    v18 = [(TSWPStorage *)v9 range];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_4C060;
    v21[3] = &unk_45BAA8;
    v21[4] = v12;
    v21[5] = v9;
    [(TSWPStorage *)v9 enumerateWithAttributeKind:3 inRange:v18 usingBlock:v19, v21];
  }

  return v8;
}

- (void)loadView
{
  v3 = objc_alloc_init(TSWPInteractiveCanvasController);
  [v3 setDelegate:self];
  [(TSWSelfContainedWPViewController *)self setIcc:v3];
  v4 = objc_alloc_init(TSWPiOSCanvasViewController);
  [v3 setLayerHost:v4];
  [v4 setInteractiveCanvasController:v3];
  [objc_msgSend(v4 "canvasView")];
  [objc_msgSend(v4 "canvasView")];
  [(TSWSelfContainedWPViewController *)self setCvc:v4];

  v5 = [TSKScrollView alloc];
  [objc_msgSend(v4 "canvasView")];
  v6 = [v5 initWithFrame:?];
  [v6 setUserInteractionEnabled:0];
  [v6 addSubview:{-[TSWPiOSCanvasViewController canvasView](-[TSWSelfContainedWPViewController cvc](self, "cvc"), "canvasView")}];
  [(TSWSelfContainedWPViewController *)self setView:v6];
  [-[TSWSelfContainedWPViewController view](self "view")];
}

- (void)p_cleanup
{
  [(TSWPInteractiveCanvasController *)[(TSWSelfContainedWPViewController *)self icc] teardown];
  [(TSWPiOSCanvasViewController *)[(TSWSelfContainedWPViewController *)self cvc] teardown];

  self->mICC = 0;
  self->mCVC = 0;

  self->mEditorGeometry = 0;
}

- (void)dealloc
{
  [(TSWSelfContainedWPViewController *)self p_cleanup];

  self->mStorage = 0;
  v3.receiver = self;
  v3.super_class = TSWSelfContainedWPViewController;
  [(TSWSelfContainedWPViewController *)&v3 dealloc];
}

- (void)overrideFontColorOfSmartFields:(id)a3
{
  v5 = [(TSWSelfContainedWPViewController *)self storage];
  v6 = [(TSWPStorage *)[(TSWSelfContainedWPViewController *)self storage] range];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_4C38C;
  v8[3] = &unk_45BAD0;
  v8[4] = a3;
  [(TSWPStorage *)v5 enumerateWithAttributeKind:3 inRange:v6 usingBlock:v7, v8];
}

- (void)layoutWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  [-[TSWSelfContainedWPViewController view](self "view")];
  if (![(TSWSelfContainedWPViewController *)self editorGeometry])
  {
    v6 = [[TSDMutableInfoGeometry alloc] initWithPosition:1 size:-[TSWSelfContainedWPViewController shouldTruncateText](self widthValid:"shouldTruncateText") heightValid:0 horizontalFlip:0 verticalFlip:0.0 angle:{0.0, width, height, 0.0}];
    [(TSWSelfContainedWPViewController *)self setEditorGeometry:v6];

    v7 = [TSWPShapeStyle defaultStyleWithContext:[(TSWPStorage *)[(TSWSelfContainedWPViewController *)self storage] context]];
    [v7 setValue:+[TSDStroke emptyStroke](TSDStroke forProperty:{"emptyStroke"), 517}];
    v8 = [[TSWPShapeInfo alloc] initWithContext:-[TSWPStorage context](-[TSWSelfContainedWPViewController storage](self geometry:"storage") style:"context") wpStorage:{v6, v7, -[TSWSelfContainedWPViewController storage](self, "storage")}];
    [v8 setAllowsLastLineTruncation:{-[TSWSelfContainedWPViewController shouldTruncateText](self, "shouldTruncateText")}];
    [v8 setTextUserEditable:0];
    [(TSWPInteractiveCanvasController *)[(TSWSelfContainedWPViewController *)self icc] setInfosToDisplay:[NSArray arrayWithObject:v8]];
  }

  [objc_msgSend(-[TSWPInteractiveCanvasController canvasView](-[TSWSelfContainedWPViewController icc](self "icc")];
  [objc_msgSend(-[TSWPInteractiveCanvasController canvasView](-[TSWSelfContainedWPViewController icc](self "icc")];
  [-[TSWPInteractiveCanvasController canvas](-[TSWSelfContainedWPViewController icc](self "icc")];
  [(TSDMutableInfoGeometry *)[(TSWSelfContainedWPViewController *)self editorGeometry] setSize:width, height];
  v9 = [objc_msgSend(-[TSWPInteractiveCanvasController repForInfo:](-[TSWSelfContainedWPViewController icc](self "icc")];

  [v9 invalidateSize];
}

- (void)setParagraphAlignment:(unsigned int)a3
{
  v3 = *&a3;
  v5 = [(TSWPStorage *)[(TSWSelfContainedWPViewController *)self storage] paragraphStyleAtCharIndex:0 effectiveRange:0];
  v10 = [[TSSPropertyMap alloc] initWithPropertiesAndValues:{86, v3, 0}];
  v6 = [objc_msgSend(v5 "stylesheet")];
  v7 = [(TSWSelfContainedWPViewController *)self storage];
  v8 = [(TSWPStorage *)[(TSWSelfContainedWPViewController *)self storage] range];
  [(TSWPStorage *)v7 setParagraphStyle:v6 forCharRange:v8 undoTransaction:v9, 0];
}

- (void)p_alignScrollViewForHeight:(double)a3
{
  [-[TSWSelfContainedWPViewController view](self "view")];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(TSWSelfContainedWPViewController *)self maximumHeight];
  if (v11 != 0.0)
  {
    [(TSWSelfContainedWPViewController *)self maximumHeight];
    *&v12 = v12;
    v13 = a3;
    a3 = fminf(fminf(*&v12, INFINITY), v13);
  }

  [(TSWSelfContainedWPViewControllerDelegate *)[(TSWSelfContainedWPViewController *)self delegate] selfContainedWPViewController:self didChangeSize:v10, a3];
  v14 = [(TSWSelfContainedWPViewController *)self view];

  [v14 setFrame:{v6, v8, v10, a3}];
}

- (TSKDocumentRoot)documentRoot
{
  v2 = [(TSWPStorage *)self->mStorage context];

  return [v2 documentRoot];
}

- (void)interactiveCanvasControllerDidLayout:(id)a3
{
  [-[TSWSelfContainedWPViewController view](self view];
  v5 = v4;
  [-[TSWPInteractiveCanvasController layoutController](-[TSWSelfContainedWPViewController icc](self "icc")];
  v7 = v6;
  if (v6 != self->mLastLayoutHeight || v5 != self->mLastLayoutWidth)
  {
    [objc_msgSend(-[TSWPInteractiveCanvasController canvasView](-[TSWSelfContainedWPViewController icc](self "icc")];
    [-[TSWPInteractiveCanvasController canvas](-[TSWSelfContainedWPViewController icc](self "icc")];
    [(TSWSelfContainedWPViewController *)self minimumHeight];
    *&v8 = v8;
    [(TSDMutableInfoGeometry *)[(TSWSelfContainedWPViewController *)self editorGeometry] setSize:v5 + -2.0, fmaxf(*&v8, 20.0)];
    if (v5 != self->mLastLayoutWidth)
    {
      [objc_msgSend(objc_msgSend(-[TSWPInteractiveCanvasController repForInfo:](-[TSWSelfContainedWPViewController icc](self "icc")];
    }

    [(TSWSelfContainedWPViewController *)self p_alignScrollViewForHeight:v7];
    self->mLastLayoutHeight = v7;
    self->mLastLayoutWidth = v5;
  }
}

@end