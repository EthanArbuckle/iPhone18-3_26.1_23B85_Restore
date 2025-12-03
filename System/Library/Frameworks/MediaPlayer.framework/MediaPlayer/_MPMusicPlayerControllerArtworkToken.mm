@interface _MPMusicPlayerControllerArtworkToken
- (_MPMusicPlayerControllerArtworkToken)initWithArtworkIdentifier:(id)identifier contentItemID:(id)d;
@end

@implementation _MPMusicPlayerControllerArtworkToken

- (_MPMusicPlayerControllerArtworkToken)initWithArtworkIdentifier:(id)identifier contentItemID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = _MPMusicPlayerControllerArtworkToken;
  v8 = [(_MPMusicPlayerControllerArtworkToken *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    artworkIdentifier = v8->_artworkIdentifier;
    v8->_artworkIdentifier = v9;

    v11 = [dCopy copy];
    contentItemID = v8->_contentItemID;
    v8->_contentItemID = v11;
  }

  return v8;
}

@end