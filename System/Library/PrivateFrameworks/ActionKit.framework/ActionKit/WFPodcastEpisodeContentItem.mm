@interface WFPodcastEpisodeContentItem
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
- (BOOL)getListSubtitle:(id)subtitle;
- (BOOL)getListThumbnail:(id)thumbnail forSize:(CGSize)size;
- (id)episode;
- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error;
- (id)getArtworkURLForSize:(CGSize)size type:(id)type;
- (void)generateFileRepresentation:(id)representation options:(id)options forType:(id)type;
- (void)getArtworkDataWithURL:(id)l completionHandler:(id)handler;
@end

@implementation WFPodcastEpisodeContentItem

- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error
{
  optionsCopy = options;
  if (objc_opt_class() != class)
  {
    v28.receiver = self;
    v28.super_class = WFPodcastEpisodeContentItem;
    v9 = [(WFPodcastEpisodeContentItem *)&v28 generateObjectRepresentationForClass:class options:optionsCopy error:error];
    goto LABEL_13;
  }

  episode = [(WFPodcastEpisodeContentItem *)self episode];
  author = [episode author];
  if (author)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = WFLocalizedString(@"%1$@ by %2$@");
    title = [episode title];
    title2 = [v12 localizedStringWithFormat:v13, title, author];
  }

  else
  {
    title2 = [episode title];
  }

  v16 = [title2 length];
  viewURL = [episode viewURL];
  v18 = viewURL;
  if (!v16)
  {
    absoluteString = [viewURL absoluteString];
LABEL_11:
    v23 = absoluteString;
    goto LABEL_12;
  }

  if (!viewURL)
  {
    absoluteString = title2;
    goto LABEL_11;
  }

  v19 = MEMORY[0x277CCACA8];
  v20 = WFLocalizedString(@"%1$@ (%2$@)");
  viewURL2 = [episode viewURL];
  absoluteString2 = [viewURL2 absoluteString];
  v23 = [v19 localizedStringWithFormat:v20, title2, absoluteString2];

LABEL_12:
  v25 = MEMORY[0x277CFC488];
  name = [(WFPodcastEpisodeContentItem *)self name];
  v9 = [v25 object:v23 named:name];

LABEL_13:

  return v9;
}

- (void)generateFileRepresentation:(id)representation options:(id)options forType:(id)type
{
  representationCopy = representation;
  optionsCopy = options;
  typeCopy = type;
  if ([typeCopy conformsToUTType:*MEMORY[0x277CE1DB0]])
  {
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = __Block_byref_object_copy__22016;
    v17[4] = __Block_byref_object_dispose__22017;
    v18 = 0;
    v11 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1D90]];
    v12 = [(WFPodcastEpisodeContentItem *)self getArtworkURLForSize:v11 type:512.0, 512.0];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __74__WFPodcastEpisodeContentItem_generateFileRepresentation_options_forType___block_invoke;
    v14[3] = &unk_278C21E20;
    v16 = v17;
    v14[4] = self;
    v15 = representationCopy;
    [(WFPodcastEpisodeContentItem *)self getArtworkDataWithURL:v12 completionHandler:v14];

    _Block_object_dispose(v17, 8);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = WFPodcastEpisodeContentItem;
    [(WFPodcastEpisodeContentItem *)&v13 generateFileRepresentation:representationCopy options:optionsCopy forType:typeCopy];
  }
}

void __74__WFPodcastEpisodeContentItem_generateFileRepresentation_options_forType___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x277CFC3C8];
  v7 = MEMORY[0x277D79F68];
  v8 = *MEMORY[0x277CE1D90];
  v16 = a4;
  v9 = a2;
  v10 = [v7 typeWithUTType:v8];
  v11 = [*(a1 + 32) name];
  v12 = [v6 fileWithData:v9 ofType:v10 proposedFilename:v11];

  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = *(*(*(a1 + 48) + 8) + 40);
  (*(*(a1 + 40) + 16))();
}

- (void)getArtworkDataWithURL:(id)l completionHandler:(id)handler
{
  v5 = MEMORY[0x277CBABB8];
  handlerCopy = handler;
  lCopy = l;
  wf_sharedSession = [v5 wf_sharedSession];
  v8 = [wf_sharedSession dataTaskWithURL:lCopy completionHandler:handlerCopy];

  [v8 resume];
}

- (id)getArtworkURLForSize:(CGSize)size type:(id)type
{
  height = size.height;
  width = size.width;
  typeCopy = type;
  episode = [(WFPodcastEpisodeContentItem *)self episode];
  artworkURLTemplate = [episode artworkURLTemplate];
  v10 = [artworkURLTemplate mutableCopy];

  v11 = height * 3.0;
  *&v11 = height * 3.0;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  stringValue = [v12 stringValue];
  [v10 replaceOccurrencesOfString:@"{h}" withString:stringValue options:0 range:{0, objc_msgSend(v10, "length")}];

  v14 = width * 3.0;
  *&v14 = width * 3.0;
  v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  stringValue2 = [v15 stringValue];
  [v10 replaceOccurrencesOfString:@"{w}" withString:stringValue2 options:0 range:{0, objc_msgSend(v10, "length")}];

  fileExtension = [typeCopy fileExtension];

  [v10 replaceOccurrencesOfString:@"{f}" withString:fileExtension options:0 range:{0, objc_msgSend(v10, "length")}];
  v18 = [MEMORY[0x277CBEBC0] URLWithString:v10];

  return v18;
}

- (BOOL)getListThumbnail:(id)thumbnail forSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  thumbnailCopy = thumbnail;
  if (thumbnailCopy)
  {
    v8 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1D90]];
    height = [(WFPodcastEpisodeContentItem *)self getArtworkURLForSize:v8 type:width, height];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__WFPodcastEpisodeContentItem_getListThumbnail_forSize___block_invoke;
    v11[3] = &unk_278C22268;
    v12 = thumbnailCopy;
    [(WFPodcastEpisodeContentItem *)self getArtworkDataWithURL:height completionHandler:v11];
  }

  return 1;
}

void __56__WFPodcastEpisodeContentItem_getListThumbnail_forSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__WFPodcastEpisodeContentItem_getListThumbnail_forSize___block_invoke_2;
  v6[3] = &unk_278C22448;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __56__WFPodcastEpisodeContentItem_getListThumbnail_forSize___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    v5 = [MEMORY[0x277D79FC8] imageWithData:v1 scale:0 allowAnimated:1.0];
    (*(v2 + 16))(v2, v5, 0);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 40);

    v3(v4, 0);
  }
}

- (BOOL)getListSubtitle:(id)subtitle
{
  if (subtitle)
  {
    subtitleCopy = subtitle;
    episode = [(WFPodcastEpisodeContentItem *)self episode];
    author = [episode author];
    (*(subtitle + 2))(subtitleCopy, author);
  }

  return 1;
}

- (id)episode
{
  v3 = objc_opt_class();

  return [(WFPodcastEpisodeContentItem *)self objectForClass:v3];
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Podcast episodes", @"Podcast episodes");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Podcast episode", @"Podcast episode");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)outputTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [MEMORY[0x277CFC490] typeWithClass:objc_opt_class()];
  v4 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1DB0]];
  v5 = [MEMORY[0x277CFC490] typeWithClass:objc_opt_class()];
  v6 = [v2 orderedSetWithObjects:{v3, v4, v5, 0}];

  return v6;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [MEMORY[0x277CFC490] typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (id)propertyBuilders
{
  v36[10] = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == self)
  {
    v3 = MEMORY[0x277CFC338];
    v35 = WFLocalizedContentPropertyNameMarker(@"Store ID");
    v34 = [v3 keyPath:@"episode.identifier" name:v35 class:objc_opt_class()];
    v36[0] = v34;
    v4 = MEMORY[0x277CFC338];
    v33 = WFLocalizedContentPropertyNameMarker(@"Store URL");
    v32 = [v4 keyPath:@"episode.viewURL" name:v33 class:objc_opt_class()];
    v36[1] = v32;
    v5 = MEMORY[0x277CFC338];
    v31 = WFLocalizedContentPropertyNameMarker(@"Title");
    v30 = [v5 keyPath:@"episode.title" name:v31 class:objc_opt_class()];
    v36[2] = v30;
    v6 = MEMORY[0x277CFC338];
    v29 = WFLocalizedContentPropertyNameMarker(@"Author");
    v28 = [v6 keyPath:@"episode.author" name:v29 class:objc_opt_class()];
    v36[3] = v28;
    v7 = MEMORY[0x277CFC338];
    v27 = WFLocalizedContentPropertyNameMarker(@"Description");
    v26 = [v7 keyPath:@"episode.descriptionText" name:v27 class:objc_opt_class()];
    v36[4] = v26;
    v8 = MEMORY[0x277CFC338];
    v25 = WFLocalizedContentPropertyNameMarker(@"Release Date");
    v24 = [v8 keyPath:@"episode.releaseDate" name:v25 class:objc_opt_class()];
    v36[5] = v24;
    v9 = MEMORY[0x277CFC338];
    v23 = WFLocalizedContentPropertyNameMarker(@"Genres");
    v10 = [v9 keyPath:@"episode.genres" name:v23 class:objc_opt_class()];
    v11 = [v10 multipleValues:1];
    v36[6] = v11;
    v12 = MEMORY[0x277CFC338];
    v13 = WFLocalizedContentPropertyNameMarker(@"Duration");
    v14 = [v12 keyPath:@"episode.duration" name:v13 class:objc_opt_class()];
    v36[7] = v14;
    v15 = MEMORY[0x277CFC338];
    v16 = WFLocalizedContentPropertyNameMarker(@"Artwork");
    v17 = [v15 block:&__block_literal_global_22082 name:v16 class:objc_opt_class()];
    v36[8] = v17;
    v18 = MEMORY[0x277CFC338];
    v19 = WFLocalizedContentPropertyNameMarker(@"Artwork URL");
    v20 = [v18 block:&__block_literal_global_260 name:v19 class:objc_opt_class()];
    v36[9] = v20;
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:10];
  }

  else
  {
    v2 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v2;
}

void __47__WFPodcastEpisodeContentItem_propertyBuilders__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = MEMORY[0x277D79F68];
  v7 = *MEMORY[0x277CE1D90];
  v8 = a4;
  v9 = a2;
  v11 = [v6 typeWithUTType:v7];
  v10 = [v9 getArtworkURLForSize:v11 type:{512.0, 512.0}];

  (a4)[2](v8, v10);
}

void __47__WFPodcastEpisodeContentItem_propertyBuilders__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__WFPodcastEpisodeContentItem_propertyBuilders__block_invoke_2;
  v8[3] = &unk_278C21CA0;
  v9 = v5;
  v6 = v5;
  v7 = a2;
  [v7 getObjectRepresentation:v8 forClass:objc_opt_class()];
}

@end