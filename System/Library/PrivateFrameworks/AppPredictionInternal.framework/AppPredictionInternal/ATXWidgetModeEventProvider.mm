@interface ATXWidgetModeEventProvider
- (ATXWidgetModeEventProvider)initWithInformationStore:(id)a3;
- (id)widgetModeEventsBetweenStartDate:(id)a3 endDate:(id)a4;
@end

@implementation ATXWidgetModeEventProvider

- (ATXWidgetModeEventProvider)initWithInformationStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXWidgetModeEventProvider;
  v6 = [(ATXWidgetModeEventProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_informationStore, a3);
  }

  return v7;
}

- (id)widgetModeEventsBetweenStartDate:(id)a3 endDate:(id)a4
{
  v4 = [(ATXInformationStore *)self->_informationStore fetchWidgetTapEngagementsBetweenStartDate:a3 endDate:a4];
  v5 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__ATXWidgetModeEventProvider_widgetModeEventsBetweenStartDate_endDate___block_invoke;
  v9[3] = &unk_27859F018;
  v10 = v5;
  v6 = v5;
  [v4 enumerateObjectsUsingBlock:v9];
  v7 = [v6 copy];

  return v7;
}

void __71__ATXWidgetModeEventProvider_widgetModeEventsBetweenStartDate_endDate___block_invoke(uint64_t a1, void *a2)
{
  v19 = a2;
  v3 = [v19 containerBundleIdentifier];
  if (!v3)
  {
    v4 = [v19 widgetBundleId];
    v3 = [v4 componentsSeparatedByString:@"."];

    if ([v3 count] < 2)
    {
      goto LABEL_5;
    }

    v5 = [v3 subarrayWithRange:{0, objc_msgSend(v3, "count") - 1}];
    v6 = [v5 componentsJoinedByString:@"."];

    v3 = v6;
  }

  v7 = objc_alloc(MEMORY[0x277CFA358]);
  v8 = objc_alloc(MEMORY[0x277CFA258]);
  v9 = [v19 widgetBundleId];
  v10 = [v8 initWithExtensionBundleIdentifier:v9 containerBundleIdentifier:v3 deviceIdentifier:0];
  v11 = [v19 widgetKind];
  v12 = [v7 initWithExtensionIdentity:v10 kind:v11 family:objc_msgSend(v19 intent:"widgetFamily") activityIdentifier:{0, 0}];

  v13 = [objc_alloc(MEMORY[0x277CEB9A8]) initWithWidget:v12];
  v14 = *(a1 + 32);
  v15 = [ATXModeEvent alloc];
  v16 = [v19 date];
  v17 = [v19 date];
  v18 = [(ATXModeEvent *)v15 initWithStartDate:v16 endDate:v17 entity:v13];
  [v14 addObject:v18];

LABEL_5:
}

@end