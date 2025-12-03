@interface CanvasElementDrawingView
- (BOOL)_handleSingleTapAtDrawingLocation:(CGPoint)location;
- (BOOL)_handleSingleTapAtDrawingLocation:(CGPoint)location fromTapStroke:(BOOL)stroke;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)hitByTouchLocation:(CGPoint)location bounds:(CGRect)bounds;
- (BOOL)hitChrome:(CGPoint)chrome isStylus:(BOOL)stylus event:(id)event;
- (BOOL)isAtEndOfDocument;
- (BOOL)resignFirstResponder;
- (CGAffineTransform)drawingTransform;
- (NSArray)additionalStrokes;
- (PKTiledView)tiledView;
- (UIView)attachmentContainerView;
- (_TtC8PaperKit24CanvasElementDrawingView)initWithFrame:(CGRect)frame drawing:(id)drawing;
- (double)heightFromDrawing:(id)drawing delta:(double)delta;
- (id)hitMiniMenu:(CGPoint)menu;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)inlineViewAtPoint:(CGPoint)point;
- (void)cancelledStroke:(id)stroke;
- (void)didBeginDrawing;
- (void)didEndDrawing;
- (void)didMoveToWindow;
- (void)displayLinkUpdateLiveDrawing;
- (void)drawingDidChangeVisibleStrokes:(BOOL)strokes;
- (void)drawingDidEraseStrokes:(id)strokes;
- (void)eraserMovedToLocation:(CGPoint)location;
- (void)layoutSubviews;
- (void)proofreadingView:(id)view willPresentStringsForProofreadingItem:(id)item;
- (void)selectionDidChange;
- (void)setAdditionalStrokes:(id)strokes;
- (void)setAttachmentChromeVisible:(BOOL)visible animated:(BOOL)animated highlightBackground:(BOOL)background;
- (void)updateDrawingHeight:(double)height;
- (void)updateFrameForTextContainer;
@end

@implementation CanvasElementDrawingView

- (_TtC8PaperKit24CanvasElementDrawingView)initWithFrame:(CGRect)frame drawing:(id)drawing
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9 = type metadata accessor for PKDrawing();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  drawingCopy = drawing;
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  return CanvasElementDrawingView.init(frame:drawing:)(v11, x, y, width, height);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v15.value.super.isa = event;
  CanvasElementDrawingView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

- (void)didMoveToWindow
{
  selfCopy = self;
  CanvasElementDrawingView.didMoveToWindow()();
}

- (void)layoutSubviews
{
  selfCopy = self;
  CanvasElementDrawingView.layoutSubviews()();
}

- (BOOL)_handleSingleTapAtDrawingLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_mathRecognitionDelegate);
  if (!v6 || (v7 = *(v6 + OBJC_IVAR____TtC8PaperKit37MathRecognitionViewControllerDelegate_viewController)) == 0)
  {
    selfCopy = self;
    goto LABEL_6;
  }

  selfCopy2 = self;
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

- (BOOL)_handleSingleTapAtDrawingLocation:(CGPoint)location fromTapStroke:(BOOL)stroke
{
  strokeCopy = stroke;
  y = location.y;
  x = location.x;
  v8 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_mathRecognitionDelegate);
  if (!v8 || (v9 = *(v8 + OBJC_IVAR____TtC8PaperKit37MathRecognitionViewControllerDelegate_viewController)) == 0)
  {
    selfCopy = self;
    goto LABEL_6;
  }

  selfCopy2 = self;
  if (![v9 handleSingleTapAtDrawingLocation_])
  {
LABEL_6:
    v14.receiver = self;
    v14.super_class = type metadata accessor for CanvasElementDrawingView();
    v11 = [(PKAttachmentView *)&v14 _handleSingleTapAtDrawingLocation:strokeCopy fromTapStroke:x, y];

    return v11;
  }

  return 1;
}

- (void)eraserMovedToLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  selfCopy = self;
  CanvasElementDrawingView.eraserMoved(toLocation:)(__PAIR128__(*&y, *&x));
}

- (NSArray)additionalStrokes
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CanvasElementDrawingView();
  v2 = v7.receiver;
  additionalStrokes = [(PKAttachmentView *)&v7 additionalStrokes];
  if (additionalStrokes)
  {
    v4 = additionalStrokes;
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

- (void)setAdditionalStrokes:(id)strokes
{
  isa = strokes;
  if (strokes)
  {
    type metadata accessor for PKStroke();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    selfCopy = self;
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    selfCopy2 = self;
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
    canBecomeFirstResponder = [v4 canBecomeFirstResponder];

    v3 = v5;
  }

  else
  {
    canBecomeFirstResponder = 0;
  }

  return canBecomeFirstResponder;
}

- (BOOL)becomeFirstResponder
{
  selfCopy = self;
  CanvasElementDrawingView.becomeFirstResponder()(&unk_1F4F58728, partial apply for closure #1 in CanvasElementDrawingView.becomeFirstResponder(), &block_descriptor_31);

  return 0;
}

- (BOOL)resignFirstResponder
{
  selfCopy = self;
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
    selfCopy = self;

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

- (void)drawingDidChangeVisibleStrokes:(BOOL)strokes
{
  selfCopy = self;
  CanvasElementDrawingView.drawingDidChangeVisibleStrokes(_:)(strokes);
}

- (id)inlineViewAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  CanvasElementDrawingView.inlineView(at:)(v6, __PAIR128__(*&y, *&x));
  v8 = v7;

  return v8;
}

- (CGAffineTransform)drawingTransform
{
  selfCopy = self;
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
  selfCopy = self;
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

- (void)cancelledStroke:(id)stroke
{
  v5 = type metadata accessor for PKStroke();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  strokeCopy = stroke;
  selfCopy = self;
  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

  isa = PKStroke._bridgeToObjectiveC()().super.isa;
  v12 = type metadata accessor for CanvasElementDrawingView();
  v13.receiver = selfCopy;
  v13.super_class = v12;
  [(PKAttachmentView *)&v13 cancelledStroke:isa];

  [*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_liveStreamingDisplayLink) invalidate];
  CanvasElementDrawingView.liveStreamingDisplayLink.setter(0);

  (*(v6 + 8))(v8, v5);
}

- (void)displayLinkUpdateLiveDrawing
{
  selfCopy = self;
  CanvasElementDrawingView.displayLinkUpdateLiveDrawing()();
}

- (void)drawingDidEraseStrokes:(id)strokes
{
  type metadata accessor for PKStroke();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
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
  selfCopy = self;
  CanvasElementDrawingView.updateFrameForTextContainer()();
}

- (BOOL)isAtEndOfDocument
{
  selfCopy = self;
  v3 = CanvasElementDrawingView.isAtEndOfDocument.getter();

  return v3 & 1;
}

- (BOOL)hitByTouchLocation:(CGPoint)location bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = location.y;
  v9 = location.x;
  selfCopy = self;
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v11 = CanvasElementDrawingView.hit(byTouchLocation:bounds:)(__PAIR128__(*&v8, *&v9), v13);

  return v11;
}

- (double)heightFromDrawing:(id)drawing delta:(double)delta
{
  v7 = type metadata accessor for PKDrawing();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  drawingCopy = drawing;
  selfCopy = self;
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  CanvasElementDrawingView.height(from:delta:)(delta);
  v14 = v13;

  (*(v8 + 8))(v10, v7);
  return v14;
}

- (void)updateDrawingHeight:(double)height
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
      selfCopy = self;
      v9(height);

      v11 = selfCopy;
    }

    else
    {
      v11 = v12;
    }
  }
}

- (UIView)attachmentContainerView
{
  selfCopy = self;
  v3 = CanvasElementDrawingView.attachmentContainerView.getter();

  return v3;
}

- (id)hitMiniMenu:(CGPoint)menu
{
  y = menu.y;
  x = menu.x;
  selfCopy = self;
  CanvasElementDrawingView.hitMiniMenu(_:)(v6, __PAIR128__(*&y, *&x));
  v8 = v7;

  return v8;
}

- (BOOL)hitChrome:(CGPoint)chrome isStylus:(BOOL)stylus event:(id)event
{
  eventCopy = event;
  y = chrome.y;
  x = chrome.x;
  eventCopy2 = event;
  selfCopy = self;
  v13.value.super.isa = eventCopy;
  LOBYTE(eventCopy) = CanvasElementDrawingView.hitChrome(_:isStylus:event:)(__PAIR128__(*&y, *&x), stylus, v13);

  return eventCopy & 1;
}

- (void)setAttachmentChromeVisible:(BOOL)visible animated:(BOOL)animated highlightBackground:(BOOL)background
{
  backgroundCopy = background;
  animatedCopy = animated;
  visibleCopy = visible;
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
      selfCopy = self;
      v13(visibleCopy, animatedCopy, backgroundCopy);

      v15 = selfCopy;
    }

    else
    {
      v15 = v16;
    }
  }
}

- (void)proofreadingView:(id)view willPresentStringsForProofreadingItem:(id)item
{
  viewCopy = view;
  itemCopy = item;
  selfCopy = self;
  CanvasElementDrawingView.proofreadingView(_:willPresentStringsFor:)(viewCopy, itemCopy);
}

@end