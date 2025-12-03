@interface AudioFeaturePrint.Observer
- (void)request:(id)request didFailWithError:(id)error;
- (void)request:(id)request didProduceResult:(id)result;
- (void)requestDidComplete:(id)complete;
@end

@implementation AudioFeaturePrint.Observer

- (void)request:(id)request didProduceResult:(id)result
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_237C708D4(request);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)request:(id)request didFailWithError:(id)error
{
  swift_unknownObjectRetain();
  errorCopy = error;
  selfCopy = self;
  sub_237C70F34(request, errorCopy);
  swift_unknownObjectRelease();
}

- (void)requestDidComplete:(id)complete
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_237C71148(complete);
  swift_unknownObjectRelease();
}

@end