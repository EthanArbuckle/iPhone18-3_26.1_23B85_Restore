@interface SNResultsForwarder
- (void)request:(id)a3 didFailWithError:(id)a4;
- (void)request:(id)a3 didProduceResult:(id)a4;
- (void)requestDidComplete:(id)a3;
@end

@implementation SNResultsForwarder

- (void)request:(id)a3 didProduceResult:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5 = self;
  sub_1C9904110();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)request:(id)a3 didFailWithError:(id)a4
{
  swift_unknownObjectRetain();
  v7 = a4;
  v6 = self;
  sub_1C99041CC();
  swift_unknownObjectRelease();
}

- (void)requestDidComplete:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1C990427C(a3);
  swift_unknownObjectRelease();
}

@end