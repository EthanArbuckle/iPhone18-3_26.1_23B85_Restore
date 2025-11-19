@interface GKLocalPlayer(GameActivity)
- (void)playerWantsToPlayGameActivity:()GameActivity completion:;
@end

@implementation GKLocalPlayer(GameActivity)

- (void)playerWantsToPlayGameActivity:()GameActivity completion:
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__GKLocalPlayer_GameActivity__playerWantsToPlayGameActivity_completion___block_invoke;
  v4[3] = &unk_278236980;
  v4[4] = a3;
  v4[5] = a4;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

@end