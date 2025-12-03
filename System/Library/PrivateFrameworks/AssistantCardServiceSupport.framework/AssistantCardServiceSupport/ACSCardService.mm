@interface ACSCardService
- (BOOL)canSatisfyCardRequest:(id)request;
- (unint64_t)servicePriorityForRequest:(id)request;
- (void)requestCard:(id)card reply:(id)reply;
@end

@implementation ACSCardService

- (BOOL)canSatisfyCardRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy format] == 1)
  {
    content = [requestCopy content];
    if (objc_opt_respondsToSelector())
    {
      content2 = [requestCopy content];
      underlyingInteraction = [content2 underlyingInteraction];
      v7 = underlyingInteraction != 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)requestCard:(id)card reply:(id)reply
{
  v26[1] = *MEMORY[0x277D85DE8];
  cardCopy = card;
  replyCopy = reply;
  if (replyCopy)
  {
    if ([(ACSCardService *)self canSatisfyCardRequest:cardCopy])
    {
      v8 = *MEMORY[0x277CF93F0];
      if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v24 = cardCopy;
        _os_log_impl(&dword_2413A5000, v8, OS_LOG_TYPE_INFO, "Assistant Card Service attempting to satisfy request: %@", buf, 0xCu);
      }

      content = [cardCopy content];
      if (objc_opt_respondsToSelector())
      {
        underlyingInteraction = [content underlyingInteraction];
      }

      else
      {
        underlyingInteraction = 0;
      }

      intent = [underlyingInteraction intent];
      v13 = intent;
      if (intent)
      {
        [intent requestCard:cardCopy reply:replyCopy];
      }

      else
      {
        v15 = MEMORY[0x277CCA9B8];
        v16 = *MEMORY[0x277CF93E8];
        v21 = *MEMORY[0x277CCA068];
        cardCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"No intent available for card request %@", cardCopy];
        v22 = cardCopy;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        v19 = [v15 errorWithDomain:v16 code:400 userInfo:v18];
        replyCopy[2](replyCopy, 0, v19);
      }
    }

    else
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277CF93E8];
      v25 = *MEMORY[0x277CCA068];
      content = [MEMORY[0x277CCACA8] stringWithFormat:@"Card service %@ is unable to satisfy card request %@", self, cardCopy];
      v26[0] = content;
      underlyingInteraction = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v13 = [v11 errorWithDomain:v12 code:400 userInfo:underlyingInteraction];
      replyCopy[2](replyCopy, 0, v13);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (unint64_t)servicePriorityForRequest:(id)request
{
  requestCopy = request;
  content = [requestCopy content];
  if (objc_opt_respondsToSelector())
  {
    content2 = [requestCopy content];
    underlyingInteraction = [content2 underlyingInteraction];
    intent = [underlyingInteraction intent];

    if (!intent)
    {
      v8 = 0;
      goto LABEL_6;
    }

    v8 = [intent servicePriorityForCardRequest:requestCopy];
    content = intent;
  }

  else
  {
    v8 = 0;
  }

LABEL_6:
  return v8;
}

@end