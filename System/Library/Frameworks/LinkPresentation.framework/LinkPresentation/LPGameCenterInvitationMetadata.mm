@interface LPGameCenterInvitationMetadata
- (BOOL)isEqual:(id)a3;
- (LPGameCenterInvitationMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)invitationText;
- (id)playerCountText;
- (id)presentationPropertiesForTransformer:(id)a3;
- (id)previewSummaryForTransformer:(id)a3;
- (void)_enumerateAsynchronousFields:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)populateMetadataForBackwardCompatibility:(id)a3;
@end

@implementation LPGameCenterInvitationMetadata

- (LPGameCenterInvitationMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = LPGameCenterInvitationMetadata;
  v5 = [(LPGameCenterInvitationMetadata *)&v14 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"game");
    v7 = *&v5->_maximumNumberOfPlayers;
    *&v5->_maximumNumberOfPlayers = v6;

    *(&v5->super.__disallowsURLOverrideByDelegate + 2) = [v4 decodeInt32ForKey:@"numberOfPlayers"];
    v5->_numberOfPlayers = [v4 decodeInt32ForKey:@"minimumNumberOfPlayers"];
    v5->_minimumNumberOfPlayers = [v4 decodeInt32ForKey:@"maximumNumberOfPlayers"];
    v8 = [v4 _lp_strictlyDecodeLPImageForKey:@"image"];
    game = v5->_game;
    v5->_game = v8;

    v10 = [v4 _lp_strictlyDecodeLPImageForKey:@"icon"];
    image = v5->_image;
    v5->_image = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 _lp_encodeStringIfNotNil:*&self->_maximumNumberOfPlayers forKey:@"game"];
  [v4 encodeInt32:*(&self->super.__disallowsURLOverrideByDelegate + 2) forKey:@"numberOfPlayers"];
  [v4 encodeInt32:self->_numberOfPlayers forKey:@"minimumNumberOfPlayers"];
  [v4 encodeInt32:self->_minimumNumberOfPlayers forKey:@"maximumNumberOfPlayers"];
  [v4 _lp_encodeObjectIfNotNil:self->_game forKey:@"image"];
  [v4 _lp_encodeObjectIfNotNil:self->_image forKey:@"icon"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPGameCenterInvitationMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPGameCenterInvitationMetadata *)self game];
    [(LPGameCenterInvitationMetadata *)v4 setGame:v5];

    [(LPGameCenterInvitationMetadata *)v4 setNumberOfPlayers:[(LPGameCenterInvitationMetadata *)self numberOfPlayers]];
    [(LPGameCenterInvitationMetadata *)v4 setMinimumNumberOfPlayers:[(LPGameCenterInvitationMetadata *)self minimumNumberOfPlayers]];
    [(LPGameCenterInvitationMetadata *)v4 setMaximumNumberOfPlayers:[(LPGameCenterInvitationMetadata *)self maximumNumberOfPlayers]];
    v6 = [(LPGameCenterInvitationMetadata *)self image];
    [(LPGameCenterInvitationMetadata *)v4 setImage:v6];

    v7 = [(LPGameCenterInvitationMetadata *)self icon];
    [(LPGameCenterInvitationMetadata *)v4 setIcon:v7];

    v8 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPGameCenterInvitationMetadata;
  if ([(LPGameCenterInvitationMetadata *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
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

- (void)_enumerateAsynchronousFields:(id)a3
{
  v3 = a3;
  v3[2](v3, @"image");
  v3[2](v3, @"icon");
}

- (id)invitationText
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = LPLocalizedString(@"Invitation to play %@");
  v5 = [(LPGameCenterInvitationMetadata *)self game];
  v6 = [v3 localizedStringWithFormat:v4, v5];

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

- (id)presentationPropertiesForTransformer:(id)a3
{
  v4 = [a3 commonPresentationPropertiesForStyle:17];
  v5 = [(LPGameCenterInvitationMetadata *)self image];
  [v4 setImage:v5];

  v6 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v4 setCaptionBar:v6];

  v7 = [(LPGameCenterInvitationMetadata *)self invitationText];
  v8 = [v4 captionBar];
  v9 = [v8 top];
  v10 = [v9 leading];
  [v10 setText:v7];

  v11 = [(LPGameCenterInvitationMetadata *)self playerCountText];
  v12 = [v4 captionBar];
  v13 = [v12 bottom];
  v14 = [v13 leading];
  [v14 setText:v11];

  v15 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v4 setMediaTopCaptionBar:v15];

  v16 = [(LPGameCenterInvitationMetadata *)self icon];
  v17 = [v4 mediaTopCaptionBar];
  [v17 setLeadingIcon:v16];

  return v4;
}

- (id)previewSummaryForTransformer:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"%@.\n%@");
  v6 = [(LPGameCenterInvitationMetadata *)self invitationText];
  v7 = [(LPGameCenterInvitationMetadata *)self playerCountText];
  v8 = [v4 localizedStringWithFormat:v5, v6, v7];

  return v8;
}

- (void)populateMetadataForBackwardCompatibility:(id)a3
{
  v10 = a3;
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"Invitation to play %@");
  v6 = [(LPGameCenterInvitationMetadata *)self game];
  v7 = [v4 localizedStringWithFormat:v5, v6];
  [v10 setTitle:v7];

  v8 = [(LPGameCenterInvitationMetadata *)self image];
  [v10 setImage:v8];

  v9 = [(LPGameCenterInvitationMetadata *)self icon];
  [v10 setIcon:v9];
}

@end