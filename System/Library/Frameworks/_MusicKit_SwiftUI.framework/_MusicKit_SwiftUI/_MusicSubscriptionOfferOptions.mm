@interface _MusicSubscriptionOfferOptions
- (_MusicSubscriptionOfferOptions)initWithAction:(id)a3 messageIdentifier:(id)a4;
@end

@implementation _MusicSubscriptionOfferOptions

- (_MusicSubscriptionOfferOptions)initWithAction:(id)a3 messageIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _MusicSubscriptionOfferOptions;
  v8 = [(_MusicSubscriptionOfferOptions *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    action = v8->_action;
    v8->_action = v9;

    v11 = [v7 copy];
    messageIdentifier = v8->_messageIdentifier;
    v8->_messageIdentifier = v11;
  }

  return v8;
}

@end