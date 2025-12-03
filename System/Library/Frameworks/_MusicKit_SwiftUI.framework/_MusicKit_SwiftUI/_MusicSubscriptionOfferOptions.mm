@interface _MusicSubscriptionOfferOptions
- (_MusicSubscriptionOfferOptions)initWithAction:(id)action messageIdentifier:(id)identifier;
@end

@implementation _MusicSubscriptionOfferOptions

- (_MusicSubscriptionOfferOptions)initWithAction:(id)action messageIdentifier:(id)identifier
{
  actionCopy = action;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = _MusicSubscriptionOfferOptions;
  v8 = [(_MusicSubscriptionOfferOptions *)&v14 init];
  if (v8)
  {
    v9 = [actionCopy copy];
    action = v8->_action;
    v8->_action = v9;

    v11 = [identifierCopy copy];
    messageIdentifier = v8->_messageIdentifier;
    v8->_messageIdentifier = v11;
  }

  return v8;
}

@end