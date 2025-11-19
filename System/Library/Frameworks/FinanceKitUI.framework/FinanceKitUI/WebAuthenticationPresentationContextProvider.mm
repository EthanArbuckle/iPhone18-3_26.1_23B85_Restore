@interface WebAuthenticationPresentationContextProvider
- (_TtC12FinanceKitUI44WebAuthenticationPresentationContextProvider)init;
- (id)presentationAnchorForWebAuthenticationSession:(id)a3;
@end

@implementation WebAuthenticationPresentationContextProvider

- (id)presentationAnchorForWebAuthenticationSession:(id)a3
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = [objc_allocWithZone(MEMORY[0x277D75DA0]) init];

  return v3;
}

- (_TtC12FinanceKitUI44WebAuthenticationPresentationContextProvider)init
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for WebAuthenticationPresentationContextProvider();
  v3 = [(WebAuthenticationPresentationContextProvider *)&v5 init];

  return v3;
}

@end