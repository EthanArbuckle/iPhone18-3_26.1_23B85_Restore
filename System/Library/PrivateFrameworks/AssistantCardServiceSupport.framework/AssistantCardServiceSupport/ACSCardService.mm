@interface ACSCardService
- (BOOL)canSatisfyCardRequest:(id)a3;
- (unint64_t)servicePriorityForRequest:(id)a3;
- (void)requestCard:(id)a3 reply:(id)a4;
@end

@implementation ACSCardService

- (BOOL)canSatisfyCardRequest:(id)a3
{
  v3 = a3;
  if ([v3 format] == 1)
  {
    v4 = [v3 content];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v3 content];
      v6 = [v5 underlyingInteraction];
      v7 = v6 != 0;
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

- (void)requestCard:(id)a3 reply:(id)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if ([(ACSCardService *)self canSatisfyCardRequest:v6])
    {
      v8 = *MEMORY[0x277CF93F0];
      if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v24 = v6;
        _os_log_impl(&dword_2413A5000, v8, OS_LOG_TYPE_INFO, "Assistant Card Service attempting to satisfy request: %@", buf, 0xCu);
      }

      v9 = [v6 content];
      if (objc_opt_respondsToSelector())
      {
        v10 = [v9 underlyingInteraction];
      }

      else
      {
        v10 = 0;
      }

      v14 = [v10 intent];
      v13 = v14;
      if (v14)
      {
        [v14 requestCard:v6 reply:v7];
      }

      else
      {
        v15 = MEMORY[0x277CCA9B8];
        v16 = *MEMORY[0x277CF93E8];
        v21 = *MEMORY[0x277CCA068];
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"No intent available for card request %@", v6];
        v22 = v17;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        v19 = [v15 errorWithDomain:v16 code:400 userInfo:v18];
        v7[2](v7, 0, v19);
      }
    }

    else
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277CF93E8];
      v25 = *MEMORY[0x277CCA068];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Card service %@ is unable to satisfy card request %@", self, v6];
      v26[0] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v13 = [v11 errorWithDomain:v12 code:400 userInfo:v10];
      v7[2](v7, 0, v13);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (unint64_t)servicePriorityForRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 content];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v3 content];
    v6 = [v5 underlyingInteraction];
    v7 = [v6 intent];

    if (!v7)
    {
      v8 = 0;
      goto LABEL_6;
    }

    v8 = [v7 servicePriorityForCardRequest:v3];
    v4 = v7;
  }

  else
  {
    v8 = 0;
  }

LABEL_6:
  return v8;
}

@end