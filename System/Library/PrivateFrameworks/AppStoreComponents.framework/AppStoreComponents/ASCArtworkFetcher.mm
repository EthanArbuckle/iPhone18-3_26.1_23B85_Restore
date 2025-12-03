@interface ASCArtworkFetcher
+ (ASCArtworkFetcher)sharedFetcher;
- (ASCArtworkFetcher)initWithURLSession:(id)session scale:(double)scale;
- (id)URLWithContentsOfArtwork:(id)artwork preferredSize:(CGSize)size;
- (id)dataWithContentsOfURL:(id)l;
- (id)imageForContentsOfArtwork:(id)artwork withSize:(CGSize)size;
- (id)imageWithContentsOfURL:(id)l;
@end

@implementation ASCArtworkFetcher

+ (ASCArtworkFetcher)sharedFetcher
{
  if (sharedFetcher_onceToken != -1)
  {
    +[ASCArtworkFetcher sharedFetcher];
  }

  v3 = sharedFetcher_sharedFetcher;

  return v3;
}

void __34__ASCArtworkFetcher_sharedFetcher__block_invoke()
{
  v6 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  [v6 setRequestCachePolicy:2];
  v0 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v6];
  v1 = [MEMORY[0x277D759A0] mainScreen];
  [v1 scale];
  v3 = v2;

  v4 = [[ASCArtworkFetcher alloc] initWithURLSession:v0 scale:v3];
  v5 = sharedFetcher_sharedFetcher;
  sharedFetcher_sharedFetcher = v4;
}

- (ASCArtworkFetcher)initWithURLSession:(id)session scale:(double)scale
{
  sessionCopy = session;
  v13.receiver = self;
  v13.super_class = ASCArtworkFetcher;
  v8 = [(ASCArtworkFetcher *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_urlSession, session);
    v9->_scale = scale;
    v10 = [[ASCTaskCoordinator alloc] initWithName:@"ASCArtworkFetcher"];
    fetchCoordinator = v9->_fetchCoordinator;
    v9->_fetchCoordinator = v10;
  }

  return v9;
}

- (id)URLWithContentsOfArtwork:(id)artwork preferredSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v29[4] = *MEMORY[0x277D85DE8];
  artworkCopy = artwork;
  preferredCrop = [artworkCopy preferredCrop];
  [artworkCopy width];
  v10 = v9;
  [artworkCopy height];
  v12 = ASCArtworkCropScaleSizeToFit(preferredCrop, width, height, v10, v11);
  v14 = v13;

  [(ASCArtworkFetcher *)self scale];
  v16 = v12 * v15;
  [(ASCArtworkFetcher *)self scale];
  v18 = v14 * v17;
  v28[0] = @"{w}";
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
  stringValue = [v19 stringValue];
  v29[0] = stringValue;
  v28[1] = @"{h}";
  v21 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
  stringValue2 = [v21 stringValue];
  v29[1] = stringValue2;
  v28[2] = @"{c}";
  preferredCrop2 = [artworkCopy preferredCrop];
  v29[2] = preferredCrop2;
  v28[3] = @"{f}";
  preferredFormat = [artworkCopy preferredFormat];
  v29[3] = preferredFormat;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];
  v26 = [artworkCopy makeURLWithSubstitutions:v25];

  return v26;
}

- (id)dataWithContentsOfURL:(id)l
{
  v4 = MEMORY[0x277CEE600];
  lCopy = l;
  v6 = objc_alloc_init(v4);
  urlSession = [(ASCArtworkFetcher *)self urlSession];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__ASCArtworkFetcher_dataWithContentsOfURL___block_invoke;
  v12[3] = &unk_2781CB918;
  v8 = v6;
  v13 = v8;
  v9 = [urlSession dataTaskWithURL:lCopy completionHandler:v12];

  [v9 resume];
  v10 = v8;

  return v8;
}

void __43__ASCArtworkFetcher_dataWithContentsOfURL___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v7 = [v6 domain];
    if ([v7 isEqualToString:*MEMORY[0x277CCA738]])
    {
      v8 = [v6 code];

      if (v8 == -999)
      {
        [*(a1 + 32) cancel];
        goto LABEL_7;
      }
    }

    else
    {
    }

    [*(a1 + 32) finishWithResult:v9 error:v6];
  }

LABEL_7:
}

- (id)imageWithContentsOfURL:(id)l
{
  lCopy = l;
  [(ASCArtworkFetcher *)self scale];
  v6 = v5;
  v7 = [(ASCArtworkFetcher *)self dataWithContentsOfURL:lCopy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__ASCArtworkFetcher_imageWithContentsOfURL___block_invoke;
  v11[3] = &unk_2781CB940;
  v13 = v6;
  v12 = lCopy;
  v8 = lCopy;
  v9 = [v7 thenWithBlock:v11];

  return v9;
}

id __44__ASCArtworkFetcher_imageWithContentsOfURL___block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D755B8];
  v4 = a2;
  v5 = [[v3 alloc] initWithData:v4 scale:*(a1 + 40)];

  if (v5)
  {
    v6 = [MEMORY[0x277CEE630] promiseWithResult:v5];
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Response for %@ could not be decoded", *(a1 + 32)];
    v8 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA450];
    v13[0] = v7;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v10 = [v8 errorWithDomain:@"ASCArtworkErrorDomain" code:2 userInfo:v9];

    v6 = [MEMORY[0x277CEE630] promiseWithError:v10];
  }

  return v6;
}

- (id)imageForContentsOfArtwork:(id)artwork withSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v25[1] = *MEMORY[0x277D85DE8];
  artworkCopy = artwork;
  v8 = artworkCopy;
  if (width > 2.22044605e-16 && height > 2.22044605e-16)
  {
    embeddedImage = [artworkCopy embeddedImage];
    if (embeddedImage)
    {
      v14 = [MEMORY[0x277CEE600] promiseWithResult:embeddedImage];
      goto LABEL_13;
    }

    height = [(ASCArtworkFetcher *)self URLWithContentsOfArtwork:v8 preferredSize:width, height];
    if (height)
    {
      fetchCoordinator = [(ASCArtworkFetcher *)self fetchCoordinator];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __56__ASCArtworkFetcher_imageForContentsOfArtwork_withSize___block_invoke;
      v20[3] = &unk_2781CB968;
      v20[4] = self;
      v21 = height;
      v14 = [fetchCoordinator taskForKey:v21 withCreatorBlock:v20];
    }

    else
    {
      fetchCoordinator = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not derive URL for %@", v8];
      v16 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277CCA450];
      v23 = fetchCoordinator;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v18 = [v16 errorWithDomain:@"ASCArtworkErrorDomain" code:1 userInfo:v17];

      v14 = [MEMORY[0x277CEE600] promiseWithError:v18];
    }
  }

  else
  {
    embeddedImage = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid artwork size {%f, %f}", *&width, *&height];
    v11 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25[0] = embeddedImage;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    height = [v11 errorWithDomain:@"ASCArtworkErrorDomain" code:0 userInfo:v12];

    v14 = [MEMORY[0x277CEE600] promiseWithError:height];
  }

LABEL_13:

  return v14;
}

@end