@interface DetailHeaderAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsCollaborativeForModelPlaylist:(id)a3;
- (id)_axCuratorNameForPlaylist:(id)a3;
- (id)_axLabelForActionButtonForContainerProperties:(id)a3;
- (id)_axNameForAuthor:(id)a3;
- (id)_axOwnerNameForPlaylist:(id)a3;
- (id)_axStringForActiveCallaborators:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation DetailHeaderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicApplication.DetailHeader" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"MusicApplication.DetailHeader" hasInstanceMethod:@"accessibilityPlaylistVisibilitySwitchContainerView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.DetailHeader" hasInstanceMethod:@"accessibilityIsVisiblePlaylistTitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.DetailHeader" hasInstanceMethod:@"accessibilityArtworkEditingOverlayView" withFullSignature:{"@", 0}];
  [v3 validateSwiftStruct:@"MusicApplication.ContainerDetailPlaylistProperties"];
  [v3 validateClass:@"MusicApplication.PlaylistDetailViewController" hasSwiftField:@"containerProperties" withSwiftType:"Optional<ContainerDetailPlaylistProperties>"];
  [v3 validateSwiftStruct:@"MusicApplication.ContainerDetailPlaylistProperties" hasSwiftField:@"activeCollaborators" withSwiftType:"Optional<Array<MPModelPlaylistAuthor>>"];
  [v3 validateSwiftStruct:@"MusicApplication.ContainerDetailPlaylistProperties" hasSwiftField:@"modelObject" withSwiftType:"Optional<MPModelPlaylist>"];
  [v3 validateClass:@"MusicApplication.DetailHeader" hasSwiftField:@"detailsView" withSwiftType:"DetailsView"];
  [v3 validateClass:@"MusicApplication.DetailHeader[class].DetailsView" hasSwiftField:@"actionButton" withSwiftType:"TextButton"];
  [v3 validateClass:@"MPModelObject"];
  [v3 validateClass:@"MPModelObject" hasInstanceMethod:@"hasLoadedValueForKey:" withFullSignature:{"B", "@", 0}];
  [v3 validateClass:@"MPModelPlaylist"];
  [v3 validateClass:@"MPModelPlaylist" isKindOfClass:@"MPModelObject"];
  [v3 validateClass:@"MPModelPlaylist" hasInstanceMethod:@"collaboratorStatus" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"MPModelPlaylist" hasInstanceMethod:@"curator" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MPModelPlaylist" hasInstanceMethod:@"ownerName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MPModelCurator" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MPModelPlaylistAuthor"];
  [v3 validateClass:@"MPModelPlaylistAuthor" isKindOfClass:@"MPModelObject"];
  [v3 validateClass:@"MPModelPlaylistAuthor" hasInstanceMethod:@"socialProfile" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MPModelSocialPerson" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v16.receiver = self;
  v16.super_class = DetailHeaderAccessibility;
  [(DetailHeaderAccessibility *)&v16 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(DetailHeaderAccessibility *)self safeValueForKey:@"accessibilityPlaylistVisibilitySwitchContainerView"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 accessibilitySetIdentification:@"AXPublicPlaylistSwitchContainerView"];
  v5 = [(DetailHeaderAccessibility *)self safeValueForKey:@"accessibilityIsVisiblePlaylistTitle"];
  [v4 setAccessibilityLabel:v5];

  v6 = [(DetailHeaderAccessibility *)self safeValueForKey:@"accessibilityArtworkEditingOverlayView"];
  v7 = accessibilityMusicLocalizedString(@"add.playlist.artwork.button");
  [v6 setAccessibilityLabel:v7];

  [v6 setIsAccessibilityElement:1];
  [v6 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  v8 = [(DetailHeaderAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_3 startWithSelf:0];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 _accessibilityViewController];
    v11 = [v10 safeSwiftValueForKey:@"containerProperties"];
    v12 = __UIAccessibilityCastAsSwiftStruct();

    if (v12)
    {
      v13 = [(DetailHeaderAccessibility *)self safeSwiftValueForKey:@"detailsView"];
      v14 = [v13 safeSwiftValueForKey:@"actionButton"];
      v15 = [(DetailHeaderAccessibility *)self _axLabelForActionButtonForContainerProperties:v12];
      [v14 setAccessibilityLabel:v15];
    }
  }
}

uint64_t __71__DetailHeaderAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2E2DD0](@"MusicApplication.PlaylistDetailViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = DetailHeaderAccessibility;
  [(DetailHeaderAccessibility *)&v3 layoutSubviews];
  [(DetailHeaderAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (id)_axLabelForActionButtonForContainerProperties:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 safeSwiftArrayForKey:@"activeCollaborators"];
  v6 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v7 = [v4 safeSwiftValueForKey:@"modelObject"];
  v8 = __UIAccessibilityCastAsClass();

  if (-[DetailHeaderAccessibility _axIsCollaborativeForModelPlaylist:](self, "_axIsCollaborativeForModelPlaylist:", v8) && [v6 count])
  {
    v9 = [(DetailHeaderAccessibility *)self _axStringForActiveCallaborators:v6];
  }

  else
  {
    v10 = [(DetailHeaderAccessibility *)self _axOwnerNameForPlaylist:v8];
    v11 = [(DetailHeaderAccessibility *)self _axCuratorNameForPlaylist:v8];
    if ([v10 length])
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    v9 = v12;
  }

  return v9;
}

- (id)_axStringForActiveCallaborators:(id)a3
{
  v4 = a3;
  v5 = [v4 objectAtIndex:0];
  v6 = [(DetailHeaderAccessibility *)self _axNameForAuthor:v5];
  if ([v4 count] < 2)
  {
    v9 = v6;
  }

  else
  {
    v7 = MEMORY[0x29EDBA0F8];
    v8 = accessibilityMusicLocalizedString(@"PLAYLIST_CURATORS_COUNT");
    v9 = [v7 localizedStringWithFormat:v8, v6, objc_msgSend(v4, "count") - 1];
  }

  return v9;
}

- (BOOL)_axIsCollaborativeForModelPlaylist:(id)a3
{
  v3 = a3;
  if ([v3 hasLoadedValueForKey:*MEMORY[0x29EDBB2C8]])
  {
    v4 = ([v3 collaboratorStatus] - 2) < 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_axCuratorNameForPlaylist:(id)a3
{
  v3 = a3;
  if ([v3 hasLoadedValueForKey:*MEMORY[0x29EDBB2E0]] && (objc_msgSend(v3, "curator"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "hasLoadedValueForKey:", *MEMORY[0x29EDBB2B8]), v4, v5))
  {
    v6 = [v3 curator];
    v7 = [v6 name];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_axOwnerNameForPlaylist:(id)a3
{
  v3 = a3;
  if ([v3 hasLoadedValueForKey:*MEMORY[0x29EDBB2D0]])
  {
    v4 = [v3 safeStringForKey:@"ownerName"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_axNameForAuthor:(id)a3
{
  v3 = a3;
  if ([v3 hasLoadedValueForKey:*MEMORY[0x29EDBB2D8]] && (objc_msgSend(v3, "socialProfile"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "hasLoadedValueForKey:", *MEMORY[0x29EDBB2C0]), v4, v5))
  {
    v6 = [v3 socialProfile];
    v7 = [v6 name];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end