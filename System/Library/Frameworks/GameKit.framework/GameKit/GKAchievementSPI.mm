@interface GKAchievementSPI
+ (void)loadAchievementWithId:(id)id forGame:(id)game playerIDs:(id)ds withCompletionHandler:(id)handler;
@end

@implementation GKAchievementSPI

+ (void)loadAchievementWithId:(id)id forGame:(id)game playerIDs:(id)ds withCompletionHandler:(id)handler
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__GKAchievementSPI_loadAchievementWithId_forGame_playerIDs_withCompletionHandler___block_invoke;
  v6[3] = &unk_2782369D0;
  v6[5] = game;
  v6[6] = handler;
  v6[4] = id;
  [off_278236570 loadPlayersForIdentifiers:ds withCompletionHandler:v6];
}

uint64_t __82__GKAchievementSPI_loadAchievementWithId_forGame_playerIDs_withCompletionHandler___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    return (*(a1[6] + 16))();
  }

  else
  {
    return [off_278236520 loadAchievementWithID:a1[4] forGame:a1[5] players:a2 complete:a1[6]];
  }
}

@end