@interface MKPlaceActionItemAppearanceProvider
- (BOOL)isDestructiveForDisplayStyle:(unint64_t)a3;
- (MKPlaceActionItemAppearanceProvider)initWithActionType:(unint64_t)a3 dataProvider:(id)a4;
- (id)_compactTitle;
- (id)_longTitle;
- (id)_menuSymbol;
- (id)_tableCellSymbol;
- (id)bestSymbolNameForDisplayStyle:(unint64_t)a3;
- (id)bestTitleForDisplayStyle:(unint64_t)a3;
@end

@implementation MKPlaceActionItemAppearanceProvider

- (BOOL)isDestructiveForDisplayStyle:(unint64_t)a3
{
  if (a3 == 1)
  {
    return [(MKPlaceActionItemAppearanceProvider *)self _isDestructiveForMenu];
  }

  if (a3)
  {
    return 0;
  }

  return [(MKPlaceActionItemAppearanceProvider *)self _isDestructiveForTableCell];
}

- (id)_compactTitle
{
  v3 = 0;
  actionType = self->_actionType;
  if (actionType <= 19)
  {
    if (actionType <= 12)
    {
      if (actionType == 10)
      {
        v5 = @"Call";
      }

      else
      {
        if (actionType != 11)
        {
          goto LABEL_25;
        }

        v5 = @"Message";
      }
    }

    else
    {
      switch(actionType)
      {
        case 13:
          v5 = @"Website";
          break;
        case 16:
          v5 = @"Share_Action_Row";
          break;
        case 17:
          v5 = @"Flyover [Placecard]";
          break;
        default:
          goto LABEL_25;
      }
    }

    goto LABEL_24;
  }

  if (actionType <= 27)
  {
    if (actionType == 20)
    {
      v5 = @"Stores_Action_Row";
    }

    else
    {
      if (actionType != 21)
      {
        goto LABEL_25;
      }

      v5 = @"Save_Collection_Actions_Row";
    }

    goto LABEL_24;
  }

  switch(actionType)
  {
    case 28:
      v5 = @"Mark_Location_Action_Row";
LABEL_24:
      v3 = _MKLocalizedStringFromThisBundle(v5);
      break;
    case 31:
      v5 = @"Claim [Placecard Action Row]";
      goto LABEL_24;
    case 34:
      v3 = _MKLocalizedStringFromThisBundleFromTable(@"Download_Map_Action_Row_Short", @"Offline");
      break;
  }

LABEL_25:

  return v3;
}

- (id)_menuSymbol
{
  IsMacCatalyst = MapKitIdiomIsMacCatalyst();
  v4 = 0;
  switch(self->_actionType)
  {
    case 1uLL:
      v4 = @"exclamationmark.bubble";
      break;
    case 2uLL:
      v4 = @"pin.point.of.interest.badge.plus";
      break;
    case 4uLL:
      v4 = @"person.crop.circle";
      break;
    case 5uLL:
    case 0x2CuLL:
      v4 = @"star";
      break;
    case 6uLL:
      v4 = @"star.slash";
      break;
    case 9uLL:
      v4 = @"camera";
      break;
    case 0xAuLL:
      v4 = @"phone";
      break;
    case 0xBuLL:
      v4 = @"message";
      break;
    case 0xDuLL:
      v4 = @"safari";
      break;
    case 0x10uLL:
      v4 = @"square.and.arrow.up";
      break;
    case 0x11uLL:
      v4 = @"buildings.3d";
      break;
    case 0x12uLL:
      v4 = @"person.crop.circle.badge.plus";
      break;
    case 0x13uLL:
    case 0x26uLL:
      v4 = @"trash";
      break;
    case 0x14uLL:
    case 0x1CuLL:
      v4 = @"mappin";
      break;
    case 0x15uLL:
      WeakRetained = objc_loadWeakRetained(&self->_dataProvider);
      v6 = [WeakRetained placeInCollectionsForAppearance:self];

      v4 = @"plus.square";
      if (v6)
      {
        v7 = @"checkmark.square";
        if (!IsMacCatalyst)
        {
          v7 = @"plus.square";
        }

        v4 = v7;
      }

      break;
    case 0x16uLL:
      v4 = @"pin";
      break;
    case 0x17uLL:
      v4 = @"pin.slash";
      break;
    case 0x18uLL:
    case 0x1BuLL:
      v4 = @"mappin.and.ellipse";
      break;
    case 0x19uLL:
    case 0x28uLL:
      v4 = @"pencil";
      break;
    case 0x1DuLL:
      v4 = @"document.on.document";
      break;
    case 0x1FuLL:
      v4 = @"checkmark.seal";
      break;
    case 0x22uLL:
      v4 = @"arrow.down.circle";
      break;
    case 0x25uLL:
      v4 = @"plus";
      break;
    case 0x27uLL:
      v4 = @"note.text.badge.plus";
      break;
    case 0x29uLL:
      v4 = @"location.bottomleft.forward.to.point.topright.scurvepath.dashed";
      break;
    case 0x2AuLL:
      v4 = @"hand.thumbsup";
      break;
    case 0x2BuLL:
      v4 = @"hand.thumbsup.fill";
      break;
    case 0x2DuLL:
      v4 = @"star.fill";
      break;
    case 0x2EuLL:
      v4 = @"location";
      break;
    default:
      break;
  }

  return v4;
}

- (id)_tableCellSymbol
{
  result = 0;
  switch(self->_actionType)
  {
    case 1uLL:
      result = @"exclamationmark.bubble.fill";
      break;
    case 2uLL:
      result = @"pin.point.of.interest.badge.plus.fill";
      break;
    case 4uLL:
      result = @"person.crop.circle";
      break;
    case 5uLL:
    case 0x26uLL:
    case 0x2DuLL:
      result = @"star.fill";
      break;
    case 6uLL:
      result = @"star.slash.fill";
      break;
    case 9uLL:
      result = @"camera.fill";
      break;
    case 0xAuLL:
      result = @"phone.fill";
      break;
    case 0xBuLL:
      result = @"message.fill";
      break;
    case 0xDuLL:
      result = @"safari.fill";
      break;
    case 0x10uLL:
      result = @"square.and.arrow.up";
      break;
    case 0x11uLL:
      result = @"buildings.3d";
      break;
    case 0x12uLL:
      result = @"person.crop.circle.badge.plus";
      break;
    case 0x13uLL:
      result = @"trash.fill";
      break;
    case 0x14uLL:
    case 0x1CuLL:
      result = @"mappin";
      break;
    case 0x15uLL:
      WeakRetained = objc_loadWeakRetained(&self->_dataProvider);
      v5 = [WeakRetained placeInCollectionsForAppearance:self];

      if (v5)
      {
        result = @"checkmark.square.fill";
      }

      else
      {
        result = @"plus.square.fill";
      }

      break;
    case 0x16uLL:
      result = @"pin.fill";
      break;
    case 0x17uLL:
      result = @"pin.slash.fill";
      break;
    case 0x18uLL:
      result = @"mappin.and.ellipse";
      break;
    case 0x19uLL:
      result = @"pencil";
      break;
    case 0x1FuLL:
      result = @"checkmark.seal.fill";
      break;
    case 0x22uLL:
      result = @"arrow.down.circle";
      break;
    case 0x25uLL:
    case 0x2CuLL:
      result = @"star";
      break;
    case 0x2AuLL:
      result = @"hand.thumbsup";
      break;
    case 0x2BuLL:
      result = @"hand.thumbsup.fill";
      break;
    case 0x2EuLL:
      result = @"location.fill";
      break;
    default:
      return result;
  }

  return result;
}

- (id)bestSymbolNameForDisplayStyle:(unint64_t)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v3 = [(MKPlaceActionItemAppearanceProvider *)self _menuSymbol];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = [(MKPlaceActionItemAppearanceProvider *)self _tableCellSymbol];
  }

  return v3;
}

- (id)_longTitle
{
  v2 = 0;
  switch(self->_actionType)
  {
    case 1uLL:
      v4 = @"Report an Issue [Button Title]";
      goto LABEL_42;
    case 2uLL:
      if (GEOConfigGetBOOL())
      {
        v4 = @"[Report an Issue] Report Something Missing";
      }

      else
      {
        v4 = @"[Report an Issue] Add to Maps";
      }

      goto LABEL_42;
    case 4uLL:
      v4 = @"Create New Contact";
      goto LABEL_42;
    case 5uLL:
      v4 = @"Save to [Footer action]";
      goto LABEL_42;
    case 6uLL:
      v4 = @"Remove from Guide [Footer action]";
      goto LABEL_42;
    case 9uLL:
      v4 = @"Add Photos";
      goto LABEL_42;
    case 0xAuLL:
      v4 = @"Call";
      goto LABEL_42;
    case 0xBuLL:
      v4 = @"Message";
      goto LABEL_42;
    case 0xDuLL:
      v4 = @"Website";
      goto LABEL_42;
    case 0x10uLL:
      v4 = @"Share_Action_Row";
      goto LABEL_42;
    case 0x11uLL:
      v4 = @"Flyover [Placecard]";
      goto LABEL_42;
    case 0x12uLL:
      v4 = @"Add to Existing Contact";
      goto LABEL_42;
    case 0x13uLL:
      v4 = @"Remove";
      goto LABEL_42;
    case 0x14uLL:
      v4 = @"Stores_Action_Row";
      goto LABEL_42;
    case 0x15uLL:
      v4 = @"Add to Guides [Footer action]";
      goto LABEL_42;
    case 0x16uLL:
      v4 = @"Pin_Actions_Row";
      goto LABEL_42;
    case 0x17uLL:
      v4 = @"UnPin_Actions_Row";
      goto LABEL_42;
    case 0x18uLL:
      v4 = @"Refine Location";
      goto LABEL_42;
    case 0x19uLL:
      v4 = @"Change Address";
      goto LABEL_42;
    case 0x1BuLL:
      v4 = @"Copy Coordinates";
      goto LABEL_42;
    case 0x1CuLL:
      v4 = @"Mark_Location_Action_Row";
      goto LABEL_42;
    case 0x1DuLL:
      v4 = @"Copy Link";
      goto LABEL_42;
    case 0x1FuLL:
      v4 = @"Claim This Place [Placecard]";
      goto LABEL_42;
    case 0x22uLL:
      v5 = _MKLocalizedStringFromThisBundleFromTable(@"Download_Map_Action_Row_Long", @"Offline");
      goto LABEL_43;
    case 0x25uLL:
      v4 = @"Add to Places [Placecard]";
      goto LABEL_42;
    case 0x26uLL:
      v4 = @"Delete from Places [Placecard]";
      goto LABEL_42;
    case 0x27uLL:
      v4 = @"Add a Note [Placecard]";
      goto LABEL_42;
    case 0x28uLL:
      v4 = @"Edit Note [Placecard]";
      goto LABEL_42;
    case 0x29uLL:
      v4 = @"Create a Custom Route [Placecard]";
      goto LABEL_42;
    case 0x2AuLL:
    case 0x2BuLL:
      v4 = @"Rate [Placecard]";
      goto LABEL_42;
    case 0x2CuLL:
      v4 = @"Add to Favorites Guide [Placecard]";
      goto LABEL_42;
    case 0x2DuLL:
      v4 = @"Remote from Favorites Guide [Placecard]";
LABEL_42:
      v5 = _MKLocalizedStringFromThisBundle(v4);
LABEL_43:
      v2 = v5;
      break;
    case 0x2EuLL:
      v2 = @"Simulate Location";
      break;
    case 0x2FuLL:
      v6 = MEMORY[0x1E696AEC0];
      WeakRetained = objc_loadWeakRetained(&self->_dataProvider);
      v2 = [v6 stringWithFormat:@"Identifier: %llu", objc_msgSend(WeakRetained, "placeMUIDForAppearance:", self)];
      goto LABEL_39;
    case 0x30uLL:
      v8 = MEMORY[0x1E696AEC0];
      WeakRetained = objc_loadWeakRetained(&self->_dataProvider);
      v9 = [WeakRetained placeIDForAppearance:self];
      v2 = [v8 stringWithFormat:@"PlaceID: %@", v9];

LABEL_39:
      break;
    case 0x31uLL:
      v2 = @"Save MapItem";
      break;
    case 0x32uLL:
      v2 = @"Clear MapItem";
      break;
    default:
      break;
  }

  return v2;
}

- (id)bestTitleForDisplayStyle:(unint64_t)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = [(MKPlaceActionItemAppearanceProvider *)self _compactTitle];
      if ([v4 length])
      {
        v5 = v4;
      }

      else
      {
        v5 = [(MKPlaceActionItemAppearanceProvider *)self _longTitle];
      }

      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = [(MKPlaceActionItemAppearanceProvider *)self _longTitle];
  }

  return v6;
}

- (MKPlaceActionItemAppearanceProvider)initWithActionType:(unint64_t)a3 dataProvider:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = MKPlaceActionItemAppearanceProvider;
  v7 = [(MKPlaceActionItemAppearanceProvider *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_actionType = a3;
    objc_storeWeak(&v7->_dataProvider, v6);
  }

  return v8;
}

@end