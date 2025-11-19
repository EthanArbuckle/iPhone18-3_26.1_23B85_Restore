@interface PKMentionParticipant
+ (id)mentionWithDisplayName:(id)a3 identifier:(id)a4 color:(id)a5;
- (BOOL)isEqual:(id)a3;
- (PKMentionParticipant)initWithDisplayName:(id)a3 identifier:(id)a4 color:(id)a5;
- (id)description;
@end

@implementation PKMentionParticipant

+ (id)mentionWithDisplayName:(id)a3 identifier:(id)a4 color:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[PKMentionParticipant alloc] initWithDisplayName:v9 identifier:v8 color:v7];

  return v10;
}

- (PKMentionParticipant)initWithDisplayName:(id)a3 identifier:(id)a4 color:(id)a5
{
  v8 = a5;
  v18.receiver = self;
  v18.super_class = PKMentionParticipant;
  v9 = a4;
  v10 = a3;
  v11 = [(PKMentionParticipant *)&v18 init];
  v12 = [v10 copy];

  displayName = v11->_displayName;
  v11->_displayName = v12;

  v14 = [v9 copy];
  identifier = v11->_identifier;
  v11->_identifier = v14;

  color = v11->_color;
  v11->_color = v8;

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 identifier];
    v6 = [(PKMentionParticipant *)self identifier];
    v7 = [v5 isEqualToString:v6];
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
  v5 = [(PKMentionParticipant *)self displayName];
  v6 = [(PKMentionParticipant *)self identifier];
  v7 = [(PKMentionParticipant *)self color];
  v8 = [v3 stringWithFormat:@"%@:%p, %@, %@, %@", v4, self, v5, v6, v7];

  return v8;
}

@end