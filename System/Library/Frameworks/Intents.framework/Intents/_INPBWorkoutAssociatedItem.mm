@interface _INPBWorkoutAssociatedItem
- (BOOL)isEqual:(id)a3;
- (_INPBWorkoutAssociatedItem)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsContentRating:(id)a3;
- (int)StringAsItemLabel:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setContentRating:(int)a3;
- (void)setHasItemLabel:(BOOL)a3;
- (void)setItemID:(id)a3;
- (void)setItemLabel:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBWorkoutAssociatedItem

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBWorkoutAssociatedItem *)self hasContentRating])
  {
    v4 = [(_INPBWorkoutAssociatedItem *)self contentRating];
    if (v4)
    {
      if (v4 == 1)
      {
        v5 = @"explicit";
      }

      else
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
      }
    }

    else
    {
      v5 = @"clean";
    }

    [v3 setObject:v5 forKeyedSubscript:@"contentRating"];
  }

  if (self->_itemID)
  {
    v6 = [(_INPBWorkoutAssociatedItem *)self itemID];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"itemID"];
  }

  if ([(_INPBWorkoutAssociatedItem *)self hasItemLabel])
  {
    v8 = [(_INPBWorkoutAssociatedItem *)self itemLabel];
    if (v8 >= 5)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
    }

    else
    {
      v9 = off_1E7288738[v8];
    }

    [v3 setObject:v9 forKeyedSubscript:@"itemLabel"];
  }

  v10 = [(_INPBWorkoutAssociatedItem *)self itemName];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"itemName"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = [(_INPBWorkoutAssociatedItem *)self hasContentRating];
  if (v5 != [v4 hasContentRating])
  {
    goto LABEL_20;
  }

  if ([(_INPBWorkoutAssociatedItem *)self hasContentRating])
  {
    if ([v4 hasContentRating])
    {
      contentRating = self->_contentRating;
      if (contentRating != [v4 contentRating])
      {
        goto LABEL_20;
      }
    }
  }

  v7 = [(_INPBWorkoutAssociatedItem *)self itemID];
  v8 = [v4 itemID];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_19;
  }

  v9 = [(_INPBWorkoutAssociatedItem *)self itemID];
  if (v9)
  {
    v10 = v9;
    v11 = [(_INPBWorkoutAssociatedItem *)self itemID];
    v12 = [v4 itemID];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v14 = [(_INPBWorkoutAssociatedItem *)self hasItemLabel];
  if (v14 != [v4 hasItemLabel])
  {
    goto LABEL_20;
  }

  if ([(_INPBWorkoutAssociatedItem *)self hasItemLabel])
  {
    if ([v4 hasItemLabel])
    {
      itemLabel = self->_itemLabel;
      if (itemLabel != [v4 itemLabel])
      {
        goto LABEL_20;
      }
    }
  }

  v7 = [(_INPBWorkoutAssociatedItem *)self itemName];
  v8 = [v4 itemName];
  if ((v7 != 0) != (v8 == 0))
  {
    v16 = [(_INPBWorkoutAssociatedItem *)self itemName];
    if (!v16)
    {

LABEL_23:
      v21 = 1;
      goto LABEL_21;
    }

    v17 = v16;
    v18 = [(_INPBWorkoutAssociatedItem *)self itemName];
    v19 = [v4 itemName];
    v20 = [v18 isEqual:v19];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBWorkoutAssociatedItem allocWithZone:](_INPBWorkoutAssociatedItem init];
  if ([(_INPBWorkoutAssociatedItem *)self hasContentRating])
  {
    [(_INPBWorkoutAssociatedItem *)v5 setContentRating:[(_INPBWorkoutAssociatedItem *)self contentRating]];
  }

  v6 = [(NSString *)self->_itemID copyWithZone:a3];
  [(_INPBWorkoutAssociatedItem *)v5 setItemID:v6];

  if ([(_INPBWorkoutAssociatedItem *)self hasItemLabel])
  {
    [(_INPBWorkoutAssociatedItem *)v5 setItemLabel:[(_INPBWorkoutAssociatedItem *)self itemLabel]];
  }

  v7 = [(_INPBDataString *)self->_itemName copyWithZone:a3];
  [(_INPBWorkoutAssociatedItem *)v5 setItemName:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBWorkoutAssociatedItem *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBWorkoutAssociatedItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBWorkoutAssociatedItem *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  if ([(_INPBWorkoutAssociatedItem *)self hasContentRating])
  {
    contentRating = self->_contentRating;
    PBDataWriterWriteInt32Field();
  }

  v5 = [(_INPBWorkoutAssociatedItem *)self itemID];

  if (v5)
  {
    itemID = self->_itemID;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBWorkoutAssociatedItem *)self hasItemLabel])
  {
    itemLabel = self->_itemLabel;
    PBDataWriterWriteInt32Field();
  }

  v8 = [(_INPBWorkoutAssociatedItem *)self itemName];

  v9 = v11;
  if (v8)
  {
    v10 = [(_INPBWorkoutAssociatedItem *)self itemName];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (int)StringAsItemLabel:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"narrator"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"playlist"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"song"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"trainer"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"workout"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasItemLabel:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setItemLabel:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_itemLabel = a3;
  }
}

- (void)setItemID:(id)a3
{
  v4 = [a3 copy];
  itemID = self->_itemID;
  self->_itemID = v4;

  MEMORY[0x1EEE66BB8](v4, itemID);
}

- (int)StringAsContentRating:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"clean"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"explicit"];
  }

  return v4;
}

- (void)setContentRating:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_contentRating = a3;
  }
}

@end