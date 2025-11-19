@interface APUICardService
- (BOOL)canSatisfyCardRequest:(id)a3;
- (NSString)serviceIdentifier;
- (unint64_t)servicePriorityForRequest:(id)a3;
- (void)requestCard:(id)a3 reply:(id)a4;
@end

@implementation APUICardService

- (NSString)serviceIdentifier
{
  v2 = [kAPUICardServiceIdentifier copy];

  return v2;
}

- (BOOL)canSatisfyCardRequest:(id)a3
{
  v3 = a3;
  v4 = +[APUICardRequestSatisfactionCriteria generalSatisfactionCriteria];
  v5 = [v4 canSatisfyCardRequest:v3];

  return v5;
}

- (unint64_t)servicePriorityForRequest:(id)a3
{
  v3 = a3;
  v4 = +[APUICardRequestSatisfactionCriteria customIntentSatisfactionCriteria];
  v5 = [v4 servicePriorityForRequest:v3];

  v6 = +[APUICardRequestSatisfactionCriteria compactSatisfactionCriteria];
  v7 = [v6 servicePriorityForRequest:v3];

  if (v5 <= v7)
  {
    return v7;
  }

  else
  {
    return v5;
  }
}

- (void)requestCard:(id)a3 reply:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if ([(APUICardService *)self canSatisfyCardRequest:v6])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v6 cardViewConfig];
      }

      else
      {
        v8 = objc_alloc_init(APUIActionCardViewConfig);
        [(APUIActionCardViewConfig *)v8 setStyle:2];
        [(APUIActionCardViewConfig *)v8 setShowThumbnailImage:1];
        [(APUIActionCardViewConfig *)v8 setShowAppFootnote:1];
        [(APUIActionCardViewConfig *)v8 setShowActionButton:1];
      }

      v11 = [v6 content];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
        v13 = [(APUIActionCardViewConfig *)v8 bundleId];
        v14 = [v13 length];

        if (!v14)
        {
          v15 = [v12 _bundleIdForDisplay];
          [(APUIActionCardViewConfig *)v8 setBundleId:v15];
        }

        v9 = [APUIActionCardUtils cardSectionForATXAction:v12 withConfig:v8];
        v16 = [v12 intent];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v11;
          v16 = [v18 intent];
          v17 = [v18 intentResponse];
          v9 = [APUIActionCardUtils cardSectionForINInteraction:v18 withConfig:v8];

          goto LABEL_25;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = [APUIActionCardUtils cardSectionForNSUserActivity:v11 withConfig:v8];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v33 = __atxlog_handle_ui();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
              {
                [APUICardService requestCard:v6 reply:v33];
              }

              v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:0 userInfo:0];
              v7[2](v7, 0, v17);
              v16 = 0;
              v9 = 0;
              goto LABEL_36;
            }

            v19 = [APUIActionCardUtils cardSectionForHeroApp:v11 withConfig:v8];
          }

          v9 = v19;
          v17 = 0;
          v16 = 0;
LABEL_25:
          v20 = [APUIActionCardUtils cardForCardSection:v9];
          if (v16)
          {
            v21 = [v16 backingStore];
            v22 = [v21 data];
            [v20 setIntentMessageData:v22];

            v23 = [v16 _intentInstanceDescription];
            v24 = [v23 type];
            [v20 setIntentMessageName:v24];
          }

          if (v17)
          {
            v25 = __atxlog_handle_ui();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v34) = 0;
              _os_log_impl(&dword_240026000, v25, OS_LOG_TYPE_DEFAULT, "settings ActionCardService intentResponse...", &v34, 2u);
            }

            v26 = [v17 backingStore];
            v27 = [v26 data];
            [v20 setIntentResponseMessageData:v27];

            v28 = [v17 _payloadResponseTypeName];
            [v20 setIntentResponseMessageName:v28];

            v29 = __atxlog_handle_ui();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              [APUICardService requestCard:v20 reply:v29];
            }

            v30 = __atxlog_handle_ui();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = [v20 intentResponseMessageName];
              v34 = 138412290;
              v35 = v31;
              _os_log_impl(&dword_240026000, v30, OS_LOG_TYPE_DEFAULT, "name: %@", &v34, 0xCu);
            }
          }

          (v7)[2](v7, v20, 0);

LABEL_36:
          goto LABEL_37;
        }

        v16 = v11;
        v9 = [APUIActionCardUtils cardSectionForINIntent:v16 withConfig:v8];
      }

      v17 = 0;
      goto LABEL_25;
    }

    v10 = __atxlog_handle_ui();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [APUICardService requestCard:v6 reply:v10];
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:0 userInfo:0];
    v7[2](v7, 0, v9);
  }

  else
  {
    v9 = __atxlog_handle_ui();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [APUICardService requestCard:v9 reply:?];
    }
  }

LABEL_37:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)requestCard:(uint64_t)a1 reply:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218242;
  v4 = 5501;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_240026000, a2, OS_LOG_TYPE_ERROR, "e:%ld * We cannot satisfy the card request: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)requestCard:(void *)a1 reply:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 content];
  v5 = 138412290;
  v6 = v3;
  _os_log_fault_impl(&dword_240026000, a2, OS_LOG_TYPE_FAULT, "e:fault The cardContent is not something we can render: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)requestCard:(void *)a1 reply:(NSObject *)a2 .cold.3(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 intentResponseMessageData];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_240026000, a2, OS_LOG_TYPE_DEBUG, "data: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)requestCard:(os_log_t)log reply:.cold.4(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = 5501;
  _os_log_error_impl(&dword_240026000, log, OS_LOG_TYPE_ERROR, "e:%ld * No reply block specified for cardRequest!", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end