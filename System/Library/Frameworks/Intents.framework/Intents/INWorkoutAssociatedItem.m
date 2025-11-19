@interface INWorkoutAssociatedItem
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INWorkoutAssociatedItem)initWithCoder:(id)a3;
- (INWorkoutAssociatedItem)initWithItemLabel:(int64_t)a3 itemID:(id)a4 contentRating:(int64_t)a5 itemName:(id)a6;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
  v5 = itemID;
  if (!itemID)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v5;
  v12[2] = @"contentRating";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_contentRating];
  v13[2] = v6;
  v12[3] = @"itemName";
  itemName = self->_itemName;
  v8 = itemName;
  if (!itemName)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[3] = v8;
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

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INWorkoutAssociatedItem;
  v6 = [(INWorkoutAssociatedItem *)&v11 description];
  v7 = [(INWorkoutAssociatedItem *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
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
  [v7 if_setObjectIfNonNil:v10 forKey:@"itemLabel"];

  v11 = [v6 encodeObject:self->_itemID];
  [v7 if_setObjectIfNonNil:v11 forKey:@"itemID"];

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
  [v7 if_setObjectIfNonNil:v15 forKey:@"contentRating"];

  v16 = [v6 encodeObject:self->_itemName];

  [v7 if_setObjectIfNonNil:v16 forKey:@"itemName"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  itemLabel = self->_itemLabel;
  v5 = a3;
  [v5 encodeInteger:itemLabel forKey:@"itemLabel"];
  [v5 encodeObject:self->_itemID forKey:@"itemID"];
  [v5 encodeInteger:self->_contentRating forKey:@"contentRating"];
  [v5 encodeObject:self->_itemName forKey:@"itemName"];
}

- (INWorkoutAssociatedItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"itemLabel"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"itemID"];

  v10 = [v4 decodeIntegerForKey:@"contentRating"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemName"];

  v12 = [(INWorkoutAssociatedItem *)self initWithItemLabel:v5 itemID:v9 contentRating:v10 itemName:v11];
  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (INWorkoutAssociatedItem)initWithItemLabel:(int64_t)a3 itemID:(id)a4 contentRating:(int64_t)a5 itemName:(id)a6
{
  v10 = a4;
  v11 = a6;
  v19.receiver = self;
  v19.super_class = INWorkoutAssociatedItem;
  v12 = [(INWorkoutAssociatedItem *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_itemLabel = a3;
    v14 = [v10 copy];
    itemID = v13->_itemID;
    v13->_itemID = v14;

    v13->_contentRating = a5;
    v16 = [v11 copy];
    itemName = v13->_itemName;
    v13->_itemName = v16;
  }

  return v13;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 objectForKeyedSubscript:@"itemLabel"];
    v10 = INWorkoutAssociatedItemLabelWithString(v9);

    v11 = [v8 objectForKeyedSubscript:@"itemID"];
    v12 = [v8 objectForKeyedSubscript:@"contentRating"];
    v13 = INWorkoutContentRatingLabelWithString(v12);

    v14 = objc_opt_class();
    v15 = [v8 objectForKeyedSubscript:@"itemName"];
    v16 = [v7 decodeObjectOfClass:v14 from:v15];

    v17 = [[a1 alloc] initWithItemLabel:v10 itemID:v11 contentRating:v13 itemName:v16];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end