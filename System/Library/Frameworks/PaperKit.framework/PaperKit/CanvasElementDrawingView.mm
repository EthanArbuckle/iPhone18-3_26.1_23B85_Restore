@interface CanvasElementDrawingView
- (BOOL)_handleSingleTapAtDrawingLocation:(CGPoint)a3;
- (BOOL)_handleSingleTapAtDrawingLocation:(CGPoint)a3 fromTapStroke:(BOOL)a4;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)hitByTouchLocation:(CGPoint)a3 bounds:(CGRect)a4;
- (BOOL)hitChrome:(CGPoint)a3 isStylus:(BOOL)a4 event:(id)a5;
- (BOOL)isAtEndOfDocument;
- (BOOL)resignFirstResponder;
- (CGAffineTransform)drawingTransform;
- (NSArray)additionalStrokes;
- (PKTiledView)tiledView;
- (UIView)attachmentContainerView;
- (_TtC8PaperKit24CanvasElementDrawingView)initWithFrame:(CGRect)a3 drawing:(id)a4;
- (double)heightFromDrawing:(id)a3 delta:(double)a4;
- (id)hitMiniMenu:(CGPoint)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)inlineViewAtPoint:(CGPoint)a3;
- (void)cancelledStroke:(id)a3;
- (void)didBeginDrawing;
- (void)didEndDrawing;
- (void)didMoveToWindow;
- (void)displayLinkUpdateLiveDrawing;
- (void)drawingDidChangeVisibleStrokes:(BOOL)a3;
- (void)drawingDidEraseStrokes:(id)a3;
- (void)eraserMovedToLocation:(CGPoint)a3;
- (void)layoutSubviews;
- (void)proofreadingView:(id)a3 willPresentStringsForProofreadingItem:(id)a4;
- (void)selectionDidChange;
- (void)setAdditionalStrokes:(id)a3;
- (void)setAttachmentChromeVisible:(BOOL)a3 animated:(BOOL)a4 highlightBackground:(BOOL)a5;
- (void)updateDrawingHeight:(double)a3;
- (void)updateFrameForTextContainer;
@end

@implementation CanvasElementDrawingView

- (_TtC8PaperKit24CanvasElementDrawingView)initWithFrame:(CGRect)a3 drawing:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = type metadata accessor for PKDrawing();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a4;
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  return CanvasElementDrawingView.init(frame:drawing:)(v11, x, y, width, height);
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v15.value.super.isa = a4;
  CanvasElementDrawingView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

- (void)didMoveToWindow
{
  v2 = self;
  CanvasElementDrawingView.didMoveToWindow()();
}

- (void)layoutSubviews
{
  v2 = self;
  CanvasElementDrawingView.layoutSubviews()();
}

- (BOOL)_handleSingleTapAtDrawingLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_mathRecognitionDelegate);
  if (!v6 || (v7 = *(v6 + OBJC_IVAR____TtC8PaperKit37MathRecognitionViewControllerDelegate_viewController)) == 0)
  {
    v10 = self;
    goto LABEL_6;
  }

  v8 = self;
  if (![v7 handleSingleTapAtDrawingLocation_])
  {
LABEL_6:
    v12.receiver = self;
    v12.super_class = type metadata accessor for CanvasElementDrawingView();
    v9 = [(PKAttachmentView *)&v12 _handleSingleTapAtDrawingLocation:0 fromTapStroke:x, y];

    return v9;
  }

  return 1;
}

- (BOOL)_handleSingleTapAtDrawingLocation:(CGPoint)a3 fromTapStroke:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_mathRecognitionDelegate);
  if (!v8 || (v9 = *(v8 + OBJC_IVAR____TtC8PaperKit37MathRecognitionViewControllerDelegate_viewController)) == 0)
  {
    v12 = self;
    goto LABEL_6;
  }

  v10 = self;
  if (![v9 handleSingleTapAtDrawingLocation_])
  {
LABEL_6:
    v14.receiver = self;
    v14.super_class = type metadata accessor for CanvasElementDrawingView();
    v11 = [(PKAttachmentView *)&v14 _handleSingleTapAtDrawingLocation:v4 fromTapStroke:x, y];

    return v11;
  }

  return 1;
}

- (void)eraserMovedToLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  CanvasElementDrawingView.eraserMoved(toLocation:)(__PAIR128__(*&y, *&x));
}

- (NSArray)additionalStrokes
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CanvasElementDrawingView();
  v2 = v7.receiver;
  v3 = [(PKAttachmentView *)&v7 additionalStrokes];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for PKStroke();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {

    v5.super.isa = 0;
  }

  return v5.super.isa;
}

- (void)setAdditionalStrokes:(id)a3
{
  isa = a3;
  if (a3)
  {
    type metadata accessor for PKStroke();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = self;
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6 = self;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for CanvasElementDrawingView();
  [(PKAttachmentView *)&v7 setAdditionalStrokes:isa];

  CanvasElementDrawingView.additionalStrokes.didset();
}

- (BOOL)canBecomeFirstResponder
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  v4 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 canBecomeFirstResponder];

    v3 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)becomeFirstResponder
{
  v2 = self;
  CanvasElementDrawingView.becomeFirstResponder()(&unk_1F4F58728, partial apply for closure #1 in CanvasElementDrawingView.becomeFirstResponder(), &block_descriptor_31);

  return 0;
}

- (BOOL)resignFirstResponder
{
  v2 = self;
  CanvasElementDrawingView.becomeFirstResponder()(&unk_1F4F586D8, partial apply for closure #1 in CanvasElementDrawingView.resignFirstResponder(), &block_descriptor_14);

  return 0;
}

- (PKTiledView)tiledView
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = MEMORY[0x1E69E7D40];
    v5 = Strong;
    v6 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();
    v7 = self;

    if (v6)
    {
      v8 = (*((*v4 & *v6) + 0x468))();

      Strong = v8;
    }

    else
    {

      Strong = 0;
    }
  }

  return Strong;
}

- (void)drawingDidChangeVisibleStrokes:(BOOL)a3
{
  v4 = self;
  CanvasElementDrawingView.drawingDidChangeVisibleStrokes(_:)(a3);
}

- (id)inlineViewAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  CanvasElementDrawingView.inlineView(at:)(v6, __PAIR128__(*&y, *&x));
  v8 = v7;

  return v8;
}

- (CGAffineTransform)drawingTransform
{
  v4 = self;
  CanvasElementDrawingView.drawingTransform.getter(v8);

  v6 = v8[1];
  v7 = v8[2];
  *&retstr->a = v8[0];
  *&retstr->c = v6;
  *&retstr->tx = v7;
  return result;
}

- (void)didBeginDrawing
{
  v2 = self;
  CanvasElementDrawingView.didBeginDrawing()();
}

- (void)didEndDrawing
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CanvasElementDrawingView();
  v2 = v6.receiver;
  [(PKAttachmentView *)&v6 didEndDrawing];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x310))(Strong, v4);
  }
}

- (void)cancelledStroke:(id)a3
{
  v5 = type metadata accessor for PKStroke();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3;
  v10 = self;
  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

  isa = PKStroke._bridgeToObjectiveC()().super.isa;
  v12 = type metadata accessor for CanvasElementDrawingView();
  v13.receiver = v10;
  v13.super_class = v12;
  [(PKAttachmentView *)&v13 cancelledStroke:isa];

  [*(&v10->super.super.super.super.isa + OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_liveStreamingDisplayLink) invalidate];
  CanvasElementDrawingView.liveStreamingDisplayLink.setter(0);

  (*(v6 + 8))(v8, v5);
}

- (void)displayLinkUpdateLiveDrawing
{
  v2 = self;
  CanvasElementDrawingView.displayLinkUpdateLiveDrawing()();
}

- (void)drawingDidEraseStrokes:(id)a3
{
  type metadata accessor for PKStroke();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  CanvasElementDrawingView.drawingDidEraseStrokes(_:)(v4);
}

- (void)selectionDidChange
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CanvasElementDrawingView();
  v2 = v6.receiver;
  [(PKAttachmentView *)&v6 selectionDidChange];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x300))(Strong, v4);
  }
}

- (void)updateFrameForTextContainer
{
  v2 = self;
  CanvasElementDrawingView.updateFrameForTextContainer()();
}

- (BOOL)isAtEndOfDocument
{
  v2 = self;
  v3 = CanvasElementDrawingView.isAtEndOfDocument.getter();

  return v3 & 1;
}

- (BOOL)hitByTouchLocation:(CGPoint)a3 bounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.y;
  v9 = a3.x;
  v10 = self;
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v11 = CanvasElementDrawingView.hit(byTouchLocation:bounds:)(__PAIR128__(*&v8, *&v9), v13);

  return v11;
}

- (double)heightFromDrawing:(id)a3 delta:(double)a4
{
  v7 = type metadata accessor for PKDrawing();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3;
  v12 = self;
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  CanvasElementDrawingView.height(from:delta:)(a4);
  v14 = v13;

  (*(v8 + 8))(v10, v7);
  return v14;
}

- (void)updateDrawingHeight:(double)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = MEMORY[0x1E69E7D40];
    v12 = Strong;
    v7 = (*((*MEMORY[0x1E69E7D40] & Strong->super.super.super.super.isa) + 0x90))();
    if (v7)
    {
      v8 = v7;
      v9 = *((*v6 & *v7) + 0x840);
      v10 = self;
      v9(a3);

      v11 = v10;
    }

    else
    {
      v11 = v12;
    }
  }
}

- (UIView)attachmentContainerView
{
  v2 = self;
  v3 = CanvasElementDrawingView.attachmentContainerView.getter();

  return v3;
}

- (id)hitMiniMenu:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  CanvasElementDrawingView.hitMiniMenu(_:)(v6, __PAIR128__(*&y, *&x));
  v8 = v7;

  return v8;
}

- (BOOL)hitChrome:(CGPoint)a3 isStylus:(BOOL)a4 event:(id)a5
{
  v5 = a5;
  y = a3.y;
  x = a3.x;
  v10 = a5;
  v11 = self;
  v13.value.super.isa = v5;
  LOBYTE(v5) = CanvasElementDrawingView.hitChrome(_:isStylus:event:)(__PAIR128__(*&y, *&x), a4, v13);

  return v5 & 1;
}

- (void)setAttachmentChromeVisible:(BOOL)a3 animated:(BOOL)a4 highlightBackground:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = MEMORY[0x1E69E7D40];
    v16 = Strong;
    v11 = (*((*MEMORY[0x1E69E7D40] & Strong->super.super.super.super.isa) + 0x90))();
    if (v11)
    {
      v12 = v11;
      v13 = *((*v10 & *v11) + 0x8A0);
      v14 = self;
      v13(v7, v6, v5);

      v15 = v14;
    }

    else
    {
      v15 = v16;
    }
  }
}

- (void)proofreadingView:(id)a3 willPresentStringsForProofreadingItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CanvasElementDrawingView.proofreadingView(_:willPresentStringsFor:)(v6, v7);
}

@end