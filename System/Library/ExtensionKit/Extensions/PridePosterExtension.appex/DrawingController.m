@interface DrawingController
- (void)dealloc;
- (void)reduceMotionChanged;
- (void)renderer:(id)a3 didInitializeWithEnvironment:(id)a4;
- (void)renderer:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5;
- (void)rendererDidInvalidate:(id)a3;
@end

@implementation DrawingController

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for DrawingController();
  [(DrawingController *)&v6 dealloc];
}

- (void)renderer:(id)a3 didInitializeWithEnvironment:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_100008C48(v6, a4);

  swift_unknownObjectRelease();
}

- (void)renderer:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_100009D38(v8, a4, a5);

  swift_unknownObjectRelease();
}

- (void)rendererDidInvalidate:(id)a3
{
  swift_beginAccess();
  v5 = a3;
  v6 = self;
  sub_10001D9A8(v5);
  swift_endAccess();
}

- (void)reduceMotionChanged
{
  v2 = self;
  sub_10000A858();
}

@end