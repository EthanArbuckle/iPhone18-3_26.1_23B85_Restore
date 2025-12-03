@interface INWorkoutAssociatedItem
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INWorkoutAssociatedItem)initWithCoder:(id)coder;
- (INWorkoutAssociatedItem)initWithItemLabel:(int64_t)label itemID:(id)d contentRating:(int64_t)rating itemName:(id)name;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INWorkoutAssociatedItem

- (id)_dictionaryRepresentation
{
  v13[4] = *MEMORY[0x1E69E9840];
  v12[0] = @"itemLabel";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_itemLabel];
  v13[0] = v3;
  v12[1] = @"itemID";
  itemID = self->_itemID;
  null = itemID;
  if (!itemID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null;
  v12[2] = @"contentRating";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_contentRating];
  v13[2] = v6;
  v12[3] = @"itemName";
  itemName = self->_itemName;
  null2 = itemName;
  if (!itemName)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[3] = null2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
  if (!itemName)
  {
  }

  if (!itemID)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INWorkoutAssociatedItem;
  v6 = [(INWorkoutAssociatedItem *)&v11 description];
  _dictionaryRepresentation = [(INWorkoutAssociatedItem *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = self->_itemLabel - 1;
  if (v8 > 4)
  {
    v9 = @"unknown";
  }

  else
  {
    v9 = off_1E7288710[v8];
  }

  v10 = v9;
  [dictionary if_setObjectIfNonNil:v10 forKey:@"itemLabel"];

  v11 = [encoderCopy encodeObject:self->_itemID];
  [dictionary if_setObjectIfNonNil:v11 forKey:@"itemID"];

  contentRating = self->_contentRating;
  v13 = @"unknown";
  if (contentRating == 2)
  {
    v13 = @"explicit";
  }

  if (contentRating == 1)
  {
    v14 = @"clean";
  }

  else
  {
    v14 = v13;
  }

  v15 = v14;
  [dictionary if_setObjectIfNonNil:v15 forKey:@"contentRating"];

  v16 = [encoderCopy encodeObject:self->_itemName];

  [dictionary if_setObjectIfNonNil:v16 forKey:@"itemName"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  itemLabel = self->_itemLabel;
  coderCopy = coder;
  [coderCopy encodeInteger:itemLabel forKey:@"itemLabel"];
  [coderCopy encodeObject:self->_itemID forKey:@"itemID"];
  [coderCopy encodeInteger:self->_contentRating forKey:@"contentRating"];
  [coderCopy encodeObject:self->_itemName forKey:@"itemName"];
}

- (INWorkoutAssociatedItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"itemLabel"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"itemID"];

  v10 = [coderCopy decodeIntegerForKey:@"contentRating"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemName"];

  v12 = [(INWorkoutAssociatedItem *)self initWithItemLabel:v5 itemID:v9 contentRating:v10 itemName:v11];
  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v8 = 0;
      if (self->_itemLabel == v5->_itemLabel)
      {
        itemID = self->_itemID;
        if ((itemID == v5->_itemID || [(NSString *)itemID isEqual:?]) && self->_contentRating == v5->_contentRating)
        {
          itemName = self->_itemName;
          if (itemName == v5->_itemName || [(INSpeakableString *)itemName isEqual:?])
          {
            v8 = 1;
          }
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_itemLabel];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_itemID hash]^ v4;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_contentRating];
  v7 = [v6 hash];
  v8 = v7 ^ [(INSpeakableString *)self->_itemName hash];

  return v5 ^ v8;
}

- (INWorkoutAssociatedItem)initWithItemLabel:(int64_t)label itemID:(id)d contentRating:(int64_t)rating itemName:(id)name
{
  dCopy = d;
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = INWorkoutAssociatedItem;
  v12 = [(INWorkoutAssociatedItem *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_itemLabel = label;
    v14 = [dCopy copy];
    itemID = v13->_itemID;
    v13->_itemID = v14;

    v13->_contentRating = rating;
    v16 = [nameCopy copy];
    itemName = v13->_itemName;
    v13->_itemName = v16;
  }

  return v13;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [fromCopy objectForKeyedSubscript:@"itemLabel"];
    v10 = INWorkoutAssociatedItemLabelWithString(v9);

    v11 = [fromCopy objectForKeyedSubscript:@"itemID"];
    v12 = [fromCopy objectForKeyedSubscript:@"contentRating"];
    v13 = INWorkoutContentRatingLabelWithString(v12);

    v14 = objc_opt_class();
    v15 = [fromCopy objectForKeyedSubscript:@"itemName"];
    v16 = [decoderCopy decodeObjectOfClass:v14 from:v15];

    v17 = [[self alloc] initWithItemLabel:v10 itemID:v11 contentRating:v13 itemName:v16];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end