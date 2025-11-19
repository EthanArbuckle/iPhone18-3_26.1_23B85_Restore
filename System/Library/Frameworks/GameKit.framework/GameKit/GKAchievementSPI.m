@interface GKAchievementSPI
+ (void)loadAchievementWithId:(id)a3 forGame:(id)a4 playerIDs:(id)a5 withCompletionHandler:(id)a6;
@end

@implementation GKAchievementSPI

+ (void)loadAchievementWithId:(id)a3 forGame:(id)a4 playerIDs:(id)a5 withCompletionHandler:(id)a6
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__GKAchievementSPI_loadAchievementWithId_forGame_playerIDs_withCompletionHandler___block_invoke;
  v6[3] = &unk_2782369D0;
  v6[5] = a4;
  v6[6] = a6;
  v6[4] = a3;
  [off_278236570 loadPlayersForIdentifiers:a5 withCompletionHandler:v6];
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