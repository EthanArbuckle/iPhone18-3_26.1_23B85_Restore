@interface MPAssistantAddMediaEntityToWishList
- (void)_addRadioTrackToWishListWithStoreID:(unint64_t)d stationHash:(id)hash completion:(id)completion;
- (void)_addTrackToWishListWithStoreID:(unint64_t)d completion:(id)completion;
- (void)_fetchCurrentRadioTrackInfoWithCompletion:(id)completion;
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantAddMediaEntityToWishList

- (void)_fetchCurrentRadioTrackInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = dispatch_get_global_queue(0, 0);
  v6 = completionCopy;
  v5 = completionCopy;
  MRMediaRemoteGetNowPlayingInfo();
}

- (void)_addRadioTrackToWishListWithStoreID:(unint64_t)d stationHash:(id)hash completion:(id)completion
{
  v22[2] = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  completionCopy = completion;
  if (!d || ([MEMORY[0x277CD5E10] defaultMediaLibrary], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "itemWithStoreID:", d), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, !v10))
  {
    v21[0] = *MEMORY[0x277D27E10];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
    v21[1] = *MEMORY[0x277D27DC0];
    v22[0] = v13;
    v22[1] = @"com.apple.MediaAssistant.siri";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

    systemMediaApplicationDestination = [MEMORY[0x277D27878] systemMediaApplicationDestination];
    v15 = objc_alloc_init(MEMORY[0x277D27828]);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2334DD78C;
    v18[3] = &unk_2789DB350;
    v19 = v15;
    v20 = completionCopy;
    v16 = v15;
    [v16 sendCommand:23 toDestination:systemMediaApplicationDestination withOptions:v12 completion:v18];

    goto LABEL_6;
  }

  if (completionCopy)
  {
    v11 = objc_alloc(MEMORY[0x277D47208]);
    v12 = [v11 initWithErrorCode:*MEMORY[0x277D485B8]];
    (*(completionCopy + 2))(completionCopy, v12);
LABEL_6:
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_addTrackToWishListWithStoreID:(unint64_t)d completion:(id)completion
{
  completionCopy = completion;
  if (d && ([MEMORY[0x277CD5E10] defaultMediaLibrary], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "itemWithStoreID:", d), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    if (completionCopy)
    {
      v8 = objc_alloc(MEMORY[0x277D47208]);
      v9 = [v8 initWithErrorCode:*MEMORY[0x277D485B8]];
      completionCopy[2](completionCopy, v9);
    }
  }

  else
  {
    defaultIdentityStore = [MEMORY[0x277D7FCA8] defaultIdentityStore];
    activeAccount = [MEMORY[0x277D7FCA0] activeAccount];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2334DD974;
    v12[3] = &unk_2789DABA8;
    v13 = completionCopy;
    dCopy = d;
    [defaultIdentityStore getPropertiesForUserIdentity:activeAccount completionHandler:v12];
  }
}

- (void)performWithCompletion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (![(NSString *)self->_requestAceHash length])
  {
    aceId = [(MPAssistantAddMediaEntityToWishList *)self aceId];
    v6 = sub_233505670(@"Add Media Entity To Wish List", aceId);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v6;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_requestAceHash;
    adamId = [(SAMPAddMediaEntityToWishList *)self adamId];
    *buf = 138543618;
    v21 = v9;
    v22 = 2114;
    v23 = adamId;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Add Media Entity To Wish List (invoke) <%{public}@>: adam ID %{public}@", buf, 0x16u);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2334DDFF8;
  v18[3] = &unk_2789DB620;
  v11 = completionCopy;
  v18[4] = self;
  v19 = v11;
  v12 = MEMORY[0x2383A14D0](v18);
  adamId2 = [(SAMPAddMediaEntityToWishList *)self adamId];
  if (adamId2)
  {
    adamId3 = [(SAMPAddMediaEntityToWishList *)self adamId];
    -[MPAssistantAddMediaEntityToWishList _addTrackToWishListWithStoreID:completion:](self, "_addTrackToWishListWithStoreID:completion:", [adamId3 longLongValue], v12);
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