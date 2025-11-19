@interface FKExtractedOrderSuggestionsBannerProvider
+ (UIImage)walletLogo;
+ (id)makePreviewControllerWithMessageID:(id)a3 orderNumber:(id)a4 completion:(id)a5;
- (FKExtractedOrderSuggestionsBannerProvider)init;
@end

@implementation FKExtractedOrderSuggestionsBannerProvider

+ (UIImage)walletLogo
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27DF08CC8 != -1)
  {
    swift_once();
  }

  v2 = qword_27DF0AE88;

  return v2;
}

+ (id)makePreviewControllerWithMessageID:(id)a3 orderNumber:(id)a4 completion:(id)a5
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = _Block_copy(a5);
  sub_23875EA80();
  sub_23875EA80();
  *(swift_allocObject() + 16) = v6;
  sub_238758890();
  sub_238758880();
  sub_238758A30();

  v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF133C0, &qword_23877CB30));
  v8 = sub_23875D080();

  return v8;
}

- (FKExtractedOrderSuggestionsBannerProvider)init
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = FKExtractedOrderSuggestionsBannerProvider;
  v3 = [(FKExtractedOrderSuggestionsBannerProvider *)&v5 init];

  return v3;
}

@end