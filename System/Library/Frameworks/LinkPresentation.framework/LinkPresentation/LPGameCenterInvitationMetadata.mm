@interface LPGameCenterInvitationMetadata
- (BOOL)isEqual:(id)equal;
- (LPGameCenterInvitationMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)invitationText;
- (id)playerCountText;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
- (void)_enumerateAsynchronousFields:(id)fields;
- (void)encodeWithCoder:(id)coder;
- (void)populateMetadataForBackwardCompatibility:(id)compatibility;
@end

@implementation LPGameCenterInvitationMetadata

- (LPGameCenterInvitationMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = LPGameCenterInvitationMetadata;
  v5 = [(LPGameCenterInvitationMetadata *)&v14 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"game");
    v7 = *&v5->_maximumNumberOfPlayers;
    *&v5->_maximumNumberOfPlayers = v6;

    *(&v5->super.__disallowsURLOverrideByDelegate + 2) = [coderCopy decodeInt32ForKey:@"numberOfPlayers"];
    v5->_numberOfPlayers = [coderCopy decodeInt32ForKey:@"minimumNumberOfPlayers"];
    v5->_minimumNumberOfPlayers = [coderCopy decodeInt32ForKey:@"maximumNumberOfPlayers"];
    v8 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"image"];
    game = v5->_game;
    v5->_game = v8;

    v10 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"icon"];
    image = v5->_image;
    v5->_image = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _lp_encodeStringIfNotNil:*&self->_maximumNumberOfPlayers forKey:@"game"];
  [coderCopy encodeInt32:*(&self->super.__disallowsURLOverrideByDelegate + 2) forKey:@"numberOfPlayers"];
  [coderCopy encodeInt32:self->_numberOfPlayers forKey:@"minimumNumberOfPlayers"];
  [coderCopy encodeInt32:self->_minimumNumberOfPlayers forKey:@"maximumNumberOfPlayers"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_game forKey:@"image"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_image forKey:@"icon"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPGameCenterInvitationMetadata allocWithZone:zone];
  if (v4)
  {
    game = [(LPGameCenterInvitationMetadata *)self game];
    [(LPGameCenterInvitationMetadata *)v4 setGame:game];

    [(LPGameCenterInvitationMetadata *)v4 setNumberOfPlayers:[(LPGameCenterInvitationMetadata *)self numberOfPlayers]];
    [(LPGameCenterInvitationMetadata *)v4 setMinimumNumberOfPlayers:[(LPGameCenterInvitationMetadata *)self minimumNumberOfPlayers]];
    [(LPGameCenterInvitationMetadata *)v4 setMaximumNumberOfPlayers:[(LPGameCenterInvitationMetadata *)self maximumNumberOfPlayers]];
    image = [(LPGameCenterInvitationMetadata *)self image];
    [(LPGameCenterInvitationMetadata *)v4 setImage:image];

    icon = [(LPGameCenterInvitationMetadata *)self icon];
    [(LPGameCenterInvitationMetadata *)v4 setIcon:icon];

    v8 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPGameCenterInvitationMetadata;
  if ([(LPGameCenterInvitationMetadata *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      if ((objectsAreEqual_0(v6[3], *&self->_maximumNumberOfPlayers) & 1) != 0 && *(v6 + 3) == *(&self->super.__disallowsURLOverrideByDelegate + 2) && *(v6 + 4) == self->_numberOfPlayers && *(v6 + 5) == self->_minimumNumberOfPlayers && objectsAreEqual_0(v6[4], self->_game))
      {
        v5 = objectsAreEqual_0(v6[5], self->_image);
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)_enumerateAsynchronousFields:(id)fields
{
  fieldsCopy = fields;
  fieldsCopy[2](fieldsCopy, @"image");
  fieldsCopy[2](fieldsCopy, @"icon");
}

- (id)invitationText
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = LPLocalizedString(@"Invitation to play %@");
  game = [(LPGameCenterInvitationMetadata *)self game];
  v6 = [v3 localizedStringWithFormat:v4, game];

  return v6;
}

- (id)playerCountText
{
  if ([(LPGameCenterInvitationMetadata *)self minimumNumberOfPlayers]&& [(LPGameCenterInvitationMetadata *)self maximumNumberOfPlayers])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = LPLocalizedString(@"%d-%d Players");
    v5 = [v3 localizedStringWithFormat:v4, -[LPGameCenterInvitationMetadata minimumNumberOfPlayers](self, "minimumNumberOfPlayers"), -[LPGameCenterInvitationMetadata maximumNumberOfPlayers](self, "maximumNumberOfPlayers")];
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    v4 = LPLocalizedString(@"%d Player(s)");
    v5 = [v6 localizedStringWithFormat:v4, -[LPGameCenterInvitationMetadata numberOfPlayers](self, "numberOfPlayers")];
  }

  v7 = v5;

  return v7;
}

- (id)presentationPropertiesForTransformer:(id)transformer
{
  v4 = [transformer commonPresentationPropertiesForStyle:17];
  image = [(LPGameCenterInvitationMetadata *)self image];
  [v4 setImage:image];

  v6 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v4 setCaptionBar:v6];

  invitationText = [(LPGameCenterInvitationMetadata *)self invitationText];
  captionBar = [v4 captionBar];
  v9 = [captionBar top];
  leading = [v9 leading];
  [leading setText:invitationText];

  playerCountText = [(LPGameCenterInvitationMetadata *)self playerCountText];
  captionBar2 = [v4 captionBar];
  bottom = [captionBar2 bottom];
  leading2 = [bottom leading];
  [leading2 setText:playerCountText];

  v15 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v4 setMediaTopCaptionBar:v15];

  icon = [(LPGameCenterInvitationMetadata *)self icon];
  mediaTopCaptionBar = [v4 mediaTopCaptionBar];
  [mediaTopCaptionBar setLeadingIcon:icon];

  return v4;
}

- (id)previewSummaryForTransformer:(id)transformer
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"%@.\n%@");
  invitationText = [(LPGameCenterInvitationMetadata *)self invitationText];
  playerCountText = [(LPGameCenterInvitationMetadata *)self playerCountText];
  v8 = [v4 localizedStringWithFormat:v5, invitationText, playerCountText];

  return v8;
}

- (void)populateMetadataForBackwardCompatibility:(id)compatibility
{
  compatibilityCopy = compatibility;
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"Invitation to play %@");
  game = [(LPGameCenterInvitationMetadata *)self game];
  v7 = [v4 localizedStringWithFormat:v5, game];
  [compatibilityCopy setTitle:v7];

  image = [(LPGameCenterInvitationMetadata *)self image];
  [compatibilityCopy setImage:image];

  icon = [(LPGameCenterInvitationMetadata *)self icon];
  [compatibilityCopy setIcon:icon];
}

@end