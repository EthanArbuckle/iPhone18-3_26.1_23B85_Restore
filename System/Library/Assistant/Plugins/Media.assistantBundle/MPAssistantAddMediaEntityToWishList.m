@interface MPAssistantAddMediaEntityToWishList
- (void)_addRadioTrackToWishListWithStoreID:(unint64_t)a3 stationHash:(id)a4 completion:(id)a5;
- (void)_addTrackToWishListWithStoreID:(unint64_t)a3 completion:(id)a4;
- (void)_fetchCurrentRadioTrackInfoWithCompletion:(id)a3;
- (void)performWithCompletion:(id)a3;
@end

@implementation MPAssistantAddMediaEntityToWishList

- (void)_fetchCurrentRadioTrackInfoWithCompletion:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(0, 0);
  v6 = v3;
  v5 = v3;
  MRMediaRemoteGetNowPlayingInfo();
}

- (void)_addRadioTrackToWishListWithStoreID:(unint64_t)a3 stationHash:(id)a4 completion:(id)a5
{
  v22[2] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  if (!a3 || ([MEMORY[0x277CD5E10] defaultMediaLibrary], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "itemWithStoreID:", a3), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, !v10))
  {
    v21[0] = *MEMORY[0x277D27E10];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    v21[1] = *MEMORY[0x277D27DC0];
    v22[0] = v13;
    v22[1] = @"com.apple.MediaAssistant.siri";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

    v14 = [MEMORY[0x277D27878] systemMediaApplicationDestination];
    v15 = objc_alloc_init(MEMORY[0x277D27828]);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2334DD78C;
    v18[3] = &unk_2789DB350;
    v19 = v15;
    v20 = v8;
    v16 = v15;
    [v16 sendCommand:23 toDestination:v14 withOptions:v12 completion:v18];

    goto LABEL_6;
  }

  if (v8)
  {
    v11 = objc_alloc(MEMORY[0x277D47208]);
    v12 = [v11 initWithErrorCode:*MEMORY[0x277D485B8]];
    (*(v8 + 2))(v8, v12);
LABEL_6:
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_addTrackToWishListWithStoreID:(unint64_t)a3 completion:(id)a4
{
  v5 = a4;
  if (a3 && ([MEMORY[0x277CD5E10] defaultMediaLibrary], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "itemWithStoreID:", a3), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    if (v5)
    {
      v8 = objc_alloc(MEMORY[0x277D47208]);
      v9 = [v8 initWithErrorCode:*MEMORY[0x277D485B8]];
      v5[2](v5, v9);
    }
  }

  else
  {
    v10 = [MEMORY[0x277D7FCA8] defaultIdentityStore];
    v11 = [MEMORY[0x277D7FCA0] activeAccount];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2334DD974;
    v12[3] = &unk_2789DABA8;
    v13 = v5;
    v14 = a3;
    [v10 getPropertiesForUserIdentity:v11 completionHandler:v12];
  }
}

- (void)performWithCompletion:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(NSString *)self->_requestAceHash length])
  {
    v5 = [(MPAssistantAddMediaEntityToWishList *)self aceId];
    v6 = sub_233505670(@"Add Media Entity To Wish List", v5);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v6;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_requestAceHash;
    v10 = [(SAMPAddMediaEntityToWishList *)self adamId];
    *buf = 138543618;
    v21 = v9;
    v22 = 2114;
    v23 = v10;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Add Media Entity To Wish List (invoke) <%{public}@>: adam ID %{public}@", buf, 0x16u);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2334DDFF8;
  v18[3] = &unk_2789DB620;
  v11 = v4;
  v18[4] = self;
  v19 = v11;
  v12 = MEMORY[0x2383A14D0](v18);
  v13 = [(SAMPAddMediaEntityToWishList *)self adamId];
  if (v13)
  {
    v14 = [(SAMPAddMediaEntityToWishList *)self adamId];
    -[MPAssistantAddMediaEntityToWishList _addTrackToWishListWithStoreID:completion:](self, "_addTrackToWishListWithStoreID:completion:", [v14 longLongValue], v12);
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_2334DE164;
    v16[3] = &unk_2789DAB30;
    v16[4] = self;
    v17 = v12;
    [(MPAssistantAddMediaEntityToWishList *)self _fetchCurrentRadioTrackInfoWithCompletion:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end