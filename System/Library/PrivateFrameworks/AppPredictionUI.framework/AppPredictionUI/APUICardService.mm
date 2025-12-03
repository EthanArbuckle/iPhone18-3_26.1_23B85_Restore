@interface APUICardService
- (BOOL)canSatisfyCardRequest:(id)request;
- (NSString)serviceIdentifier;
- (unint64_t)servicePriorityForRequest:(id)request;
- (void)requestCard:(id)card reply:(id)reply;
@end

@implementation APUICardService

- (NSString)serviceIdentifier
{
  v2 = [kAPUICardServiceIdentifier copy];

  return v2;
}

- (BOOL)canSatisfyCardRequest:(id)request
{
  requestCopy = request;
  v4 = +[APUICardRequestSatisfactionCriteria generalSatisfactionCriteria];
  v5 = [v4 canSatisfyCardRequest:requestCopy];

  return v5;
}

- (unint64_t)servicePriorityForRequest:(id)request
{
  requestCopy = request;
  v4 = +[APUICardRequestSatisfactionCriteria customIntentSatisfactionCriteria];
  v5 = [v4 servicePriorityForRequest:requestCopy];

  v6 = +[APUICardRequestSatisfactionCriteria compactSatisfactionCriteria];
  v7 = [v6 servicePriorityForRequest:requestCopy];

  if (v5 <= v7)
  {
    return v7;
  }

  else
  {
    return v5;
  }
}

- (void)requestCard:(id)card reply:(id)reply
{
  v36 = *MEMORY[0x277D85DE8];
  cardCopy = card;
  replyCopy = reply;
  if (replyCopy)
  {
    if ([(APUICardService *)self canSatisfyCardRequest:cardCopy])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        cardViewConfig = [cardCopy cardViewConfig];
      }

      else
      {
        cardViewConfig = objc_alloc_init(APUIActionCardViewConfig);
        [(APUIActionCardViewConfig *)cardViewConfig setStyle:2];
        [(APUIActionCardViewConfig *)cardViewConfig setShowThumbnailImage:1];
        [(APUIActionCardViewConfig *)cardViewConfig setShowAppFootnote:1];
        [(APUIActionCardViewConfig *)cardViewConfig setShowActionButton:1];
      }

      content = [cardCopy content];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = content;
        bundleId = [(APUIActionCardViewConfig *)cardViewConfig bundleId];
        v14 = [bundleId length];

        if (!v14)
        {
          _bundleIdForDisplay = [v12 _bundleIdForDisplay];
          [(APUIActionCardViewConfig *)cardViewConfig setBundleId:_bundleIdForDisplay];
        }

        v9 = [APUIActionCardUtils cardSectionForATXAction:v12 withConfig:cardViewConfig];
        intent = [v12 intent];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = content;
          intent = [v18 intent];
          intentResponse = [v18 intentResponse];
          v9 = [APUIActionCardUtils cardSectionForINInteraction:v18 withConfig:cardViewConfig];

          goto LABEL_25;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = [APUIActionCardUtils cardSectionForNSUserActivity:content withConfig:cardViewConfig];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v33 = __atxlog_handle_ui();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
              {
                [APUICardService requestCard:cardCopy reply:v33];
              }

              intentResponse = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:0 userInfo:0];
              replyCopy[2](replyCopy, 0, intentResponse);
              intent = 0;
              v9 = 0;
              goto LABEL_36;
            }

            v19 = [APUIActionCardUtils cardSectionForHeroApp:content withConfig:cardViewConfig];
          }

          v9 = v19;
          intentResponse = 0;
          intent = 0;
LABEL_25:
          v20 = [APUIActionCardUtils cardForCardSection:v9];
          if (intent)
          {
            backingStore = [intent backingStore];
            data = [backingStore data];
            [v20 setIntentMessageData:data];

            _intentInstanceDescription = [intent _intentInstanceDescription];
            type = [_intentInstanceDescription type];
            [v20 setIntentMessageName:type];
          }

          if (intentResponse)
          {
            v25 = __atxlog_handle_ui();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v34) = 0;
              _os_log_impl(&dword_240026000, v25, OS_LOG_TYPE_DEFAULT, "settings ActionCardService intentResponse...", &v34, 2u);
            }

            backingStore2 = [intentResponse backingStore];
            data2 = [backingStore2 data];
            [v20 setIntentResponseMessageData:data2];

            _payloadResponseTypeName = [intentResponse _payloadResponseTypeName];
            [v20 setIntentResponseMessageName:_payloadResponseTypeName];

            v29 = __atxlog_handle_ui();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              [APUICardService requestCard:v20 reply:v29];
            }

            v30 = __atxlog_handle_ui();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              intentResponseMessageName = [v20 intentResponseMessageName];
              v34 = 138412290;
              v35 = intentResponseMessageName;
              _os_log_impl(&dword_240026000, v30, OS_LOG_TYPE_DEFAULT, "name: %@", &v34, 0xCu);
            }
          }

          (replyCopy)[2](replyCopy, v20, 0);

LABEL_36:
          goto LABEL_37;
        }

        intent = content;
        v9 = [APUIActionCardUtils cardSectionForINIntent:intent withConfig:cardViewConfig];
      }

      intentResponse = 0;
      goto LABEL_25;
    }

    v10 = __atxlog_handle_ui();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [APUICardService requestCard:cardCopy reply:v10];
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:0 userInfo:0];
    replyCopy[2](replyCopy, 0, v9);
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