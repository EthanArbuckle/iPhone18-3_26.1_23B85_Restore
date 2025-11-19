@interface JSSocialOnboardingFriendsModelRequest
- (_TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest)init;
- (_TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest)initWithCoder:(id)a3;
- (id)copyWithZone:(void *)a3;
- (id)newOperationWithResponseHandler:(id)a3;
@end

@implementation JSSocialOnboardingFriendsModelRequest

- (_TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest)init
{
  *&self->MPModelRequest_opaque[OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest_friends] = 0;
  self->MPModelRequest_opaque[OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest_shouldSortOnboardedFriends] = 0;
  self->MPModelRequest_opaque[OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest_shouldSortNonOnboardedFriends] = 0;
  *&self->MPModelRequest_opaque[OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest_previousResponse] = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for JSSocialOnboardingFriendsModelRequest();
  return [(JSSocialOnboardingFriendsModelRequest *)&v3 init];
}

- (_TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest)initWithCoder:(id)a3
{
  *&self->MPModelRequest_opaque[OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest_friends] = 0;
  self->MPModelRequest_opaque[OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest_shouldSortOnboardedFriends] = 0;
  self->MPModelRequest_opaque[OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest_shouldSortNonOnboardedFriends] = 0;
  *&self->MPModelRequest_opaque[OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest_previousResponse] = 0;
  type metadata accessor for JSSocialOnboardingFriendsModelRequest();
  swift_deallocPartialClassInstance();
  return 0;
}

- (id)copyWithZone:(void *)a3
{
  v4 = self;
  sub_33FE90(a3, v7);

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = sub_ABB3A0();
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

- (id)newOperationWithResponseHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  v7 = JSViewModelRequestCoordinator.sharedCoordinator.unsafeMutableAddressor();
  v8 = *v7;
  v9 = *(**v7 + 144);

  v11 = v9(v10);
  v12 = swift_allocObject();
  *(v12 + 2) = v8;
  *(v12 + 3) = v11;
  *(v12 + 4) = sub_AACD4;
  *(v12 + 5) = v5;
  v13 = type metadata accessor for JSSocialOnboardingFriendsModelRequest.Operation();
  v14 = objc_allocWithZone(v13);
  [(JSSocialOnboardingFriendsModelRequest *)v6 copy];
  sub_ABAB50();
  type metadata accessor for JSSocialOnboardingFriendsModelRequest();
  swift_dynamicCast();
  *&v14[OBJC_IVAR____TtCC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest9Operation_request] = v19;
  swift_unknownObjectRelease();
  v15 = &v14[OBJC_IVAR____TtCC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest9Operation_responseHandler];
  *v15 = sub_344964;
  v15[1] = v12;
  v18.receiver = v14;
  v18.super_class = v13;
  v16 = [(JSSocialOnboardingFriendsModelRequest *)&v18 init];

  return v16;
}

@end