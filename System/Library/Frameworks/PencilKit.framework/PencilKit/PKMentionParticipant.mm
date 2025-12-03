@interface PKMentionParticipant
+ (id)mentionWithDisplayName:(id)name identifier:(id)identifier color:(id)color;
- (BOOL)isEqual:(id)equal;
- (PKMentionParticipant)initWithDisplayName:(id)name identifier:(id)identifier color:(id)color;
- (id)description;
@end

@implementation PKMentionParticipant

+ (id)mentionWithDisplayName:(id)name identifier:(id)identifier color:(id)color
{
  colorCopy = color;
  identifierCopy = identifier;
  nameCopy = name;
  v10 = [[PKMentionParticipant alloc] initWithDisplayName:nameCopy identifier:identifierCopy color:colorCopy];

  return v10;
}

- (PKMentionParticipant)initWithDisplayName:(id)name identifier:(id)identifier color:(id)color
{
  colorCopy = color;
  v18.receiver = self;
  v18.super_class = PKMentionParticipant;
  identifierCopy = identifier;
  nameCopy = name;
  v11 = [(PKMentionParticipant *)&v18 init];
  v12 = [nameCopy copy];

  displayName = v11->_displayName;
  v11->_displayName = v12;

  v14 = [identifierCopy copy];
  identifier = v11->_identifier;
  v11->_identifier = v14;

  color = v11->_color;
  v11->_color = colorCopy;

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [equalCopy identifier];
    identifier2 = [(PKMentionParticipant *)self identifier];
    v7 = [identifier isEqualToString:identifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  displayName = [(PKMentionParticipant *)self displayName];
  identifier = [(PKMentionParticipant *)self identifier];
  color = [(PKMentionParticipant *)self color];
  v8 = [v3 stringWithFormat:@"%@:%p, %@, %@, %@", v4, self, displayName, identifier, color];

  return v8;
}

@end