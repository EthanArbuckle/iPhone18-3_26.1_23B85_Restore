@interface AcSearchResultTableViewCell
+ (id)identifierWithChildItemsCount:(unint64_t)a3;
- (AcSearchResultTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (AcSearchResultTableViewCellDelegate)delegate;
- (CGSize)sizeThatFits:(CGSize)a3;
- (double)estimatedChildItemsStackViewWidthWithContentViewWidth:(double)a3;
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
- (void)addTransitLabelWithFirstPartDetailString:(id)a3 secondPartDetailString:(id)a4;
- (void)didTapChildItemButtonForChildItem:(id)a3;
- (void)didUpdateMapItem;
- (void)didUpdatePublisherResult;
- (void)loadPhoto;
- (void)prepareForReuse;
- (void)removeTransitLabel;
- (void)setAccessoryViewType:(int64_t)a3;
- (void)setChildItems:(id)a3 viewModel:(id)a4;
- (void)setObject:(id)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)setupPlaceContextContent:(id)a3;
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

- (void)didTapChildItemButtonForChildItem:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    v5 = [(AcSearchResultTableViewCell *)self delegate];
    v6 = objc_opt_respondsToSelector();

    v4 = v10;
    if (v6)
    {
      v7 = [(NSArray *)self->_childItems indexOfObject:v10];
      v4 = v10;
      if (v7 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = [NSIndexPath indexPathForRow:v7 inSection:0];
        v9 = [(AcSearchResultTableViewCell *)self delegate];
        [v9 didTapItemInChildItems:self->_childItems atIndexPath:v8 forCell:self];

        v4 = v10;
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

- (void)addTransitLabelWithFirstPartDetailString:(id)a3 secondPartDetailString:(id)a4
{
  v25 = a3;
  v6 = a4;
  v7 = [(AcSearchResultTableViewCell *)self wantsTwoLineLayout];
  transitInfoLabel = self->super._transitInfoLabel;
  if (v7)
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

    v13 = v25;
    if (!v25)
    {
      v13 = [(AcSearchResultTableViewCell *)self attributedFirstPartDetailString];
    }

    v25 = v13;
    if ([v13 length])
    {
      goto LABEL_10;
    }

    if (!v6)
    {
      v6 = [(AcSearchResultTableViewCell *)self attributedSecondPartDetailString];
    }

    if ([v6 length])
    {
LABEL_10:
      transitDelimiterLabel = self->super._transitDelimiterLabel;
      if (!transitDelimiterLabel)
      {
        v15 = [(_SearchResultTableViewCell *)self _delimiterLabel];
        v16 = self->super._transitDelimiterLabel;
        self->super._transitDelimiterLabel = v15;

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

- (void)setChildItems:(id)a3 viewModel:(id)a4
{
  v24 = a4;
  v7 = [a3 copy];
  childItems = self->_childItems;
  self->_childItems = v7;

  v9 = self->_childItemsViewModel;
  objc_storeStrong(&self->_childItemsViewModel, a4);
  if (![(ChildItemsViewModel *)self->_childItemsViewModel isEqual:v9])
  {
    childItemGrid = self->_childItemGrid;
    if (childItemGrid)
    {
      v23 = v9;
      [(_SearchResultChildItemGridView *)childItemGrid removeAllArrangedSubviews];
      v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v24 numberOfColumns] * objc_msgSend(v24, "numberOfRows"));
      if ([v24 numberOfRows])
      {
        v12 = 0;
        v13 = 0;
        do
        {
          v14 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v24 numberOfColumns]);
          if ([v24 numberOfColumns])
          {
            v15 = 0;
            v16 = v24;
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

              v19 = ++v15 >= [v24 numberOfColumns];
              v16 = v24;
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

        while (v12 < [v24 numberOfRows]);
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
  v6 = [(AcSearchResultTableViewCell *)self childItems];
  if ([(ChildItemButtonProtocol *)self->_childItemButtons count])
  {
    v3 = 0;
    do
    {
      v4 = [(ChildItemButtonProtocol *)self->_childItemButtons objectAtIndexedSubscript:v3];
      [v4 setDelegate:self];
      v5 = [v6 objectAtIndexedSubscript:v3];
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
  v5 = [(_SearchResultTableViewCell *)self mapItem];
  v6 = self->_completion;
  [(AcSearchResultTableViewCell *)self iconSize];
  v8 = v7;
  v9 = [(_SearchResultTableViewCell *)self publisherResult];

  if (v9)
  {
    v10 = +[MapsUIImageCache sharedCache];
    v11 = [(_SearchResultTableViewCell *)self publisherResult];
    v12 = [v11 publisher];
    v13 = [v12 publisherAttribution];
    v14 = [v13 iconIdentifier];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100BBD1C4;
    v21[3] = &unk_10165FEF8;
    v22 = v4;
    [v10 getImageForPublisherWithIconIdentifier:v14 completion:v21];

    v15 = 5.0;
    v16 = v22;
  }

  else
  {
    v15 = v8 * 0.5;
    if (v6 && (![(MKLocalSearchCompletion *)v6 _type]|| [(MKLocalSearchCompletion *)v6 _type]== 3))
    {
      v16 = +[MapsUIImageCache sharedCache];
      v17 = [v16 searchImage];
      [(UIImageView *)self->_imageView setImage:v17];
    }

    else
    {
      v18 = +[MapsUIImageCache sharedCache];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100BBD248;
      v19[3] = &unk_10165FEF8;
      v20 = v4;
      [v18 getImageForMapItem:v5 completion:v19];

      v16 = v20;
    }
  }

  [(UIImageView *)self->_imageView _setContinuousCornerRadius:v15];
}

- (void)setupPlaceContextContent:(id)a3
{
  labelStackView = self->super._labelStackView;
  v4.receiver = self;
  v4.super_class = AcSearchResultTableViewCell;
  [(_SearchResultTableViewCell *)&v4 setupPlaceContextContent:a3 inStackView:labelStackView];
}

- (void)setAccessoryViewType:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = AcSearchResultTableViewCell;
  [(_SearchResultTableViewCell *)&v4 setAccessoryViewType:a3];
  [(AcSearchResultTableViewCell *)self _updateAccessoryTintColor];
}

- (void)_updateAccessoryTintColor
{
  if (sub_10000FA08(self) == 5 && [(_SearchResultTableViewCell *)self accessoryViewType]== 1)
  {
    if ([(AcSearchResultTableViewCell *)self isSelected])
    {
      v6 = +[UIColor whiteColor];
      v3 = [(AcSearchResultTableViewCell *)self accessoryView];
      [v3 setTintColor:v6];
    }

    else
    {
      v6 = [(AcSearchResultTableViewCell *)self accessoryView];
      v3 = [v6 theme];
      v4 = [v3 keyColor];
      v5 = [(AcSearchResultTableViewCell *)self accessoryView];
      [v5 setTintColor:v4];
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
    v3 = [(UILabel *)self->super._secondLabel text];
    if ([v3 length])
    {
    }

    else
    {
      v4 = [(UILabel *)self->super._thirdLabel isHidden];

      if ((v4 & 1) == 0)
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
  if (![(AcSearchResultTableViewCell *)self isCompletionTypeAddress]|| (v10 = 0.0, v11 = 0.0, ([(MKLocalSearchCompletion *)self->_completion getCoordinate:&v10]& 1) == 0) || (v3 = v10, v4 = v11, [(_SearchResultTableViewCell *)self currentLocation], v5 = objc_claimAutoreleasedReturnValue(), [(_SearchResultTableViewCell *)self mapItem], v6 = objc_claimAutoreleasedReturnValue(), [NSString distanceStringFromLocation:v5 toCoordinate:v6 withMapItem:&self->super._showDistance showsDistance:1 onlyUseThreshold:0 maximumDistance:1 useShortThreshold:v3, v4], v7 = objc_claimAutoreleasedReturnValue(), v6, v5, !v7))
  {
    v9.receiver = self;
    v9.super_class = AcSearchResultTableViewCell;
    v7 = [(_SearchResultTableViewCell *)&v9 distanceString];
  }

  return v7;
}

- (id)attributedSubtitleString
{
  if ([(AcSearchResultTableViewCell *)self isCompletionTypeAddress]|| ([(_SearchResultTableViewCell *)self publisherResult], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = AcSearchResultTableViewCell;
    v4 = [(_SearchResultTableViewCell *)&v6 attributedSubtitleString];
  }

  return v4;
}

- (id)delimiterColor
{
  if ([(AcSearchResultTableViewCell *)self wantsTwoLineLayout])
  {
    v3 = UIColor;
  }

  else
  {
    v3 = self;
  }

  v4 = [(_SearchResultTableViewCell *)v3 secondaryLabelColor];

  return v4;
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
      v6 = [(_SearchResultTableViewCell *)self hoursBuilderForSearchCell];
      v7 = [v6 localizedOpenState];
    }

    else
    {
      v7 = 0;
    }

    v8 = [NSAttributedString alloc];
    if (v7)
    {
      v9 = v7;
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
  v4 = [(AcSearchResultTableViewCell *)self autocompleteClientSourceString];
  if ([v4 length])
  {
    [v3 addObject:v4];
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
  v6 = [(_SearchResultTableViewCell *)self publisherResult];

  if (v6)
  {
    v7 = [(_SearchResultTableViewCell *)self publisherResult];
    v8 = [v7 publisher];
    v9 = [v8 publisherAttribution];
    v10 = [v9 subtitle];

    if ([v10 length])
    {
      [v3 addObject:v10];
    }
  }

  else
  {
    v10 = [(AcSearchResultTableViewCell *)self distanceString];
    if ([v10 length])
    {
      [v3 addObject:v10];
    }

    v11 = [(_SearchResultTableViewCell *)self mapItem];
    v12 = [(_SearchResultTableViewCell *)self shortenedAddressStringForMapItem:v11];

    if ([(AcSearchResultTableViewCell *)self isCompletionTypeAddress])
    {
      v13 = [(MKLocalSearchCompletion *)self->_completion subtitle];

      v14 = +[UIColor secondaryLabelColor];

      v12 = v13;
      v5 = v14;
    }

    if ([v12 length])
    {
      [v3 addObject:v12];
    }
  }

  v15 = +[UIApplication sharedApplication];
  v16 = [v15 userInterfaceLayoutDirection];

  if (v16 == 1)
  {
    v17 = [v3 reverseObjectEnumerator];
    v18 = [v17 allObjects];
    v19 = [v18 mutableCopy];

    v3 = v19;
  }

  v20 = [objc_opt_class() _delimiterString];
  v21 = [v3 componentsJoinedByString:v20];

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
  v3 = [(AcSearchResultTableViewCell *)self titleRegularFont];
  v4 = [(AcSearchResultTableViewCell *)self titleHighlightFont];
  completion = self->_completion;
  if (completion)
  {
    v6 = [(MKLocalSearchCompletion *)completion title];
    v7 = [(MKLocalSearchCompletion *)self->_completion titleHighlightRanges];
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
      v19 = [NSAttributedString attributedStringWithText:v6 highlightRanges:v7 font:v3 highlightedFont:v4 highlightedTextColor:v17];
    }

    else
    {
      if (![(AcSearchResultTableViewCell *)self shouldEnableGrayscaleHighlighting])
      {
        v9 = [NSAttributedString attributedStringWithText:v6 boldInRange:v7 font:v3 bold:v4];
LABEL_19:

        goto LABEL_22;
      }

      v17 = +[UIColor labelColor];
      v18 = +[UIColor secondaryLabelColor];
      v19 = [NSAttributedString attributedStringWithText:v6 highlightRanges:v7 font:v4 highlightedFont:v4 highlightedTextColor:v17 unhighlightedTextColor:v18];
    }

    v9 = v19;

    goto LABEL_19;
  }

  if (sub_10000FA08(self) == 5)
  {
    v8 = +[UIColor labelColor];
    [(UILabel *)self->super._titleLabel setTextColor:v8];
  }

  v22.receiver = self;
  v22.super_class = AcSearchResultTableViewCell;
  v9 = [(_SearchResultTableViewCell *)&v22 attributedTitleString];
  v10 = [(AcSearchResultTableViewCell *)self searchQuery];

  if (v10)
  {
    v11 = [v9 string];
    v12 = [(AcSearchResultTableViewCell *)self searchQuery];
    v13 = [v11 _maps_prefixMatchesForSearchString:v12];

    LODWORD(v12) = [(AcSearchResultTableViewCell *)self shouldEnableGrayscaleHighlighting];
    v14 = [v9 string];
    if (v12)
    {
      v15 = +[UIColor labelColor];
      v16 = +[UIColor secondaryLabelColor];
      [NSAttributedString attributedStringWithText:v14 highlightRanges:v13 font:v4 highlightedFont:v4 highlightedTextColor:v15 unhighlightedTextColor:v16];
    }

    else
    {
      v15 = [(AcSearchResultTableViewCell *)self titleRegularFont];
      v16 = [(AcSearchResultTableViewCell *)self titleHighlightFont];
      [NSAttributedString attributedStringWithText:v14 boldInRange:v13 font:v15 bold:v16];
    }
    v20 = ;

    v9 = v20;
  }

LABEL_22:

  return v9;
}

- (void)setObject:(id)a3
{
  v5 = a3;
  [(_SearchResultTableViewCell *)self setPublisherResult:0];
  objc_storeStrong(&self->_object, a3);
  v6 = v5;
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
      v20 = v15;
    }

    else
    {
      v20 = 0;
    }

    v21 = [v20 historyEntry];
    v22 = [v21 geoMapItem];
    v23 = [MKMapItem _itemWithGeoMapItem:v22];

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

    v20 = [v27 mapItem];

    goto LABEL_23;
  }

  objc_storeStrong(&self->_completion, a3);
  v24 = [(MKLocalSearchCompletion *)self->_completion publisherResult];

  v25 = self->_completion;
  if (!v24)
  {
    v20 = [(MKLocalSearchCompletion *)v25 mapItem];
LABEL_23:
    [(_SearchResultTableViewCell *)self setMapItem:v20];
    goto LABEL_24;
  }

  v20 = [(MKLocalSearchCompletion *)v25 publisherResult];
  [(_SearchResultTableViewCell *)self setPublisherResult:v20];
LABEL_24:

LABEL_25:
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(AcSearchResultTableViewCell *)self reuseIdentifier];
  if (([v6 containsString:@"ChildItems"] & 1) != 0 || self->super._accessibilityEnabled)
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

  v11 = [(AcSearchResultTableViewCell *)self autocompleteCellType];
  v12 = objc_opt_class();
  if (v11 == 3)
  {
    [v12 estimatedTwoLinesCellHeight];
  }

  else
  {
    [v12 estimatedCellHeight];
  }

  v14 = v13;
  v15 = [(_SearchResultTableViewCell *)self placeContextViewModel];

  if (v15)
  {
    v16 = [(UILabel *)self->super._contextualInformationLabel font];
    v17 = [(UILabel *)self->super._contextualInformationLabel numberOfLines];
    v18 = [(AcSearchResultTableViewCell *)self traitCollection];
    [v18 displayScale];
    [UILabel _maps_maximumHeightWithFont:v16 numberOfLines:v17 displayScale:?];
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

  v3 = [(_SearchResultTableViewCell *)self numberOfLines];
  imageView = self->_imageView;
  if (v3 == 1)
  {
    v5 = -3.0;
  }

  else
  {
    v5 = 0.0;
  }

  if (v3 == 1)
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

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(AcSearchResultTableViewCell *)self isSelected];
  v8.receiver = self;
  v8.super_class = AcSearchResultTableViewCell;
  [(AcSearchResultTableViewCell *)&v8 setSelected:v5 animated:v4];
  if (v7 != v5)
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
  v3 = [(AcSearchResultTableViewCell *)self _highlightedLabelColor];
  [(UILabel *)self->super._titleLabel setHighlightedTextColor:v3];
  [(UILabel *)self->super._secondLabel setHighlightedTextColor:v3];
  [(UILabel *)self->super._thirdLabel setHighlightedTextColor:v3];
  [(UILabel *)self->super._secondPartLabel setHighlightedTextColor:v3];
  [(UILabel *)self->super._secondPartDelimiterLabel setHighlightedTextColor:v3];
  [(UILabel *)self->super._transitDelimiterLabel setHighlightedTextColor:v3];
  [(UILabel *)self->super._contextualInformationLabel setHighlightedTextColor:v3];
}

- (AcSearchResultTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6 = a4;
  v25.receiver = self;
  v25.super_class = AcSearchResultTableViewCell;
  v7 = [(_SearchResultTableViewCell *)&v25 initWithStyle:a3 reuseIdentifier:v6];
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

    if ([v6 containsString:@"ChildItems"])
    {
      v18 = [[_SearchResultChildItemGridView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
      childItemGrid = v8->_childItemGrid;
      v8->_childItemGrid = v18;

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

- (double)estimatedChildItemsStackViewWidthWithContentViewWidth:(double)a3
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
  return a3 - (v5 + v10 + v11);
}

+ (id)identifierWithChildItemsCount:(unint64_t)a3
{
  v4 = [NSMutableString alloc];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 initWithString:v6];

  if (a3)
  {
    [v7 appendString:@"ChildItems"];
  }

  v8 = [v7 copy];

  return v8;
}

@end