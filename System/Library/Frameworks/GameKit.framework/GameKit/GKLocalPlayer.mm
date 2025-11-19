@interface GKLocalPlayer
@end

@implementation GKLocalPlayer

uint64_t __72__GKLocalPlayer_GameActivity__playerWantsToPlayGameActivity_completion___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __72__GKLocalPlayer_GameActivity__playerWantsToPlayGameActivity_completion___block_invoke_2;
  v3[3] = &unk_2782369A8;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [GKGameActivity createFromGameActivityInstance:v1 completionHandler:v3];
}

void __72__GKLocalPlayer_GameActivity__playerWantsToPlayGameActivity_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    v7[6] = v3;
    v7[7] = v4;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __72__GKLocalPlayer_GameActivity__playerWantsToPlayGameActivity_completion___block_invoke_3;
    v7[3] = &unk_278236980;
    v6 = *(a1 + 32);
    v7[4] = a2;
    v7[5] = v6;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }
}

uint64_t __72__GKLocalPlayer_GameActivity__playerWantsToPlayGameActivity_completion___block_invoke_3(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);
  v6 = @"activity";
  v7[0] = v3;
  [v2 postNotificationName:@"GKGameActivityDelivered" object:0 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v7, &v6, 1)}];
  result = (*(*(a1 + 40) + 16))();
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

@end