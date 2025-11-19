@interface MPModelLibraryPlaylistEditChangeDetails
- (id)_descriptionForType:(int64_t)a3;
- (id)_initWithType:(int64_t)a3 itemIdentifier:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MPModelLibraryPlaylistEditChangeDetails

- (id)_descriptionForType:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E767BF58[a3 - 1];
  }
}

- (id)_initWithType:(int64_t)a3 itemIdentifier:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MPModelLibraryPlaylistEditChangeDetails;
  v8 = [(MPModelLibraryPlaylistEditChangeDetails *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_itemIdentifier, a4);
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (v4)
  {
    *(v4 + 16) = self->_type;
    objc_storeStrong((v4 + 32), self->_itemIdentifier);
    objc_storeStrong((v5 + 24), self->_item);
    objc_storeStrong((v5 + 32), self->_itemIdentifier);
    objc_storeStrong((v5 + 40), self->_itemPositionIdentifier);
    objc_storeStrong((v5 + 48), self->_referenceItem);
    objc_storeStrong((v5 + 56), self->_referenceItemIdentifier);
    objc_storeStrong((v5 + 64), self->_referenceItemPositionIdentifier);
    *(v5 + 8) = self->_isLastItem;
    objc_storeStrong((v5 + 72), self->_playlistName);
    objc_storeStrong((v5 + 80), self->_previousPositionIdentifier);
    objc_storeStrong((v5 + 88), self->_previousReferenceIdentifier);
    objc_storeStrong((v5 + 96), self->_previousPlaylistName);
    objc_storeStrong((v5 + 104), self->_changesApplied);
  }

  return v5;
}

- (id)description
{
  v3 = 0;
  type = self->_type;
  if (type <= 2)
  {
    switch(type)
    {
      case 0:
        v3 = @"Unknown Type";
        goto LABEL_19;
      case 1:
        v7 = MEMORY[0x1E696AEC0];
        v13 = objc_opt_class();
        v25 = *&self->_item;
        itemPositionIdentifier = self->_itemPositionIdentifier;
        v15 = objc_opt_class();
        *&v22[16] = self->_referenceItemPositionIdentifier;
        *v22 = *&self->_referenceItem;
        v20 = itemPositionIdentifier;
        v21 = v15;
        v19 = v25;
        v18 = v13;
        v6 = @"ADD <%@ %p [%@ / %@]> AFTER <%@ %p [%@ / %@]>";
        break;
      case 2:
        v7 = MEMORY[0x1E696AEC0];
        v8 = objc_opt_class();
        v19 = *&self->_item;
        v18 = v8;
        v6 = @"REMOVE <%@ %p> %@";
        break;
      default:
        goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (type <= 4)
  {
    if (type != 3)
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = @"REMOVE ALL";
      goto LABEL_17;
    }

    v7 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v24 = *&self->_item;
    previousPositionIdentifier = self->_previousPositionIdentifier;
    v11 = self->_itemPositionIdentifier;
    v12 = objc_opt_class();
    referenceItemPositionIdentifier = self->_referenceItemPositionIdentifier;
    *&v22[8] = *&self->_referenceItem;
    v21 = v11;
    *v22 = v12;
    v20 = previousPositionIdentifier;
    v19 = v24;
    v6 = @"MOVE <%@ %p [%@ / %@ --> %@]> AFTER <%@ %p [%@ / %@]>";
    v18 = v9;
LABEL_16:
    v5 = v7;
    goto LABEL_17;
  }

  if (type != 5)
  {
    if (type != 6)
    {
      goto LABEL_19;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"PROPERTY (name='%@')", self->_playlistName, v19, v20, v21, *v22, *&v22[8], *&v22[16], referenceItemPositionIdentifier];
    goto LABEL_18;
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = @"UNDO REMOVE ALL";
LABEL_17:
  [v5 stringWithFormat:v6, v18, v19, v20, v21, *v22, *&v22[8], *&v22[16], referenceItemPositionIdentifier];
  v3 = LABEL_18:;
LABEL_19:
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@ %p: [%@]>", objc_opt_class(), self, v3];

  return v16;
}

@end