@interface SNResultsForwarder
- (void)request:(id)request didFailWithError:(id)error;
- (void)request:(id)request didProduceResult:(id)result;
- (void)requestDidComplete:(id)complete;
@end

@implementation SNResultsForwarder

- (void)request:(id)request didProduceResult:(id)result
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C9904110();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)request:(id)request didFailWithError:(id)error
{
  swift_unknownObjectRetain();
  errorCopy = error;
  selfCopy = self;
  sub_1C99041CC();
  swift_unknownObjectRelease();
}

- (void)requestDidComplete:(id)complete
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C990427C(complete);
  swift_unknownObjectRelease();
}

@end