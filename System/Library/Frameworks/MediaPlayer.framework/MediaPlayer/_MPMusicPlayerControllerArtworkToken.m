@interface _MPMusicPlayerControllerArtworkToken
- (_MPMusicPlayerControllerArtworkToken)initWithArtworkIdentifier:(id)a3 contentItemID:(id)a4;
@end

@implementation _MPMusicPlayerControllerArtworkToken

- (_MPMusicPlayerControllerArtworkToken)initWithArtworkIdentifier:(id)a3 contentItemID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _MPMusicPlayerControllerArtworkToken;
  v8 = [(_MPMusicPlayerControllerArtworkToken *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    artworkIdentifier = v8->_artworkIdentifier;
    v8->_artworkIdentifier = v9;

    v11 = [v7 copy];
    contentItemID = v8->_contentItemID;
    v8->_contentItemID = v11;
  }

  return v8;
}

@end