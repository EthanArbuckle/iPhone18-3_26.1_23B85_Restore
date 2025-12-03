@interface WFAddToPlaylistAction
- (id)disabledOnPlatforms;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFAddToPlaylistAction

- (void)runAsynchronouslyWithInput:(id)input
{
  v26[2] = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v5 = [(WFAddToPlaylistAction *)self parameterValueForKey:@"WFPlaylistName" ofClass:objc_opt_class()];
  v6 = WFPlaylistsMatchingDescriptor(v5);
  firstObject = [v6 firstObject];
  if (firstObject || ([v5 entireMusicLibrary] & 1) != 0)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __52__WFAddToPlaylistAction_runAsynchronouslyWithInput___block_invoke;
    v22[3] = &unk_278C22028;
    v23 = firstObject;
    selfCopy = self;
    WFAddContentToPlaylist(v23, inputCopy, v22);
    v8 = v23;
  }

  else
  {
    v8 = WFLocalizedString(@"Playlist Not Found");
    playlistName = [v5 playlistName];
    v11 = [playlistName length];

    v12 = MEMORY[0x277CCACA8];
    if (v11)
    {
      v13 = WFLocalizedString(@"%1$@ failed because the playlist “%2$@” could not be found.");
      localizedName = [(WFAddToPlaylistAction *)self localizedName];
      playlistName2 = [v5 playlistName];
      v16 = [v12 localizedStringWithFormat:v13, localizedName, playlistName2];
    }

    else
    {
      v13 = WFLocalizedString(@"%1$@ failed because no playlist was specified. Please choose a playlist.");
      localizedName = [(WFAddToPlaylistAction *)self localizedName];
      v16 = [v12 localizedStringWithFormat:v13, localizedName];
    }

    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277D7CB30];
    v19 = *MEMORY[0x277CCA450];
    v25[0] = *MEMORY[0x277CCA470];
    v25[1] = v19;
    v26[0] = v8;
    v26[1] = v16;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    v21 = [v17 errorWithDomain:v18 code:5 userInfo:v20];

    [(WFAddToPlaylistAction *)self finishRunningWithError:v21];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __52__WFAddToPlaylistAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [*(a1 + 32) items];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = [*(a1 + 40) output];
        [v11 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [*(a1 + 40) finishRunningWithError:v4];
  v12 = *MEMORY[0x277D85DE8];
}

- (id)disabledOnPlatforms
{
  v5.receiver = self;
  v5.super_class = WFAddToPlaylistAction;
  disabledOnPlatforms = [(WFAddToPlaylistAction *)&v5 disabledOnPlatforms];
  v3 = [disabledOnPlatforms arrayByAddingObject:*MEMORY[0x277D7CC80]];

  return v3;
}

@end