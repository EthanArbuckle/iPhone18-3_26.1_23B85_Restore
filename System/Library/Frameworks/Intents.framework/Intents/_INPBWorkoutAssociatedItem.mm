@interface _INPBWorkoutAssociatedItem
- (BOOL)isEqual:(id)equal;
- (_INPBWorkoutAssociatedItem)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsContentRating:(id)rating;
- (int)StringAsItemLabel:(id)label;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setContentRating:(int)rating;
- (void)setHasItemLabel:(BOOL)label;
- (void)setItemID:(id)d;
- (void)setItemLabel:(int)label;
- (void)writeTo:(id)to;
@end

@implementation _INPBWorkoutAssociatedItem

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBWorkoutAssociatedItem *)self hasContentRating])
  {
    contentRating = [(_INPBWorkoutAssociatedItem *)self contentRating];
    if (contentRating)
    {
      if (contentRating == 1)
      {
        v5 = @"explicit";
      }

      else
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", contentRating];
      }
    }

    else
    {
      v5 = @"clean";
    }

    [dictionary setObject:v5 forKeyedSubscript:@"contentRating"];
  }

  if (self->_itemID)
  {
    itemID = [(_INPBWorkoutAssociatedItem *)self itemID];
    v7 = [itemID copy];
    [dictionary setObject:v7 forKeyedSubscript:@"itemID"];
  }

  if ([(_INPBWorkoutAssociatedItem *)self hasItemLabel])
  {
    itemLabel = [(_INPBWorkoutAssociatedItem *)self itemLabel];
    if (itemLabel >= 5)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", itemLabel];
    }

    else
    {
      v9 = off_1E7288738[itemLabel];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"itemLabel"];
  }

  itemName = [(_INPBWorkoutAssociatedItem *)self itemName];
  dictionaryRepresentation = [itemName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"itemName"];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBWorkoutAssociatedItem *)self hasContentRating])
  {
    v3 = 2654435761 * self->_contentRating;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_itemID hash];
  if ([(_INPBWorkoutAssociatedItem *)self hasItemLabel])
  {
    v5 = 2654435761 * self->_itemLabel;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(_INPBDataString *)self->_itemName hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  hasContentRating = [(_INPBWorkoutAssociatedItem *)self hasContentRating];
  if (hasContentRating != [equalCopy hasContentRating])
  {
    goto LABEL_20;
  }

  if ([(_INPBWorkoutAssociatedItem *)self hasContentRating])
  {
    if ([equalCopy hasContentRating])
    {
      contentRating = self->_contentRating;
      if (contentRating != [equalCopy contentRating])
      {
        goto LABEL_20;
      }
    }
  }

  itemID = [(_INPBWorkoutAssociatedItem *)self itemID];
  itemID2 = [equalCopy itemID];
  if ((itemID != 0) == (itemID2 == 0))
  {
    goto LABEL_19;
  }

  itemID3 = [(_INPBWorkoutAssociatedItem *)self itemID];
  if (itemID3)
  {
    v10 = itemID3;
    itemID4 = [(_INPBWorkoutAssociatedItem *)self itemID];
    itemID5 = [equalCopy itemID];
    v13 = [itemID4 isEqual:itemID5];

    if (!v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  hasItemLabel = [(_INPBWorkoutAssociatedItem *)self hasItemLabel];
  if (hasItemLabel != [equalCopy hasItemLabel])
  {
    goto LABEL_20;
  }

  if ([(_INPBWorkoutAssociatedItem *)self hasItemLabel])
  {
    if ([equalCopy hasItemLabel])
    {
      itemLabel = self->_itemLabel;
      if (itemLabel != [equalCopy itemLabel])
      {
        goto LABEL_20;
      }
    }
  }

  itemID = [(_INPBWorkoutAssociatedItem *)self itemName];
  itemID2 = [equalCopy itemName];
  if ((itemID != 0) != (itemID2 == 0))
  {
    itemName = [(_INPBWorkoutAssociatedItem *)self itemName];
    if (!itemName)
    {

LABEL_23:
      v21 = 1;
      goto LABEL_21;
    }

    v17 = itemName;
    itemName2 = [(_INPBWorkoutAssociatedItem *)self itemName];
    itemName3 = [equalCopy itemName];
    v20 = [itemName2 isEqual:itemName3];

    if (v20)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_19:
  }

LABEL_20:
  v21 = 0;
LABEL_21:

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBWorkoutAssociatedItem allocWithZone:](_INPBWorkoutAssociatedItem init];
  if ([(_INPBWorkoutAssociatedItem *)self hasContentRating])
  {
    [(_INPBWorkoutAssociatedItem *)v5 setContentRating:[(_INPBWorkoutAssociatedItem *)self contentRating]];
  }

  v6 = [(NSString *)self->_itemID copyWithZone:zone];
  [(_INPBWorkoutAssociatedItem *)v5 setItemID:v6];

  if ([(_INPBWorkoutAssociatedItem *)self hasItemLabel])
  {
    [(_INPBWorkoutAssociatedItem *)v5 setItemLabel:[(_INPBWorkoutAssociatedItem *)self itemLabel]];
  }

  v7 = [(_INPBDataString *)self->_itemName copyWithZone:zone];
  [(_INPBWorkoutAssociatedItem *)v5 setItemName:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBWorkoutAssociatedItem *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBWorkoutAssociatedItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBWorkoutAssociatedItem *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBWorkoutAssociatedItem *)self hasContentRating])
  {
    contentRating = self->_contentRating;
    PBDataWriterWriteInt32Field();
  }

  itemID = [(_INPBWorkoutAssociatedItem *)self itemID];

  if (itemID)
  {
    itemID = self->_itemID;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBWorkoutAssociatedItem *)self hasItemLabel])
  {
    itemLabel = self->_itemLabel;
    PBDataWriterWriteInt32Field();
  }

  itemName = [(_INPBWorkoutAssociatedItem *)self itemName];

  v9 = toCopy;
  if (itemName)
  {
    itemName2 = [(_INPBWorkoutAssociatedItem *)self itemName];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (int)StringAsItemLabel:(id)label
{
  labelCopy = label;
  if ([labelCopy isEqualToString:@"narrator"])
  {
    v4 = 0;
  }

  else if ([labelCopy isEqualToString:@"playlist"])
  {
    v4 = 1;
  }

  else if ([labelCopy isEqualToString:@"song"])
  {
    v4 = 2;
  }

  else if ([labelCopy isEqualToString:@"trainer"])
  {
    v4 = 3;
  }

  else if ([labelCopy isEqualToString:@"workout"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasItemLabel:(BOOL)label
{
  if (label)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setItemLabel:(int)label
{
  has = self->_has;
  if (label == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_itemLabel = label;
  }
}

- (void)setItemID:(id)d
{
  v4 = [d copy];
  itemID = self->_itemID;
  self->_itemID = v4;

  MEMORY[0x1EEE66BB8](v4, itemID);
}

- (int)StringAsContentRating:(id)rating
{
  ratingCopy = rating;
  if ([ratingCopy isEqualToString:@"clean"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [ratingCopy isEqualToString:@"explicit"];
  }

  return v4;
}

- (void)setContentRating:(int)rating
{
  has = self->_has;
  if (rating == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_contentRating = rating;
  }
}

@end