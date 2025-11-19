@interface SHMediaItemDaemonConnection
+ (id)fetchRawSongResponseDataUsingMediaItemIdentifier:(id)a3;
+ (id)serverConnection;
+ (void)fetchHapticsWithMediaItems:(id)a3 completionHandler:(id)a4;
+ (void)fetchMediaItemWithShazamID:(id)a3 completionHandler:(id)a4;
+ (void)fetchMediaItemsWithShazamIDs:(id)a3 completionHandler:(id)a4;
+ (void)isHapticTrackAvailableForMediaItem:(id)a3 completionHandler:(id)a4;
@end

@implementation SHMediaItemDaemonConnection

+ (id)serverConnection
{
  if (serverConnection_onceToken != -1)
  {
    +[SHMediaItemDaemonConnection serverConnection];
  }

  v3 = serverConnection_serverConnection;

  return v3;
}

void __47__SHMediaItemDaemonConnection_serverConnection__block_invoke()
{
  v0 = [SHShazamKitServiceConnection alloc];
  v3 = objc_opt_new();
  v1 = [(SHShazamKitServiceConnection *)v0 initWithConnectionProvider:v3];
  v2 = serverConnection_serverConnection;
  serverConnection_serverConnection = v1;
}

+ (void)fetchMediaItemWithShazamID:(id)a3 completionHandler:(id)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [[SHShazamKey alloc] initWithKey:v6];
  v9 = v8;
  if (v8)
  {
    v10 = [(SHShazamKey *)v8 validatedKey];
    v19 = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __76__SHMediaItemDaemonConnection_fetchMediaItemWithShazamID_completionHandler___block_invoke;
    v16[3] = &unk_2788F7FD8;
    v17 = v9;
    v18 = v7;
    [a1 fetchMediaItemsWithShazamIDs:v11 completionHandler:v16];

    v12 = v17;
  }

  else
  {
    v20 = *MEMORY[0x277CCA068];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ is not a valid shazamID", v6];
    v21[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v12 = [SHError errorWithCode:600 underlyingError:0 keyOverrides:v14];

    (*(v7 + 2))(v7, 0, v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __76__SHMediaItemDaemonConnection_fetchMediaItemWithShazamID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = *(a1 + 40);
    v8 = [v5 firstObject];
    (*(v7 + 16))(v7, v8, 0);
  }

  else
  {
    v14 = *MEMORY[0x277CCA068];
    v9 = MEMORY[0x277CCACA8];
    v10 = [*(a1 + 32) validatedKey];
    v11 = [v9 stringWithFormat:@"shazamID %@ not found", v10];
    v15[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v8 = [SHError errorWithCode:600 underlyingError:v6 keyOverrides:v12];

    (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (void)fetchMediaItemsWithShazamIDs:(id)a3 completionHandler:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [a1 serverConnection];
    [v8 mediaItemsForShazamIDs:v7 completionHandler:v6];
  }
}

+ (void)fetchHapticsWithMediaItems:(id)a3 completionHandler:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [a1 serverConnection];
    [v8 hapticsForMediaItems:v7 completionHandler:v6];
  }
}

+ (void)isHapticTrackAvailableForMediaItem:(id)a3 completionHandler:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [a1 serverConnection];
    [v8 isHapticTrackAvailableForMediaItem:v7 completionHandler:v6];
  }
}

+ (id)fetchRawSongResponseDataUsingMediaItemIdentifier:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v5 = [a1 serverConnection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__SHMediaItemDaemonConnection_fetchRawSongResponseDataUsingMediaItemIdentifier___block_invoke;
  v8[3] = &unk_2788F8000;
  v8[4] = &v9;
  [v5 synchronouslyFetchRawSongResponseDataForMediaItemIdentifier:v4 completionHandler:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

@end