@interface AcSearchResultTableViewCell
+ (id)identifierWithChildItemsCount:(unint64_t)count;
- (AcSearchResultTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (AcSearchResultTableViewCellDelegate)delegate;
- (CGSize)sizeThatFits:(CGSize)fits;
- (double)estimatedChildItemsStackViewWidthWithContentViewWidth:(double)width;
- (double)iconSize;
- (double)trailingMargin;
- (id)_highlightedLabelColor;
- (id)attributedFirstPartDetailString;
- (id)attributedSecondPartDetailString;
- (id)attributedSubtitleString;
- (id)attributedTitleString;
- (id)autocompleteClientSourceString;
- (id)delimiterColor;
- (id)distanceString;
- (id)secondaryLabelFont;
- (id)titleFont;
- (id)titleHighlightFont;
- (id)titleRegularFont;
- (int64_t)containerAlignment;
- (void)_setHighlightedLabelColors;
- (void)_updateAccessoryTintColor;
- (void)addTransitLabelWithFirstPartDetailString:(id)string secondPartDetailString:(id)detailString;
- (void)didTapChildItemButtonForChildItem:(id)item;
- (void)didUpdateMapItem;
- (void)didUpdatePublisherResult;
- (void)loadPhoto;
- (void)prepareForReuse;
- (void)removeTransitLabel;
- (void)setAccessoryViewType:(int64_t)type;
- (void)setChildItems:(id)items viewModel:(id)model;
- (void)setObject:(id)object;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setupPlaceContextContent:(id)content;
- (void)updateChildItemGridAlignmentRectInset;
- (void)updateChildItems;
- (void)updateContent;
- (void)updateThirdLineVisibility;
@end

@implementation AcSearchResultTableViewCell

- (AcSearchResultTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didTapChildItemButtonForChildItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    v10 = itemCopy;
    delegate = [(AcSearchResultTableViewCell *)self delegate];
    v6 = objc_opt_respondsToSelector();

    itemCopy = v10;
    if (v6)
    {
      v7 = [(NSArray *)self->_childItems indexOfObject:v10];
      itemCopy = v10;
      if (v7 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = [NSIndexPath indexPathForRow:v7 inSection:0];
        delegate2 = [(AcSearchResultTableViewCell *)self delegate];
        [delegate2 didTapItemInChildItems:self->_childItems atIndexPath:v8 forCell:self];

        itemCopy = v10;
      }
    }
  }
}

- (void)removeTransitLabel
{
  if (self->super._transitInfoLabel)
  {
    v3.receiver = self;
    v3.super_class = AcSearchResultTableViewCell;
    [(_SearchResultTableViewCell *)&v3 removeTransitLabel];
    [(NUIContainerStackView *)self->super._secondLabelStackView removeArrangedSubview:self->super._transitInfoLabel];
    [(MKTransitInfoLabelView *)self->super._transitInfoLabel removeFromSuperview];
  }

  if (self->super._transitDelimiterLabel)
  {
    [(NUIContainerStackView *)self->super._secondLabelStackView removeArrangedSubview:?];
    [(UILabel *)self->super._transitDelimiterLabel removeFromSuperview];
  }
}

- (void)addTransitLabelWithFirstPartDetailString:(id)string secondPartDetailString:(id)detailString
{
  stringCopy = string;
  detailStringCopy = detailString;
  wantsTwoLineLayout = [(AcSearchResultTableViewCell *)self wantsTwoLineLayout];
  transitInfoLabel = self->super._transitInfoLabel;
  if (wantsTwoLineLayout)
  {
    if (!transitInfoLabel)
    {
      v9 = objc_alloc_init(MKTransitInfoLabelView);
      v10 = self->super._transitInfoLabel;
      self->super._transitInfoLabel = v9;

      v11 = +[UIColor clearColor];
      [(MKTransitInfoLabelView *)self->super._transitInfoLabel setBackgroundColor:v11];

      LODWORD(v12) = 1144733696;
      [(MKTransitInfoLabelView *)self->super._transitInfoLabel setContentCompressionResistancePriority:0 forAxis:v12];
    }

    attributedFirstPartDetailString = stringCopy;
    if (!stringCopy)
    {
      attributedFirstPartDetailString = [(AcSearchResultTableViewCell *)self attributedFirstPartDetailString];
    }

    stringCopy = attributedFirstPartDetailString;
    if ([attributedFirstPartDetailString length])
    {
      goto LABEL_10;
    }

    if (!detailStringCopy)
    {
      detailStringCopy = [(AcSearchResultTableViewCell *)self attributedSecondPartDetailString];
    }

    if ([detailStringCopy length])
    {
LABEL_10:
      transitDelimiterLabel = self->super._transitDelimiterLabel;
      if (!transitDelimiterLabel)
      {
        _delimiterLabel = [(_SearchResultTableViewCell *)self _delimiterLabel];
        v16 = self->super._transitDelimiterLabel;
        self->super._transitDelimiterLabel = _delimiterLabel;

        LODWORD(v17) = 1144717312;
        [(UILabel *)self->super._transitDelimiterLabel setContentCompressionResistancePriority:0 forAxis:v17];
        transitDelimiterLabel = self->super._transitDelimiterLabel;
      }

      [(NUIContainerStackView *)self->super._secondLabelStackView insertArrangedSubview:transitDelimiterLabel atIndex:0];
    }

    secondLabelStackView = self->super._secondLabelStackView;
    v19 = self->super._transitInfoLabel;
    v20 = 0;
    goto LABEL_19;
  }

  if (!transitInfoLabel)
  {
    v21 = objc_alloc_init(MKTransitInfoLabelView);
    v22 = self->super._transitInfoLabel;
    self->super._transitInfoLabel = v21;

    v23 = +[UIColor clearColor];
    [(MKTransitInfoLabelView *)self->super._transitInfoLabel setBackgroundColor:v23];
  }

  if (self->_childItemGrid)
  {
    v24 = [(NUIContainerStackView *)self->super._labelStackView indexOfArrangedSubview:?];
    v19 = self->super._transitInfoLabel;
    if (v24 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = v24 - 1;
      secondLabelStackView = self->super._labelStackView;
LABEL_19:
      [(NUIContainerStackView *)secondLabelStackView insertArrangedSubview:v19 atIndex:v20];
      goto LABEL_22;
    }
  }

  else
  {
    v19 = self->super._transitInfoLabel;
  }

  [(NUIContainerStackView *)self->super._labelStackView addArrangedSubview:v19];
LABEL_22:
}

- (void)prepareForReuse
{
  [(_SearchResultTableViewCell *)self _clearModel];
  v4.receiver = self;
  v4.super_class = AcSearchResultTableViewCell;
  [(_SearchResultTableViewCell *)&v4 prepareForReuse];
  completion = self->_completion;
  self->_completion = 0;

  [(AcSearchResultTableViewCell *)self setAutocompleteCellType:0];
  [(AcSearchResultTableViewCell *)self setAutocompleteClientSourceType:0];
  [(AcSearchResultTableViewCell *)self setSearchQuery:0];
}

- (id)autocompleteClientSourceString
{
  if ([(AcSearchResultTableViewCell *)self supportsClientServerDifferentiation])
  {
    v3 = [AutocompleteClientSource autocompleteClientSourceTitleWithType:[(AcSearchResultTableViewCell *)self autocompleteClientSourceType]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setChildItems:(id)items viewModel:(id)model
{
  modelCopy = model;
  v7 = [items copy];
  childItems = self->_childItems;
  self->_childItems = v7;

  v9 = self->_childItemsViewModel;
  objc_storeStrong(&self->_childItemsViewModel, model);
  if (![(ChildItemsViewModel *)self->_childItemsViewModel isEqual:v9])
  {
    childItemGrid = self->_childItemGrid;
    if (childItemGrid)
    {
      v23 = v9;
      [(_SearchResultChildItemGridView *)childItemGrid removeAllArrangedSubviews];
      v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [modelCopy numberOfColumns] * objc_msgSend(modelCopy, "numberOfRows"));
      if ([modelCopy numberOfRows])
      {
        v12 = 0;
        v13 = 0;
        do
        {
          v14 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [modelCopy numberOfColumns]);
          if ([modelCopy numberOfColumns])
          {
            v15 = 0;
            v16 = modelCopy;
            do
            {
              if (v13 + v15 >= [v16 childItemsCount])
              {
                v17 = objc_alloc_init(UIView);
                v18 = v14;
              }

              else
              {
                if (sub_10000FA08(self) == 5)
                {
                  +[ChildItemCatalystButton childItemCatalystButton];
                }

                else
                {
                  +[ChildItemButton button];
                }
                v17 = ;
                [v14 addObject:v17];
                v18 = v11;
              }

              [v18 addObject:v17];

              v19 = ++v15 >= [modelCopy numberOfColumns];
              v16 = modelCopy;
            }

            while (!v19);
            v13 += v15;
          }

          if ([v14 count])
          {
            v20 = [(_SearchResultChildItemGridView *)self->_childItemGrid addRowWithArrangedSubviews:v14];
          }

          ++v12;
        }

        while (v12 < [modelCopy numberOfRows]);
      }

      v21 = [v11 copy];
      childItemButtons = self->_childItemButtons;
      self->_childItemButtons = v21;

      v9 = v23;
    }
  }
}

- (void)updateChildItems
{
  childItems = [(AcSearchResultTableViewCell *)self childItems];
  if ([(ChildItemButtonProtocol *)self->_childItemButtons count])
  {
    v3 = 0;
    do
    {
      v4 = [(ChildItemButtonProtocol *)self->_childItemButtons objectAtIndexedSubscript:v3];
      [v4 setDelegate:self];
      v5 = [childItems objectAtIndexedSubscript:v3];
      [v4 setChildItem:v5];

      ++v3;
    }

    while (v3 < [(ChildItemButtonProtocol *)self->_childItemButtons count]);
  }
}

- (void)loadPhoto
{
  imageState = self->_imageState;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100BBD190;
  v23[3] = &unk_10164C8A0;
  v24 = imageState;
  v23[4] = self;
  v4 = objc_retainBlock(v23);
  mapItem = [(_SearchResultTableViewCell *)self mapItem];
  v6 = self->_completion;
  [(AcSearchResultTableViewCell *)self iconSize];
  v8 = v7;
  publisherResult = [(_SearchResultTableViewCell *)self publisherResult];

  if (publisherResult)
  {
    v10 = +[MapsUIImageCache sharedCache];
    publisherResult2 = [(_SearchResultTableViewCell *)self publisherResult];
    publisher = [publisherResult2 publisher];
    publisherAttribution = [publisher publisherAttribution];
    iconIdentifier = [publisherAttribution iconIdentifier];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100BBD1C4;
    v21[3] = &unk_10165FEF8;
    v22 = v4;
    [v10 getImageForPublisherWithIconIdentifier:iconIdentifier completion:v21];

    v15 = 5.0;
    v16 = v22;
  }

  else
  {
    v15 = v8 * 0.5;
    if (v6 && (![(MKLocalSearchCompletion *)v6 _type]|| [(MKLocalSearchCompletion *)v6 _type]== 3))
    {
      v16 = +[MapsUIImageCache sharedCache];
      searchImage = [v16 searchImage];
      [(UIImageView *)self->_imageView setImage:searchImage];
    }

    else
    {
      v18 = +[MapsUIImageCache sharedCache];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100BBD248;
      v19[3] = &unk_10165FEF8;
      v20 = v4;
      [v18 getImageForMapItem:mapItem completion:v19];

      v16 = v20;
    }
  }

  [(UIImageView *)self->_imageView _setContinuousCornerRadius:v15];
}

- (void)setupPlaceContextContent:(id)content
{
  labelStackView = self->super._labelStackView;
  v4.receiver = self;
  v4.super_class = AcSearchResultTableViewCell;
  [(_SearchResultTableViewCell *)&v4 setupPlaceContextContent:content inStackView:labelStackView];
}

- (void)setAccessoryViewType:(int64_t)type
{
  v4.receiver = self;
  v4.super_class = AcSearchResultTableViewCell;
  [(_SearchResultTableViewCell *)&v4 setAccessoryViewType:type];
  [(AcSearchResultTableViewCell *)self _updateAccessoryTintColor];
}

- (void)_updateAccessoryTintColor
{
  if (sub_10000FA08(self) == 5 && [(_SearchResultTableViewCell *)self accessoryViewType]== 1)
  {
    if ([(AcSearchResultTableViewCell *)self isSelected])
    {
      accessoryView2 = +[UIColor whiteColor];
      accessoryView = [(AcSearchResultTableViewCell *)self accessoryView];
      [accessoryView setTintColor:accessoryView2];
    }

    else
    {
      accessoryView2 = [(AcSearchResultTableViewCell *)self accessoryView];
      accessoryView = [accessoryView2 theme];
      keyColor = [accessoryView keyColor];
      accessoryView3 = [(AcSearchResultTableViewCell *)self accessoryView];
      [accessoryView3 setTintColor:keyColor];
    }
  }
}

- (void)updateContent
{
  v3.receiver = self;
  v3.super_class = AcSearchResultTableViewCell;
  [(_SearchResultTableViewCell *)&v3 updateContent];
  [(AcSearchResultTableViewCell *)self updateThirdLineVisibility];
  [(AcSearchResultTableViewCell *)self _updateAccessoryTintColor];
}

- (void)updateThirdLineVisibility
{
  if ([(AcSearchResultTableViewCell *)self wantsTwoLineLayout])
  {
    text = [(UILabel *)self->super._secondLabel text];
    if ([text length])
    {
    }

    else
    {
      isHidden = [(UILabel *)self->super._thirdLabel isHidden];

      if ((isHidden & 1) == 0)
      {
        return;
      }
    }

    thirdLabel = self->super._thirdLabel;

    [(UILabel *)thirdLabel setHidden:1];
  }
}

- (void)didUpdatePublisherResult
{
  v3.receiver = self;
  v3.super_class = AcSearchResultTableViewCell;
  [(_SearchResultTableViewCell *)&v3 didUpdatePublisherResult];
  [(AcSearchResultTableViewCell *)self loadPhoto];
  [(AcSearchResultTableViewCell *)self updateChildItems];
}

- (void)didUpdateMapItem
{
  v3.receiver = self;
  v3.super_class = AcSearchResultTableViewCell;
  [(_SearchResultTableViewCell *)&v3 didUpdateMapItem];
  ++self->_imageState;
  [(UIImageView *)self->_imageView setImage:0];
  [(AcSearchResultTableViewCell *)self loadPhoto];
  [(AcSearchResultTableViewCell *)self updateChildItems];
}

- (id)distanceString
{
  if (![(AcSearchResultTableViewCell *)self isCompletionTypeAddress]|| (v10 = 0.0, v11 = 0.0, ([(MKLocalSearchCompletion *)self->_completion getCoordinate:&v10]& 1) == 0) || (v3 = v10, v4 = v11, [(_SearchResultTableViewCell *)self currentLocation], v5 = objc_claimAutoreleasedReturnValue(), [(_SearchResultTableViewCell *)self mapItem], v6 = objc_claimAutoreleasedReturnValue(), [NSString distanceStringFromLocation:v5 toCoordinate:v6 withMapItem:&self->super._showDistance showsDistance:1 onlyUseThreshold:0 maximumDistance:1 useShortThreshold:v3, v4], distanceString = objc_claimAutoreleasedReturnValue(), v6, v5, !distanceString))
  {
    v9.receiver = self;
    v9.super_class = AcSearchResultTableViewCell;
    distanceString = [(_SearchResultTableViewCell *)&v9 distanceString];
  }

  return distanceString;
}

- (id)attributedSubtitleString
{
  if ([(AcSearchResultTableViewCell *)self isCompletionTypeAddress]|| ([(_SearchResultTableViewCell *)self publisherResult], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    attributedSubtitleString = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = AcSearchResultTableViewCell;
    attributedSubtitleString = [(_SearchResultTableViewCell *)&v6 attributedSubtitleString];
  }

  return attributedSubtitleString;
}

- (id)delimiterColor
{
  if ([(AcSearchResultTableViewCell *)self wantsTwoLineLayout])
  {
    selfCopy = UIColor;
  }

  else
  {
    selfCopy = self;
  }

  secondaryLabelColor = [(_SearchResultTableViewCell *)selfCopy secondaryLabelColor];

  return secondaryLabelColor;
}

- (id)attributedSecondPartDetailString
{
  if ([(AcSearchResultTableViewCell *)self isCompletionTypeAddress]|| ([(_SearchResultTableViewCell *)self publisherResult], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = 0;
  }

  else
  {
    if ([(AcSearchResultTableViewCell *)self wantsTwoLineLayout]&& [(_SearchResultTableViewCell *)self _showOpenStateLabel])
    {
      hoursBuilderForSearchCell = [(_SearchResultTableViewCell *)self hoursBuilderForSearchCell];
      localizedOpenState = [hoursBuilderForSearchCell localizedOpenState];
    }

    else
    {
      localizedOpenState = 0;
    }

    v8 = [NSAttributedString alloc];
    if (localizedOpenState)
    {
      v9 = localizedOpenState;
    }

    else
    {
      v9 = &stru_1016631F0;
    }

    v14[0] = NSForegroundColorAttributeName;
    v10 = +[UIColor secondaryLabelColor];
    v15[0] = v10;
    v14[1] = NSFontAttributeName;
    v11 = +[UIFont system15];
    v15[1] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    v13 = [v8 initWithString:v9 attributes:v12];
    v4 = [v13 copy];
  }

  return v4;
}

- (id)attributedFirstPartDetailString
{
  v3 = +[NSMutableArray array];
  autocompleteClientSourceString = [(AcSearchResultTableViewCell *)self autocompleteClientSourceString];
  if ([autocompleteClientSourceString length])
  {
    [v3 addObject:autocompleteClientSourceString];
  }

  if ([(AcSearchResultTableViewCell *)self wantsTwoLineLayout])
  {
    +[UIColor secondaryLabelColor];
  }

  else
  {
    +[UIColor labelColor];
  }
  v5 = ;
  publisherResult = [(_SearchResultTableViewCell *)self publisherResult];

  if (publisherResult)
  {
    publisherResult2 = [(_SearchResultTableViewCell *)self publisherResult];
    publisher = [publisherResult2 publisher];
    publisherAttribution = [publisher publisherAttribution];
    subtitle = [publisherAttribution subtitle];

    if ([subtitle length])
    {
      [v3 addObject:subtitle];
    }
  }

  else
  {
    subtitle = [(AcSearchResultTableViewCell *)self distanceString];
    if ([subtitle length])
    {
      [v3 addObject:subtitle];
    }

    mapItem = [(_SearchResultTableViewCell *)self mapItem];
    v12 = [(_SearchResultTableViewCell *)self shortenedAddressStringForMapItem:mapItem];

    if ([(AcSearchResultTableViewCell *)self isCompletionTypeAddress])
    {
      subtitle2 = [(MKLocalSearchCompletion *)self->_completion subtitle];

      v14 = +[UIColor secondaryLabelColor];

      v12 = subtitle2;
      v5 = v14;
    }

    if ([v12 length])
    {
      [v3 addObject:v12];
    }
  }

  v15 = +[UIApplication sharedApplication];
  userInterfaceLayoutDirection = [v15 userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    reverseObjectEnumerator = [v3 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    v19 = [allObjects mutableCopy];

    v3 = v19;
  }

  _delimiterString = [objc_opt_class() _delimiterString];
  v21 = [v3 componentsJoinedByString:_delimiterString];

  v22 = [NSMutableAttributedString alloc];
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = &stru_1016631F0;
  }

  v28[0] = NSForegroundColorAttributeName;
  v28[1] = NSFontAttributeName;
  v29[0] = v5;
  v24 = +[UIFont system15];
  v29[1] = v24;
  v25 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
  v26 = [v22 initWithString:v23 attributes:v25];

  self->super._onlyDistanceOrEmpty = 0;

  return v26;
}

- (id)secondaryLabelFont
{
  sub_10000FA08(self);
  v2 = +[UIFont system15];

  return v2;
}

- (id)titleFont
{
  if (sub_10000FA08(self) == 5)
  {
    +[UIFont system17];
  }

  else
  {
    +[UIFont system17SemiBold];
  }
  v2 = ;

  return v2;
}

- (id)titleHighlightFont
{
  if (sub_10000FA08(self) == 5)
  {
    +[UIFont system17];
  }

  else
  {
    +[UIFont system17SemiBold];
  }
  v2 = ;

  return v2;
}

- (id)titleRegularFont
{
  sub_10000FA08(self);
  v2 = +[UIFont system17];

  return v2;
}

- (id)attributedTitleString
{
  titleRegularFont = [(AcSearchResultTableViewCell *)self titleRegularFont];
  titleHighlightFont = [(AcSearchResultTableViewCell *)self titleHighlightFont];
  completion = self->_completion;
  if (completion)
  {
    title = [(MKLocalSearchCompletion *)completion title];
    titleHighlightRanges = [(MKLocalSearchCompletion *)self->_completion titleHighlightRanges];
    if (sub_10000FA08(self) == 5)
    {
      if (([(AcSearchResultTableViewCell *)self isSelected]& 1) != 0)
      {
        +[UIColor whiteColor];
      }

      else
      {
        +[UIColor labelColor];
      }
      v17 = ;
      if (([(AcSearchResultTableViewCell *)self isSelected]& 1) != 0)
      {
        [(AcSearchResultTableViewCell *)self _highlightedLabelColor];
      }

      else
      {
        +[UIColor secondaryLabelColor];
      }
      v18 = ;
      [(UILabel *)self->super._titleLabel setTextColor:v18];
      v19 = [NSAttributedString attributedStringWithText:title highlightRanges:titleHighlightRanges font:titleRegularFont highlightedFont:titleHighlightFont highlightedTextColor:v17];
    }

    else
    {
      if (![(AcSearchResultTableViewCell *)self shouldEnableGrayscaleHighlighting])
      {
        attributedTitleString = [NSAttributedString attributedStringWithText:title boldInRange:titleHighlightRanges font:titleRegularFont bold:titleHighlightFont];
LABEL_19:

        goto LABEL_22;
      }

      v17 = +[UIColor labelColor];
      v18 = +[UIColor secondaryLabelColor];
      v19 = [NSAttributedString attributedStringWithText:title highlightRanges:titleHighlightRanges font:titleHighlightFont highlightedFont:titleHighlightFont highlightedTextColor:v17 unhighlightedTextColor:v18];
    }

    attributedTitleString = v19;

    goto LABEL_19;
  }

  if (sub_10000FA08(self) == 5)
  {
    v8 = +[UIColor labelColor];
    [(UILabel *)self->super._titleLabel setTextColor:v8];
  }

  v22.receiver = self;
  v22.super_class = AcSearchResultTableViewCell;
  attributedTitleString = [(_SearchResultTableViewCell *)&v22 attributedTitleString];
  searchQuery = [(AcSearchResultTableViewCell *)self searchQuery];

  if (searchQuery)
  {
    string = [attributedTitleString string];
    searchQuery2 = [(AcSearchResultTableViewCell *)self searchQuery];
    v13 = [string _maps_prefixMatchesForSearchString:searchQuery2];

    LODWORD(searchQuery2) = [(AcSearchResultTableViewCell *)self shouldEnableGrayscaleHighlighting];
    string2 = [attributedTitleString string];
    if (searchQuery2)
    {
      titleRegularFont2 = +[UIColor labelColor];
      titleHighlightFont2 = +[UIColor secondaryLabelColor];
      [NSAttributedString attributedStringWithText:string2 highlightRanges:v13 font:titleHighlightFont highlightedFont:titleHighlightFont highlightedTextColor:titleRegularFont2 unhighlightedTextColor:titleHighlightFont2];
    }

    else
    {
      titleRegularFont2 = [(AcSearchResultTableViewCell *)self titleRegularFont];
      titleHighlightFont2 = [(AcSearchResultTableViewCell *)self titleHighlightFont];
      [NSAttributedString attributedStringWithText:string2 boldInRange:v13 font:titleRegularFont2 bold:titleHighlightFont2];
    }
    v20 = ;

    attributedTitleString = v20;
  }

LABEL_22:

  return attributedTitleString;
}

- (void)setObject:(id)object
{
  objectCopy = object;
  [(_SearchResultTableViewCell *)self setPublisherResult:0];
  objc_storeStrong(&self->_object, object);
  v6 = objectCopy;
  v7 = &OBJC_PROTOCOL___MSPHistoryEntryPlaceDisplay;
  objc_opt_class();
  v28 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v28;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9 && ([v9 historyEntry], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "conformsToProtocol:", v7), v10, v11))
  {
    v12 = v28;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = v28;
    v14 = &OBJC_PROTOCOL___MSPHistoryEntryPlaceDisplay;
    objc_opt_class();
    v15 = v13;
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    if (v17 && ([v17 historyEntry], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "conformsToProtocol:", v14), v18, v19))
    {
      mapItem = v15;
    }

    else
    {
      mapItem = 0;
    }

    historyEntry = [mapItem historyEntry];
    geoMapItem = [historyEntry geoMapItem];
    v23 = [MKMapItem _itemWithGeoMapItem:geoMapItem];

    [(_SearchResultTableViewCell *)self setMapItem:v23];
    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_25;
    }

    completion = self->_completion;
    self->_completion = 0;
    v27 = v28;

    mapItem = [v27 mapItem];

    goto LABEL_23;
  }

  objc_storeStrong(&self->_completion, object);
  publisherResult = [(MKLocalSearchCompletion *)self->_completion publisherResult];

  v25 = self->_completion;
  if (!publisherResult)
  {
    mapItem = [(MKLocalSearchCompletion *)v25 mapItem];
LABEL_23:
    [(_SearchResultTableViewCell *)self setMapItem:mapItem];
    goto LABEL_24;
  }

  mapItem = [(MKLocalSearchCompletion *)v25 publisherResult];
  [(_SearchResultTableViewCell *)self setPublisherResult:mapItem];
LABEL_24:

LABEL_25:
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  reuseIdentifier = [(AcSearchResultTableViewCell *)self reuseIdentifier];
  if (([reuseIdentifier containsString:@"ChildItems"] & 1) != 0 || self->super._accessibilityEnabled)
  {

LABEL_4:
    rootStackView = self->super._rootStackView;

    [(NUIContainerStackView *)rootStackView sizeThatFits:width, height];
    goto LABEL_14;
  }

  v10 = sub_10000FA08(self);

  if (v10 == 5)
  {
    goto LABEL_4;
  }

  autocompleteCellType = [(AcSearchResultTableViewCell *)self autocompleteCellType];
  v12 = objc_opt_class();
  if (autocompleteCellType == 3)
  {
    [v12 estimatedTwoLinesCellHeight];
  }

  else
  {
    [v12 estimatedCellHeight];
  }

  v14 = v13;
  placeContextViewModel = [(_SearchResultTableViewCell *)self placeContextViewModel];

  if (placeContextViewModel)
  {
    font = [(UILabel *)self->super._contextualInformationLabel font];
    numberOfLines = [(UILabel *)self->super._contextualInformationLabel numberOfLines];
    traitCollection = [(AcSearchResultTableViewCell *)self traitCollection];
    [traitCollection displayScale];
    [UILabel _maps_maximumHeightWithFont:font numberOfLines:numberOfLines displayScale:?];
    v20 = v19;

    [(AcSearchResultTableViewCell *)self paddingAboveContextualInformationStackView];
    v14 = v20 + v14 + v21;
  }

  v22 = +[UIFont system15];
  [v22 _mapkit_scaledValueForValue:v14];
  v24 = v23;

  v8 = width;
  v9 = v24;
LABEL_14:
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)updateChildItemGridAlignmentRectInset
{
  [(AcSearchResultTableViewCell *)self iconSize];
  v4 = v3;
  [(NUIContainerStackView *)self->super._containerStackView spacing];
  if (self->super._accessibilityEnabled || (v6 = v5, sub_100960CE4()) || sub_10000FA08(self) == 5)
  {
    [(_SearchResultTableViewCell *)self leadingMargin];
  }

  else
  {
    v7 = v4 + 6.5 + v6 * 2.0;
  }

  v8 = -v7;
  [(AcSearchResultTableViewCell *)self trailingMargin];
  childItemGrid = self->_childItemGrid;

  [(_SearchResultChildItemGridView *)childItemGrid setCustomAlignmentRectInsets:-4.5, v8, -10.0, -6.5 - v9];
}

- (int64_t)containerAlignment
{
  if (sub_10000FA08(self) != 5)
  {
    return 3;
  }

  numberOfLines = [(_SearchResultTableViewCell *)self numberOfLines];
  imageView = self->_imageView;
  if (numberOfLines == 1)
  {
    v5 = -3.0;
  }

  else
  {
    v5 = 0.0;
  }

  if (numberOfLines == 1)
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  [(UIImageView *)imageView setCustomAlignmentRectInsets:-3.0, 0.0, v5, 0.0];
  return v6;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  animatedCopy = animated;
  selectedCopy = selected;
  isSelected = [(AcSearchResultTableViewCell *)self isSelected];
  v8.receiver = self;
  v8.super_class = AcSearchResultTableViewCell;
  [(AcSearchResultTableViewCell *)&v8 setSelected:selectedCopy animated:animatedCopy];
  if (isSelected != selectedCopy)
  {
    [(AcSearchResultTableViewCell *)self updateContent];
  }
}

- (id)_highlightedLabelColor
{
  v2 = +[UIColor whiteColor];
  v3 = [v2 colorWithAlphaComponent:0.7];

  return v3;
}

- (void)_setHighlightedLabelColors
{
  _highlightedLabelColor = [(AcSearchResultTableViewCell *)self _highlightedLabelColor];
  [(UILabel *)self->super._titleLabel setHighlightedTextColor:_highlightedLabelColor];
  [(UILabel *)self->super._secondLabel setHighlightedTextColor:_highlightedLabelColor];
  [(UILabel *)self->super._thirdLabel setHighlightedTextColor:_highlightedLabelColor];
  [(UILabel *)self->super._secondPartLabel setHighlightedTextColor:_highlightedLabelColor];
  [(UILabel *)self->super._secondPartDelimiterLabel setHighlightedTextColor:_highlightedLabelColor];
  [(UILabel *)self->super._transitDelimiterLabel setHighlightedTextColor:_highlightedLabelColor];
  [(UILabel *)self->super._contextualInformationLabel setHighlightedTextColor:_highlightedLabelColor];
}

- (AcSearchResultTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v25.receiver = self;
  v25.super_class = AcSearchResultTableViewCell;
  v7 = [(_SearchResultTableViewCell *)&v25 initWithStyle:style reuseIdentifier:identifierCopy];
  v8 = v7;
  if (v7)
  {
    [(AcSearchResultTableViewCell *)v7 setAccessibilityIdentifier:@"AutocompleteSearchResultTableViewCell"];
    [(_SearchResultTableViewCell *)v8 setDisplaysDistanceAsSnippetLocationAboveThreshold:0];
    v9 = [UIImageView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v13 = [v9 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    imageView = v8->_imageView;
    v8->_imageView = v13;

    v15 = +[UIColor clearColor];
    [(UIImageView *)v8->_imageView setBackgroundColor:v15];

    [(AcSearchResultTableViewCell *)v8 iconSize];
    v17 = v16;
    [(UIImageView *)v8->_imageView setClipsToBounds:1];
    [(UIImageView *)v8->_imageView setMinimumLayoutSize:v17, v17];
    [(UIImageView *)v8->_imageView setMaximumLayoutSize:v17, v17];
    [(UIImageView *)v8->_imageView setAccessibilityIdentifier:@"ImageView"];
    if (!v8->super._accessibilityEnabled)
    {
      [(NUIContainerStackView *)v8->super._containerStackView insertArrangedSubview:v8->_imageView atIndex:0];
    }

    if ([identifierCopy containsString:@"ChildItems"])
    {
      height = [[_SearchResultChildItemGridView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
      childItemGrid = v8->_childItemGrid;
      v8->_childItemGrid = height;

      [objc_opt_class() childItemRowSpacing];
      [(_SearchResultChildItemGridView *)v8->_childItemGrid setRowSpacing:?];
      [(_SearchResultChildItemGridView *)v8->_childItemGrid setColumnSpacing:10.0];
      [(_SearchResultChildItemGridView *)v8->_childItemGrid setHorizontalDistribution:1];
      [(_SearchResultChildItemGridView *)v8->_childItemGrid setVerticalDistribution:1];
      [(_SearchResultChildItemGridView *)v8->_childItemGrid setHorizontalAlignment:0];
      [(_SearchResultChildItemGridView *)v8->_childItemGrid setVerticalAlignment:0];
      [(AcSearchResultTableViewCell *)v8 updateChildItemGridAlignmentRectInset];
      [(NUIContainerStackView *)v8->super._rootStackView addArrangedSubview:v8->_childItemGrid];
      [(NUIContainerStackView *)v8->super._rootStackView setAlignment:0 forView:v8->_childItemGrid inAxis:0];
      [(_SearchResultTableViewCell *)v8 leadingMargin];
      v21 = v20;
      [(AcSearchResultTableViewCell *)v8 trailingMargin];
      [(NUIContainerStackView *)v8->super._containerStackView setLayoutMargins:15.0, v21, 10.0, v22];
      v23 = +[NSNotificationCenter defaultCenter];
      [v23 addObserver:v8 selector:"contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
    }

    if (sub_10000FA08(v8) == 5)
    {
      [(AcSearchResultTableViewCell *)v8 _maps_setTableViewCellBackgroundConfiguration];
      [(AcSearchResultTableViewCell *)v8 _setHighlightedLabelColors];
      [(UIImageView *)v8->_imageView setCustomAlignmentRectInsets:-3.0, 0.0, 0.0, 0.0];
    }
  }

  return v8;
}

- (double)trailingMargin
{
  v2 = sub_10000FA08(self);
  result = 10.0;
  if (v2 == 5)
  {
    return 16.0;
  }

  return result;
}

- (double)iconSize
{
  v2 = sub_10000FA08(self);
  result = 30.0;
  if (v2 == 5)
  {
    return 24.0;
  }

  return result;
}

- (double)estimatedChildItemsStackViewWidthWithContentViewWidth:(double)width
{
  v5 = 0.0;
  if (!self->super._accessibilityEnabled)
  {
    [(AcSearchResultTableViewCell *)self iconSize];
    v7 = v6;
    [objc_opt_class() childItemRowSpacing];
    v5 = v8 + v7;
  }

  [(_SearchResultTableViewCell *)self leadingMargin];
  v10 = v9;
  [(AcSearchResultTableViewCell *)self trailingMargin];
  return width - (v5 + v10 + v11);
}

+ (id)identifierWithChildItemsCount:(unint64_t)count
{
  v4 = [NSMutableString alloc];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 initWithString:v6];

  if (count)
  {
    [v7 appendString:@"ChildItems"];
  }

  v8 = [v7 copy];

  return v8;
}

@end