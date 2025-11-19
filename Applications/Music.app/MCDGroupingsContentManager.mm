@interface MCDGroupingsContentManager
- (id)_modelRequest;
- (id)actionForHeaderInSection:(int64_t)a3;
- (id)cellTitleAtIndexPath:(id)a3;
- (id)childrenOfItemAtIndexPath:(id)a3;
- (id)itemAtIndexPath:(id)a3;
- (id)rowCellItemConfigurationsAtIndexPath:(id)a3;
- (id)viewModelsAtIndexPath:(id)a3 prefersTallArtwork:(BOOL)a4 withSubtitleForPlaylists:(BOOL)a5 actionToPerform:(unint64_t)a6;
- (int64_t)allowedNumberOfItemsForDisplayWithResponse:(id)a3 inSection:(int64_t)a4;
- (int64_t)maximumNumberOfItemsForDisplay;
- (int64_t)maximumNumberOfLinesInSection:(int64_t)a3;
- (unint64_t)cellTypeAtIndexPath:(id)a3;
- (void)_actionForItem:(id)a3;
- (void)_initiatePlaybackForItem:(id)a3;
@end

@implementation MCDGroupingsContentManager

- (int64_t)allowedNumberOfItemsForDisplayWithResponse:(id)a3 inSection:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 results];
  v8 = [v7 sectionAtIndex:a4];

  if ([v8 sectionType] == 11)
  {
    v9 = [v6 results];

    v10 = [v9 numberOfItemsInSection:a4];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = MCDGroupingsContentManager;
    v10 = [(MCDFuseContentManager *)&v12 allowedNumberOfItemsForDisplayWithResponse:v6 inSection:a4];
  }

  return v10;
}

- (id)itemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MCDFuseContentManager *)self contentResults];

  if (v5)
  {
    v6 = [(MCDFuseContentManager *)self contentResults];
    v7 = [v6 itemsInSectionAtIndex:{objc_msgSend(v4, "section")}];
    v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 firstSection];
    }

    else
    {
      v9 = v8;
    }

    v16 = v9;
  }

  else
  {
    v10 = [(MCDFuseContentManager *)self lastReceivedResponse];
    v11 = [v10 results];
    v8 = [v11 sectionAtIndex:{objc_msgSend(v4, "section")}];

    v12 = [v8 sectionType];
    v13 = [(MCDFuseContentManager *)self lastReceivedResponse];
    v14 = v13;
    if (v12 == 11)
    {
      v15 = [v13 results];
      v16 = [v15 itemAtIndexPath:v4];
    }

    else
    {
      v17 = [v13 request];

      v18 = [v17 loadAdditionalContentURL];
      if (v18 && (v19 = v18, -[MCDFuseContentManager lastReceivedResponse](self, "lastReceivedResponse"), v20 = objc_claimAutoreleasedReturnValue(), [v20 results], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "numberOfSections"), v21, v20, v19, v22 >= 1))
      {
        v23 = [(MCDFuseContentManager *)self lastReceivedResponse];
        v24 = [v23 results];
        v25 = [v24 itemsInSectionAtIndex:0];
        v16 = [v25 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];
      }

      else
      {
        v27.receiver = self;
        v27.super_class = MCDGroupingsContentManager;
        v16 = [(MCDFuseContentManager *)&v27 itemAtIndexPath:v4];
      }
    }
  }

  return v16;
}

- (id)childrenOfItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MCDFuseContentManager *)self lastReceivedResponse];
  v6 = [v5 results];
  v7 = [v6 numberOfSections];
  v8 = [v4 section];

  if (v7 <= v8)
  {
    v11 = &__NSArray0__struct;
  }

  else
  {
    v9 = [(MCDFuseContentManager *)self lastReceivedResponse];
    v10 = [v9 results];
    v11 = [v10 itemsInSectionAtIndex:{objc_msgSend(v4, "section")}];
  }

  return v11;
}

- (int64_t)maximumNumberOfLinesInSection:(int64_t)a3
{
  v4 = [NSIndexPath indexPathForRow:0 inSection:a3];
  v5 = [(MCDGroupingsContentManager *)self itemAtIndexPath:v4];

  if ([v5 displayStyle] == 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)rowCellItemConfigurationsAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v45 = self;
  v6 = self;
  v7 = v5;
  v43 = v4;
  v8 = [(MCDGroupingsContentManager *)v6 childrenOfItemAtIndexPath:v4];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v48;
    *&v10 = 138543618;
    v42 = v10;
    v44 = *v48;
    do
    {
      v13 = 0;
      v46 = v11;
      do
      {
        if (*v48 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v47 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v14 innerObject];
          v16 = [MPModelGenericObject genericObjectWithModelObject:v15];

          v17 = [v16 artworkCatalog];
          if (v17)
          {
            v18 = v17;
          }

          else if (-[NSObject type](v16, "type") != 4 || (-[NSObject playlist](v16, "playlist"), v20 = objc_claimAutoreleasedReturnValue(), [v20 tracksTiledArtworkCatalogWithRows:2 columns:2], v18 = objc_claimAutoreleasedReturnValue(), v20, !v18))
          {
            v21 = [(MCDFuseContentManager *)v45 viewController];
            [v21 traitCollection];
            v22 = v8;
            v24 = v23 = v7;
            v25 = [UIImage defaultPlaceholderForTraitCollection:v24];
            v18 = [MPArtworkCatalog staticArtworkCatalogWithImage:v25];

            v7 = v23;
            v8 = v22;
            v12 = v44;
          }

          switch([v14 itemType])
          {
            case 1uLL:
              v26 = [v14 album];
              goto LABEL_32;
            case 2uLL:
              v27 = [v14 artist];
              goto LABEL_30;
            case 3uLL:
              v27 = [v14 curator];
              goto LABEL_30;
            case 4uLL:
              v27 = [v14 playlist];
              goto LABEL_30;
            case 5uLL:
              v27 = [v14 radioStation];
              goto LABEL_30;
            case 6uLL:
              v27 = [v14 socialPerson];
              goto LABEL_30;
            case 7uLL:
              v26 = [v14 song];
              goto LABEL_32;
            case 8uLL:
              v26 = [v14 episode];
              goto LABEL_32;
            case 9uLL:
              v26 = [v14 show];
              goto LABEL_32;
            case 0xAuLL:
              v28 = [v14 season];
              v29 = [v28 show];
              v30 = [v29 title];

              goto LABEL_34;
            case 0xBuLL:
              v27 = [v14 showCreator];
              goto LABEL_30;
            case 0xCuLL:
              v26 = [v14 movie];
              goto LABEL_32;
            case 0xDuLL:
              v26 = [v14 mediaClip];
LABEL_32:
              v28 = v26;
              v31 = [v26 title];
              goto LABEL_33;
            case 0xEuLL:
              v27 = [v14 recordLabel];
              goto LABEL_30;
            case 0xFuLL:
              v27 = [v14 creditsArtist];
LABEL_30:
              v28 = v27;
              v31 = [v27 name];
LABEL_33:
              v30 = v31;
LABEL_34:

              break;
            default:
              v30 = 0;
              break;
          }

          v32 = [v14 itemType];
          if (v32 == 7)
          {
            v33 = [v14 song];
LABEL_39:
            v34 = v33;
            v35 = [v33 artist];
            v36 = [v35 name];

            if (!v18)
            {
              goto LABEL_41;
            }
          }

          else
          {
            if (v32 == 1)
            {
              v33 = [v14 album];
              goto LABEL_39;
            }

            v36 = 0;
            if (!v18)
            {
LABEL_41:

              v11 = v46;
              goto LABEL_42;
            }
          }

          v37 = [[CPUIImageRowCellItemConfiguration alloc] initWithArtworkCatalog:v18 title:v30 subtitle:v36];
          [v7 addObject:v37];

          goto LABEL_41;
        }

        v16 = MCDMusicGeneralLogging();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v19 = objc_opt_class();
          *buf = v42;
          v52 = v19;
          v53 = 2114;
          v54 = v43;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Wrong kind (%{public}@) of child found in childrenOfItemAtIndexPath at %{public}@", buf, 0x16u);
        }

LABEL_42:

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v38 = [v8 countByEnumeratingWithState:&v47 objects:v55 count:16];
      v11 = v38;
    }

    while (v38);
  }

  v39 = v7;
  v40 = [v7 copy];

  return v40;
}

- (unint64_t)cellTypeAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MCDGroupingsContentManager *)self itemAtIndexPath:v4];
  if ([v5 sectionType] == 15)
  {
    v6 = 3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MCDGroupingsContentManager;
    v6 = [(MCDFuseContentManager *)&v8 cellTypeAtIndexPath:v4];
  }

  return v6;
}

- (id)viewModelsAtIndexPath:(id)a3 prefersTallArtwork:(BOOL)a4 withSubtitleForPlaylists:(BOOL)a5 actionToPerform:(unint64_t)a6
{
  v66 = a4;
  v7 = a3;
  v68 = objc_opt_new();
  v69 = self;
  v65 = v7;
  v8 = [(MCDGroupingsContentManager *)self childrenOfItemAtIndexPath:v7];
  v9 = objc_opt_new();
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v76 objects:v84 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v77;
    v73 = v9;
    v70 = *v77;
    do
    {
      v13 = 0;
      v71 = v11;
      do
      {
        if (*v77 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v76 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v14 itemType];
          if (v15 == 5)
          {
            v16 = [v14 radioStation];
LABEL_19:
            v17 = v16;
            goto LABEL_21;
          }

          if (v15 != 4)
          {
            if (v15 != 1)
            {
              goto LABEL_28;
            }

            v16 = [v14 album];
            v17 = v16;
            if (v66)
            {
              v18 = [v16 superHeroTallEditorialArtworkCatalog];

              if (!v18)
              {
                v16 = [v14 album];
                goto LABEL_19;
              }

LABEL_17:
              v22 = v18;
              v19 = v22;
LABEL_30:
              switch([v14 itemType])
              {
                case 1uLL:
                  v29 = [v14 album];
                  goto LABEL_48;
                case 2uLL:
                  v30 = [v14 artist];
                  goto LABEL_46;
                case 3uLL:
                  v30 = [v14 curator];
                  goto LABEL_46;
                case 4uLL:
                  v30 = [v14 playlist];
                  goto LABEL_46;
                case 5uLL:
                  v30 = [v14 radioStation];
                  goto LABEL_46;
                case 6uLL:
                  v30 = [v14 socialPerson];
                  goto LABEL_46;
                case 7uLL:
                  v29 = [v14 song];
                  goto LABEL_48;
                case 8uLL:
                  v29 = [v14 episode];
                  goto LABEL_48;
                case 9uLL:
                  v29 = [v14 show];
                  goto LABEL_48;
                case 0xAuLL:
                  v31 = [v14 season];
                  v32 = [v31 show];
                  v33 = [v32 title];

                  goto LABEL_50;
                case 0xBuLL:
                  v30 = [v14 showCreator];
                  goto LABEL_46;
                case 0xCuLL:
                  v29 = [v14 movie];
                  goto LABEL_48;
                case 0xDuLL:
                  v29 = [v14 mediaClip];
LABEL_48:
                  v31 = v29;
                  v34 = [v29 title];
                  goto LABEL_49;
                case 0xEuLL:
                  v30 = [v14 recordLabel];
                  goto LABEL_46;
                case 0xFuLL:
                  v30 = [v14 creditsArtist];
LABEL_46:
                  v31 = v30;
                  v34 = [v30 name];
LABEL_49:
                  v33 = v34;
LABEL_50:

                  break;
                default:
                  v33 = 0;
                  break;
              }

              v35 = [v14 itemType];
              v74 = v22;
              if (v35 == 7)
              {
                v36 = [v14 song];
LABEL_55:
                v37 = v36;
                v38 = [v36 artist];
                v39 = [v38 name];
              }

              else
              {
                if (v35 == 1)
                {
                  v36 = [v14 album];
                  goto LABEL_55;
                }

                v39 = 0;
              }

              v40 = [v14 itemType];
              v41 = 0;
              if (v40 > 4)
              {
                if (v40 != 5)
                {
                  if (v40 != 7)
                  {
                    goto LABEL_68;
                  }

                  v42 = v9;
                  v43 = v33;
                  v48 = [v14 song];
                  goto LABEL_65;
                }

                v42 = v9;
                v43 = v33;
                v44 = [v14 radioStation];
                v45 = [v44 identifiers];
                v46 = [v45 radio];
                v47 = [v46 stationStringID];
              }

              else
              {
                if (v40 != 1)
                {
                  if (v40 == 4)
                  {
                    v42 = v9;
                    v43 = v33;
                    v44 = [v14 playlist];
                    v45 = [v44 identifiers];
                    v46 = [v45 universalStore];
                    v47 = [v46 globalPlaylistID];
                    goto LABEL_67;
                  }

LABEL_68:
                  v49 = [v14 itemType] == 4;
                  if (v41 && v19 && v33)
                  {
                    v50 = v33;
                    v51 = [v9 objectForKey:v41];
                    if (v51)
                    {
                      v52 = [v9 objectForKey:v41];
                      v53 = [v52 unsignedIntegerValue];

                      v54 = v53 + 1;
                      v55 = [NSNumber numberWithUnsignedInteger:v53 + 1];
                      [v73 setValue:v55 forKey:v41];

                      v9 = v73;
                      v56 = [NSString stringWithFormat:@"%@-%ld", v41, v54];

                      v41 = v56;
                    }

                    else
                    {
                      [v9 setValue:&off_10110B298 forKey:v41];
                    }

                    v57 = [CPUIGridViewBaseViewModel alloc];
                    v58 = [CPUIGridViewBaseViewModelImagePlaceholder cpuiPlaceholder:0];
                    v75[0] = _NSConcreteStackBlock;
                    v75[1] = 3221225472;
                    v75[2] = sub_1000E9508;
                    v75[3] = &unk_101098068;
                    v75[5] = v14;
                    v75[6] = a6;
                    v75[4] = v69;
                    BYTE2(v64) = 0;
                    LOWORD(v64) = 1;
                    LOBYTE(v63) = 0;
                    v59 = v57;
                    v33 = v50;
                    v60 = [v59 initWithId:v41 title:v50 subtitle:v39 titlePriority:v49 artworkCatalog:v19 imageShape:0 isTallArtwork:v63 placeholder:v58 accessorySystemImage:0 allowsTouches:v64 disabledAppearance:v75 isPressed:? action:?];

                    [v68 addObject:v60];
                  }

                  v12 = v70;
                  v11 = v71;
                  goto LABEL_76;
                }

                v42 = v9;
                v43 = v33;
                v48 = [v14 album];
LABEL_65:
                v44 = v48;
                v45 = [v48 identifiers];
                v46 = [v45 universalStore];
                v47 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lld", [v46 adamID]);
              }

LABEL_67:
              v41 = v47;

              v33 = v43;
              v9 = v42;
              goto LABEL_68;
            }

LABEL_21:
            v19 = [v16 artworkCatalog];
LABEL_27:

            if (!v19)
            {
LABEL_28:
              v26 = [(MCDFuseContentManager *)v69 viewController];
              v27 = [v26 traitCollection];
              v28 = [UIImage defaultPlaceholderForTraitCollection:v27];
              v19 = [MPArtworkCatalog staticArtworkCatalogWithImage:v28];

              v9 = v73;
            }

            v22 = 0;
            goto LABEL_30;
          }

          v21 = [v14 playlist];
          v17 = v21;
          if (v66)
          {
            v18 = [v21 superHeroTallEditorialArtworkCatalog];

            if (v18)
            {
              goto LABEL_17;
            }

            v21 = [v14 playlist];
            v17 = v21;
          }

          v23 = [v21 artworkCatalog];
          v24 = v23;
          if (v23)
          {
            v19 = v23;
          }

          else
          {
            v25 = [v14 playlist];
            v19 = [v25 tracksTiledArtworkCatalogWithRows:2 columns:2];
          }

          v9 = v73;
          goto LABEL_27;
        }

        v19 = MCDMusicGeneralLogging();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = objc_opt_class();
          *buf = 138543618;
          v81 = v20;
          v82 = 2114;
          v83 = v65;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Wrong kind (%{public}@) of child found in childrenOfItemAtIndexPath at %{public}@", buf, 0x16u);
        }

LABEL_76:

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v76 objects:v84 count:16];
    }

    while (v11);
  }

  v61 = [v68 copy];

  return v61;
}

- (int64_t)maximumNumberOfItemsForDisplay
{
  v12.receiver = self;
  v12.super_class = MCDGroupingsContentManager;
  v3 = [(MCDFuseContentManager *)&v12 maximumNumberOfItemsForDisplay];
  v4 = [(MCDFuseContentManager *)self lastReceivedResponse];
  v5 = [v4 request];

  v6 = [v5 loadAdditionalContentURL];
  if (v6)
  {
    v7 = v6;
    v8 = [(MCDFuseContentManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v9 = [(MCDFuseContentManager *)self delegate];
      v10 = [v9 showRankedList];

      if (v10)
      {
        if ([(MCDFuseContentManager *)self limitedUI])
        {
          v3 = 11;
        }

        else
        {
          v3 = 20;
        }
      }
    }

    else
    {
    }
  }

  return v3;
}

- (id)cellTitleAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MCDFuseContentManager *)self lastReceivedResponse];
  v6 = [v5 results];
  v7 = [v6 sectionAtIndex:{objc_msgSend(v4, "section")}];

  if ([v7 sectionType] == 11)
  {
    v8 = [v7 title];
  }

  else
  {
    v9 = [(MCDGroupingsContentManager *)self itemAtIndexPath:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v9 sectionType] == 9)
      {
        v10 = +[NSBundle mainBundle];
        v11 = [v10 localizedStringForKey:@"Recently Played" value:&stru_101107168 table:0];
      }

      else
      {
        v11 = [v9 title];
      }
    }

    else
    {
      v11 = 0;
    }

    v8 = v11;
  }

  return v8;
}

- (id)actionForHeaderInSection:(int64_t)a3
{
  v5 = [(MCDFuseContentManager *)self lastReceivedResponse];
  v6 = [v5 results];
  v7 = [v6 sectionAtIndex:a3];

  if ([v7 sectionType] == 11)
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MCDGroupingsContentManager;
    v8 = [(MCDFuseContentManager *)&v10 actionForHeaderInSection:a3];
  }

  return v8;
}

- (void)_initiatePlaybackForItem:(id)a3
{
  v26 = a3;
  v4 = [v26 itemType];
  if (v4 <= 4)
  {
    if (v4 == 1)
    {
      v5 = [(MCDFuseContentManager *)self playbackManager];
      v6 = [v26 album];
      v7 = [(MCDFuseContentManager *)self viewController];
      v8 = [v7 combinedPlayActivityFeatureName];
      [v5 initiatePlaybackForAlbum:v6 lastResponse:0 shuffled:0 playActivityFeatureName:v8];
    }

    else
    {
      if (v4 != 4)
      {
        goto LABEL_18;
      }

      v5 = [(MCDFuseContentManager *)self playbackManager];
      v6 = [v26 playlist];
      v7 = [(MCDFuseContentManager *)self viewController];
      v8 = [v7 combinedPlayActivityFeatureName];
      [v5 initiatePlaybackForPlaylist:v6 lastResponse:0 shuffled:0 playActivityFeatureName:v8];
    }

LABEL_16:
    goto LABEL_17;
  }

  if (v4 != 5)
  {
    if (v4 != 7)
    {
      goto LABEL_18;
    }

    v9 = [(MCDFuseContentManager *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(MCDFuseContentManager *)self delegate];
      v12 = [v11 queueListForPlayback];
    }

    else
    {
      v12 = 0;
    }

    v17 = [(MCDFuseContentManager *)self lastReceivedResponse];
    v18 = [v17 results];
    v5 = [v18 itemsInSectionAtIndex:0];

    v19 = [(MCDFuseContentManager *)self lastReceivedResponse];
    v20 = [(MCDGroupingsContentManager *)self allowedNumberOfItemsForDisplayWithResponse:v19 inSection:0];

    if (v20 <= [v5 count])
    {
      v21 = [v5 subarrayWithRange:{0, v20}];

      v5 = v21;
    }

    v22 = [(MCDFuseContentManager *)self playbackManager];
    v23 = [v26 song];
    v24 = [(MCDFuseContentManager *)self viewController];
    v25 = [v24 combinedPlayActivityFeatureName];
    [v22 initiatePlaybackForSong:v23 useResultsAsPlaybackQueue:v12 itemList:v5 playActivityFeatureName:v25];

    v6 = [(MCDFuseContentManager *)self viewController];
    v7 = [v6 navigationController];
    [v7 MCD_pushNowPlayingViewControllerAnimated:1];
    goto LABEL_16;
  }

  v13 = [(MCDFuseContentManager *)self playbackManager];
  v14 = [v26 radioStation];
  v15 = [(MCDFuseContentManager *)self viewController];
  v16 = [v15 combinedPlayActivityFeatureName];
  [v13 initiatePlaybackForRadioStation:v14 lastResponse:0 shuffled:0 playActivityFeatureName:v16];

  v5 = [(MCDFuseContentManager *)self viewController];
  v6 = [v5 navigationController];
  [v6 MCD_pushNowPlayingViewControllerAnimated:1];
LABEL_17:

LABEL_18:
}

- (void)_actionForItem:(id)a3
{
  v17 = a3;
  v4 = [v17 itemType];
  if (v4 == 4)
  {
    v8 = [_TtC5Music27MCDItemDetailViewController alloc];
    v6 = [v17 playlist];
    v7 = [(MCDItemDetailViewController *)v8 initWithPlaylist:v6 onlyDownloaded:0 preferCatalog:1];
  }

  else
  {
    if (v4 != 1)
    {
      goto LABEL_7;
    }

    v5 = [_TtC5Music27MCDItemDetailViewController alloc];
    v6 = [v17 album];
    v7 = [(MCDItemDetailViewController *)v5 initWithAlbum:v6 onlyDownloaded:0 preferCatalog:1];
  }

  v9 = v7;

  if (v9)
  {
    v10 = [(MCDFuseContentManager *)self viewController];
    [(MCDItemDetailViewController *)v9 setPlayActivityFeatureNameSourceViewController:v10];

    v11 = [v17 identifiers];
    v12 = [v11 personalizedStore];
    v13 = [v12 recommendationID];
    v14 = [v13 dataUsingEncoding:4];
    [(MCDItemDetailViewController *)v9 setPlayActivityForwardedRecommendationData:v14];

    v15 = [(MCDFuseContentManager *)self viewController];
    v16 = [v15 navigationController];
    [v16 pushViewController:v9 animated:1];

    goto LABEL_8;
  }

LABEL_7:
  [(MCDGroupingsContentManager *)self _initiatePlaybackForItem:v17];
LABEL_8:
}

- (id)_modelRequest
{
  v3 = objc_alloc_init(MPModelStoreBrowseRequest);
  [v3 setFilteringPolicy:1];
  v4 = [(MCDFuseContentManager *)self dataSource];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MCDFuseContentManager *)self dataSource];
    v7 = [v6 parentSection];
    [v3 configureWithParentSection:v7];
  }

  v8 = [(MCDFuseContentManager *)self dataSource];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(MCDFuseContentManager *)self dataSource];
    [v3 setDomain:{objc_msgSend(v10, "domain")}];
  }

  [v3 setClientIdentifier:MCDMusicCarPlayBundleIdentifier];
  [v3 setClientVersion:MCDMusicCarPlayVersion];
  [v3 setClientPlatformIdentifier:MCDMusicCarPlayPlatformIdentifier];
  [v3 setRequestEndpoint:1];
  [v3 setAuthenticationOptions:1];

  return v3;
}

@end