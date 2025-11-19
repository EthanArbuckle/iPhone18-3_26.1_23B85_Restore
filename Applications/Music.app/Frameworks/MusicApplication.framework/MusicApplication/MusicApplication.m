void sub_5C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 200), 8);
  _Block_object_dispose((v39 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_6354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

CGFloat MusicRectByApplyingUserInterfaceLayoutDirectionInRect(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (a1 == 1)
  {
    v17.origin.x = a6;
    v17.origin.y = a7;
    v17.size.width = a8;
    v17.size.height = a9;
    MaxX = CGRectGetMaxX(v17);
    v18.origin.x = a2;
    v18.origin.y = a3;
    v18.size.width = a4;
    v18.size.height = a5;
    v14 = MaxX - CGRectGetMinX(v18);
    v19.origin.x = a2;
    v19.origin.y = a3;
    v19.size.width = a4;
    v19.size.height = a5;
    v15 = v14 - CGRectGetWidth(v19);
    v20.origin.x = a2;
    v20.origin.y = a3;
    v20.size.width = a4;
    v20.size.height = a5;
    CGRectGetMinY(v20);
    v21.origin.x = a2;
    v21.origin.y = a3;
    v21.size.width = a4;
    v21.size.height = a5;
    CGRectGetWidth(v21);
    v22.origin.x = a2;
    v22.origin.y = a3;
    v22.size.width = a4;
    v22.size.height = a5;
    CGRectGetHeight(v22);
    return v15;
  }

  return a2;
}

CGFloat MusicRectByRemovingUserInterfaceLayoutDirectionInRect(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (a1 == 1)
  {
    v16.origin.x = a6;
    v16.origin.y = a7;
    v16.size.width = a8;
    v16.size.height = a9;
    MaxX = CGRectGetMaxX(v16);
    v17.origin.x = a2;
    v17.origin.y = a3;
    v17.size.width = a4;
    v17.size.height = a5;
    v14 = MaxX - CGRectGetMaxX(v17);
    v18.origin.x = a2;
    v18.origin.y = a3;
    v18.size.width = a4;
    v18.size.height = a5;
    CGRectGetMinY(v18);
    v19.origin.x = a2;
    v19.origin.y = a3;
    v19.size.width = a4;
    v19.size.height = a5;
    CGRectGetWidth(v19);
    v20.origin.x = a2;
    v20.origin.y = a3;
    v20.size.width = a4;
    v20.size.height = a5;
    CGRectGetHeight(v20);
    return v14;
  }

  return a2;
}

CGFloat MusicRectByApplyingUserInterfaceLayoutDirectionInView(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = a1;
  v10 = [v9 effectiveUserInterfaceLayoutDirection];
  [v9 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  return MusicRectByApplyingUserInterfaceLayoutDirectionInRect(v10, a2, a3, a4, a5, v12, v14, v16, v18);
}

BOOL MusicFloatEqualToFloat(double a1, double a2)
{
  v2 = a2 - a1;
  if (v2 < 0.0)
  {
    v2 = -v2;
  }

  return v2 < 0.00000011920929;
}

BOOL MusicFloatGreaterThanOrEqualToFloat(double a1, double a2)
{
  if (a1 > a2)
  {
    return 1;
  }

  v3 = a2 - a1;
  if (v3 < 0.0)
  {
    v3 = -v3;
  }

  return v3 < 0.00000011920929;
}

double MusicSafeDisplayScale(double result)
{
  v1 = 0.0 - result;
  if (0.0 - result < 0.0)
  {
    v1 = -(0.0 - result);
  }

  if (v1 < 0.00000011920929 || result < 0.0)
  {
    return 1.0;
  }

  return result;
}

void sub_8208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_8E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_8F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_A168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_A258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_A374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_A630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_AD14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  objc_destroyWeak(&a26);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_BA44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_BF28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

unint64_t MusicStringContainsCJKScripts(void *a1)
{
  v1 = a1;
  if (MusicStringContainsCJKScripts_sOnceToken[0] != -1)
  {
    MusicStringContainsCJKScripts_cold_1();
  }

  v2 = [v1 length];
  if (v2)
  {
    if ([v1 _fastCharacterContents])
    {
      v3 = uset_containsAllCodePoints();
    }

    else
    {
      __chkstk_darwin(0);
      [v1 getCharacters:&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) range:{0, v2}];
      v3 = uset_containsAllCodePoints();
    }

    v2 = v3 == 0;
  }

  return v2;
}

void sub_D69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id static MPSectionedCollection.withModelObject(_:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(MPMutableSectionedCollection) init];
  v3 = sub_AB9260();
  [v2 appendSection:v3];

  [v2 appendItem:a1];
  return v2;
}

id Array<A>.asSectionedCollection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6E68);
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = sub_AB9260();
  [v0 appendSection:v1];

  isa = sub_AB9740().super.isa;
  [v0 appendItems:isa];

  return v0;
}

id variable initialization expression of UnifiedMessages.Coordinator.bag()
{
  v0 = objc_allocWithZone(AMSProcessInfo);
  v1 = sub_AB9260();
  v2 = [v0 initWithBundleIdentifier:v1];

  v3 = sub_AB9260();
  v4 = sub_AB9260();
  v5 = [objc_opt_self() bagForProfile:v3 profileVersion:v4 processInfo:v2];

  return v5;
}

id variable initialization expression of UnifiedMessages.Coordinator.userDefaults()
{
  UnifiedMessages.groupDefaultsSuiteName.unsafeMutableAddressor();
  v0 = objc_allocWithZone(NSUserDefaults);

  v1 = sub_AB9260();

  v2 = [v0 initWithSuiteName:v1];

  return v2;
}

uint64_t *variable initialization expression of JSSearchLandingUpsellViewController.artworkVideoReportingController()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED0);
  swift_allocObject();
  return ArtworkVideoReportingController.init()();
}

double variable initialization expression of TextDrawing.Cache._displayScale()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  return v2;
}

void variable initialization expression of TextDrawing.Cache._tintColor()
{
  sub_109468();
  if (!v0)
  {
    v1 = [objc_opt_self() systemBlueColor];

    v2 = v1;
  }
}

double variable initialization expression of TextDrawing.Cache.reusableKey()
{
  _s5CacheC3KeyCMa();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = xmmword_AF4EA0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 48) = sub_107D34;
  result = -0.0;
  *(v0 + 72) = xmmword_AF4EB0;
  *(v0 + 88) = 1;
  *(v0 + 96) = 0x4030000000000000;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 104) = 0;
  return result;
}

uint64_t variable initialization expression of TextDrawing.Cache.reusableAttributesWrapper()
{
  v0 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v1 clearColor];
  _s5CacheC17AttributesWrapperCMa();
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v3;
  *(result + 32) = 0;
  *(result + 40) = 4;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = v0;
  return result;
}

double variable initialization expression of TextDrawing.View._textDrawingContext@<D0>(_OWORD *a1@<X8>)
{
  sub_11F44(v7);
  v2 = v11;
  a1[4] = v10;
  a1[5] = v2;
  v3 = v13;
  a1[6] = v12;
  a1[7] = v3;
  v4 = v7[1];
  *a1 = v7[0];
  a1[1] = v4;
  result = *&v8;
  v6 = v9;
  a1[2] = v8;
  a1[3] = v6;
  return result;
}

id variable initialization expression of SyncedLyricsViewController.contentView()
{
  v0 = objc_allocWithZone(UIView);

  return [v0 init];
}

uint64_t variable initialization expression of TitleSectionHeaderView.systemStyleButtonAttributedTitle()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = NSFontAttributeName;
  v1 = objc_opt_self();
  v2 = NSFontAttributeName;
  v3 = [v1 preferredFontForTextStyle:UIFontTextStyleBody];
  *(inited + 64) = sub_13C80(0, &qword_DE6EE0);
  *(inited + 40) = v3;
  sub_96EB8(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &qword_DE6EE8);
  v4 = objc_allocWithZone(NSAttributedString);
  v5 = sub_AB9260();
  type metadata accessor for Key(0);
  sub_131E0(&qword_DE6EF0, type metadata accessor for Key);
  isa = sub_AB8FD0().super.isa;

  [v4 initWithString:v5 attributes:isa];

  return 0;
}

id variable initialization expression of TitleSectionHeaderView.artworkPlaceholder@<X0>(uint64_t a1@<X8>)
{
  v2 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v10 = v2[3];
  *a1 = *v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v2 + 2);
  v6 = v3;
  v7 = v4;
  v8 = v5;

  return v10;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id variable initialization expression of EnvironmentMonitorObserver.environmentMonitor()
{
  v0 = [objc_opt_self() sharedMonitor];

  return v0;
}

_BYTE *variable initialization expression of CircleImageView.textStackView()
{
  type metadata accessor for TextStackView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  v0[v1] = 0;
  return v0;
}

double variable initialization expression of TextStackView.exclusionRectangle@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

double variable initialization expression of PlaybackController.nowPlayingPresentationDescriptor@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t variable initialization expression of JSInlineSocialUpsellViewController.artworkCachingReference()
{
  type metadata accessor for Artwork.CachingReference();

  return swift_allocObject();
}

uint64_t sub_F30C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t (*a4)(void))
{
  a2(0);
  swift_allocObject();
  return a4();
}

id variable initialization expression of BrowseCollectionViewController.artworkPrefetchingController()
{
  v0 = objc_allocWithZone(type metadata accessor for old_ArtworkPrefetchingController());

  return [v0 init];
}

uint64_t sub_F3F4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

double _s16MusicApplication34BackgroundLockupCollectionViewCellC17artworkEdgeInsetsSo06UIEdgeJ0Vvpfi_0()
{
  if (qword_DE6AB8 != -1)
  {
    swift_once();
  }

  return *&xmmword_E714F0;
}

double sub_F4E4()
{
  if (qword_DE6AC0 != -1)
  {
    swift_once();
  }

  return *&xmmword_E71560;
}

uint64_t variable initialization expression of VerticalLockupCollectionViewCell.artworkCornerTreatment@<X0>(uint64_t a1@<X8>)
{
  v2 = UIView.Corner.medium.unsafeMutableAddressor();
  v3 = sub_ABA680();
  v6 = *(v3 - 8);
  (*(v6 + 16))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

double variable initialization expression of GroupActivitiesManager._reaction@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t _s16MusicApplication15CircleImageViewC16artworkComponent33_F22433F41B7442BCFF09A5933FBED1B2LL0A6CoreUI7ArtworkVAAE0G0Cvpfi_0()
{
  type metadata accessor for ArtworkComponentImageView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v1 = sub_80104(v0);

  return v1;
}

__n128 variable initialization expression of VerticalLockupCollectionViewCell.selectedBackgroundViewConfiguration@<Q0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() systemLightGrayColor];
  *a1 = 0;
  *(a1 + 8) = v2;
  __asm { FMOV            V0.2D, #-6.0 }

  *(a1 + 16) = result;
  *(a1 + 32) = xmmword_AF4ED0;
  return result;
}

id sub_F734(void (*a1)(void))
{
  a1(0);
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v1 init];
}

void *_s16MusicApplication31PageHeaderContentViewControllerC16textDrawingCache33_50AACA7B112BA1A6FF24BB2BBEB15826LLAA04TextI0V0J0Cvpfi_0()
{
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  return TextDrawing.Cache.init()();
}

id variable initialization expression of Search.configuration@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  result = [objc_opt_self() deviceMediaLibrary];
  if (result)
  {
    *(a1 + 8) = result;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = &_swiftEmptySetSingleton;
    *(a1 + 72) = &_swiftEmptySetSingleton;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id variable initialization expression of Search.Configuration.mediaLibrary()
{
  result = [objc_opt_self() deviceMediaLibrary];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

BOOL sub_F8F0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_F9E0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void *sub_FA10@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_FA3C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

Swift::Int sub_FAAC()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_ABB5D0(v1);
  return sub_ABB610();
}

Swift::Int sub_FB20()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_ABB5D0(v1);
  return sub_ABB610();
}

uint64_t sub_FB64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_AB92A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_FB90(uint64_t a1, id *a2)
{
  result = sub_AB9280();
  *a2 = 0;
  return result;
}

uint64_t sub_FC08(uint64_t a1, id *a2)
{
  v3 = sub_AB9290();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_FC88@<X0>(void *a1@<X8>)
{
  sub_AB92A0();
  v2 = sub_AB9260();

  *a1 = v2;
  return result;
}

uint64_t sub_FCCC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1FCD3C();

  *a1 = v2;
  return result;
}

uint64_t sub_FD1C(uint64_t a1)
{
  v2 = sub_131E0(&qword_DE78A8, type metadata accessor for AVError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_FD88(uint64_t a1)
{
  v2 = sub_131E0(&qword_DE78A8, type metadata accessor for AVError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_FDF4(void *a1, uint64_t a2)
{
  v4 = sub_131E0(&qword_DE78A8, type metadata accessor for AVError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_FEA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_131E0(&qword_DE78A8, type metadata accessor for AVError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_FF24()
{
  sub_ABB5C0();
  sub_AB90E0();
  return sub_ABB610();
}

uint64_t sub_FF84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_13C48(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_FFC4()
{
  sub_131E0(&qword_DE7540, type metadata accessor for TextStyle);
  sub_131E0(&qword_DE7548, type metadata accessor for TextStyle);

  return sub_ABB110();
}

uint64_t sub_10080()
{
  sub_131E0(&qword_DE6EF0, type metadata accessor for Key);
  sub_131E0(&qword_DE7588, type metadata accessor for Key);

  return sub_ABB110();
}

uint64_t sub_1013C()
{
  sub_131E0(&unk_DE7560, type metadata accessor for ICStoreArtworkInfoCropStyle);
  sub_131E0(&qword_E242F0, type metadata accessor for ICStoreArtworkInfoCropStyle);

  return sub_ABB110();
}

uint64_t sub_101F8(uint64_t a1)
{
  v2 = sub_131E0(&qword_DE7870, type metadata accessor for AVError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10264(uint64_t a1)
{
  v2 = sub_131E0(&qword_DE7870, type metadata accessor for AVError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_102D4(uint64_t a1)
{
  v2 = sub_131E0(&qword_DE78A8, type metadata accessor for AVError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_131E0(&qword_DE78A8, type metadata accessor for AVError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_103C4()
{
  sub_131E0(&qword_DE7550, type metadata accessor for WaitingReason);
  sub_131E0(&qword_DE7558, type metadata accessor for WaitingReason);

  return sub_ABB110();
}

uint64_t sub_10480()
{
  sub_131E0(&qword_DE78C8, type metadata accessor for AttributeName);
  sub_131E0(&unk_DE78D0, type metadata accessor for AttributeName);

  return sub_ABB110();
}

uint64_t sub_1053C()
{
  sub_131E0(&qword_E00E20, type metadata accessor for Option);
  sub_131E0(&unk_DE78E0, type metadata accessor for Option);

  return sub_ABB110();
}

uint64_t sub_105F8()
{
  sub_131E0(&unk_E05380, type metadata accessor for InfoKey);
  sub_131E0(&unk_DE78F0, type metadata accessor for InfoKey);

  return sub_ABB110();
}

uint64_t sub_106B4@<X0>(void *a1@<X8>)
{
  v2 = sub_AB9260();

  *a1 = v2;
  return result;
}

uint64_t sub_106FC()
{
  sub_131E0(&qword_E0CA20, type metadata accessor for OpenExternalURLOptionsKey);
  sub_131E0(&qword_DE7900, type metadata accessor for OpenExternalURLOptionsKey);

  return sub_ABB110();
}

uint64_t sub_107B8()
{
  sub_AB92A0();
  v0 = sub_AB9540();

  return v0;
}

uint64_t sub_107F4()
{
  sub_AB92A0();
  sub_AB93F0();
}

Swift::Int sub_10848()
{
  sub_AB92A0();
  sub_ABB5C0();
  sub_AB93F0();
  v0 = sub_ABB610();

  return v0;
}

uint64_t sub_108BC()
{
  v0 = sub_AB92A0();
  v2 = v1;
  if (v0 == sub_AB92A0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_ABB3C0();
  }

  return v5 & 1;
}

Swift::Int sub_10944(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE75A8);
    v3 = sub_ABAD50();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v7 = *(v6 + v4);
      sub_ABB5C0();
      v8 = v7 - 3;
      if ((v7 - 3) >= 6)
      {
        sub_ABB5D0(6uLL);
        v8 = v7;
      }

      sub_ABB5D0(v8);
      result = sub_ABB610();
      v10 = -1 << *(v3 + 32);
      v11 = result & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      v15 = *(v3 + 48);
      if (((1 << v11) & v13) != 0)
      {
        break;
      }

LABEL_30:
      *(v5 + 8 * v12) = v13 | v14;
      *(v15 + v11) = v7;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v20;
LABEL_3:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    v16 = ~v10;
    while (1)
    {
      v17 = *(v15 + v11);
      if (v17 > 5)
      {
        switch(v17)
        {
          case 6u:
            if (v7 == 6)
            {
              goto LABEL_3;
            }

            goto LABEL_9;
          case 7u:
            if (v7 == 7)
            {
              goto LABEL_3;
            }

            goto LABEL_9;
          case 8u:
            if (v7 == 8)
            {
              goto LABEL_3;
            }

            goto LABEL_9;
        }
      }

      else
      {
        switch(v17)
        {
          case 3u:
            if (v7 == 3)
            {
              goto LABEL_3;
            }

            goto LABEL_9;
          case 4u:
            if (v7 == 4)
            {
              goto LABEL_3;
            }

            goto LABEL_9;
          case 5u:
            if (v7 == 5)
            {
              goto LABEL_3;
            }

            goto LABEL_9;
        }
      }

      if ((v7 - 9) <= 0xF9u && v17 == v7)
      {
        goto LABEL_3;
      }

LABEL_9:
      v11 = (v11 + 1) & v16;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if ((v13 & (1 << v11)) == 0)
      {
        goto LABEL_30;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_10B30(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_ABB060();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7508);
      result = sub_ABAD50();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
LABEL_4:
    v5 = *(v4 + 16);
    if (!v5)
    {
      return v3;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = sub_ABB060();
  v5 = result;
  if (!result)
  {
    return v3;
  }

LABEL_9:
  v6 = v3 + 56;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
LABEL_12:
    while (1)
    {
      result = sub_35FAB8(v7, v1);
      v8 = __OFADD__(v7++, 1);
      if (v8)
      {
        break;
      }

      v9 = result;
      sub_ABB5C0();
      v10 = sub_127604();
      sub_ABB5D0(v10);
      result = sub_ABB610();
      v11 = ~(-1 << v3[32]);
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *&v6[8 * (i >> 6)];
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        result = sub_127604();
        if (result == *(v9 + 56))
        {
          swift_unknownObjectRelease();
          if (v7 == v5)
          {
            return v3;
          }

          goto LABEL_12;
        }
      }

      *&v6[8 * (i >> 6)] = (1 << i) | v13;
      *(*(v3 + 6) + 8 * i) = v9;
      v14 = *(v3 + 2);
      v8 = __OFADD__(v14, 1);
      v15 = v14 + 1;
      if (v8)
      {
        goto LABEL_30;
      }

      *(v3 + 2) = v15;
      if (v7 == v5)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    v16 = 0;
    v25 = v1 + 32;
    v17 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    while (v16 != v17)
    {
      v18 = *(v25 + 8 * v16);
      sub_ABB5C0();
      v19 = sub_127604();
      sub_ABB5D0(v19);
      result = sub_ABB610();
      v20 = ~(-1 << v3[32]);
      for (j = result & v20; ; j = (j + 1) & v20)
      {
        v22 = *&v6[8 * (j >> 6)];
        if (((1 << j) & v22) == 0)
        {
          break;
        }

        result = sub_127604();
        if (result == *(v18 + 56))
        {
          goto LABEL_21;
        }
      }

      *&v6[8 * (j >> 6)] = (1 << j) | v22;
      *(*(v3 + 6) + 8 * j) = v18;
      v23 = *(v3 + 2);
      v8 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v8)
      {
        goto LABEL_32;
      }

      *(v3 + 2) = v24;

LABEL_21:
      if (++v16 == v5)
      {
        return v3;
      }
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_10DBC(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_ABB060())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE74F8);
      v3 = sub_ABAD50();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_ABB060();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = sub_35F8D4(v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_ABA780(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_13C80(0, &qword_DE7500);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_ABA790();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = v1 + 32;
    v38 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    while (v22 != v38)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = sub_ABA780(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_13C80(0, &qword_DE7500);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_ABA790();

          if (v33)
          {

            v5 = v39;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v39;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_110AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE7670);
    v3 = sub_ABAD50();
    v4 = 0;
    v5 = v3 + 56;
    v30 = v1;
    v31 = a1 + 32;
    while (1)
    {
      v9 = v31 + 24 * v4;
      v11 = *v9;
      v10 = *(v9 + 8);
      v12 = *(v9 + 16);
      sub_ABB5C0();
      if (v12)
      {
        sub_ABB5D0(1uLL);
        v13 = v11;
        sub_ABA7A0();
      }

      else
      {
        sub_ABB5D0(0);

        sub_AB93F0();
      }

      v14 = sub_ABB610();
      v15 = ~(-1 << *(v3 + 32));
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *(v5 + 8 * v17);
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) != 0)
      {
        v32 = v4;
        do
        {
          v20 = *(v3 + 48) + 24 * v16;
          v21 = *v20;
          v22 = *(v20 + 8);
          if (*(v20 + 16))
          {
            if (v12)
            {
              sub_13C80(0, &qword_DFA720);
              v23 = v21;
              v24 = sub_ABA790();
              sub_13CC8(v21, v22, 1);
              if (v24)
              {
                v6 = v11;
                v7 = v10;
                v8 = 1;
LABEL_3:
                sub_13CC8(v6, v7, v8);
                v1 = v30;
                v4 = v32;
                goto LABEL_4;
              }
            }
          }

          else if ((v12 & 1) == 0)
          {
            v25 = v21 == v11 && v22 == v10;
            if (v25 || (sub_ABB3C0() & 1) != 0)
            {
              v6 = v11;
              v7 = v10;
              v8 = 0;
              goto LABEL_3;
            }
          }

          v16 = (v16 + 1) & v15;
          v17 = v16 >> 6;
          v18 = *(v5 + 8 * (v16 >> 6));
          v19 = 1 << v16;
        }

        while ((v18 & (1 << v16)) != 0);
        v1 = v30;
        v4 = v32;
      }

      *(v5 + 8 * v17) = v18 | v19;
      v26 = *(v3 + 48) + 24 * v16;
      *v26 = v11;
      *(v26 + 8) = v10;
      *(v26 + 16) = v12;
      v27 = *(v3 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      *(v3 + 16) = v29;
LABEL_4:
      if (++v4 == v1)
      {
        return;
      }
    }

    __break(1u);
  }
}

Swift::Int sub_112FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE75A0);
    v3 = sub_ABAD50();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_ABB5C0();
      sub_ABB5D0(v10);
      result = sub_ABB610();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_11460(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_ABAD50();
    v5 = 0;
    v6 = v4 + 56;
    v7 = a1 + 32;
    while (1)
    {
      v11 = *(v7 + v5);
      sub_ABB5C0();
      sub_ABB5D0(v11);
      result = sub_ABB610();
      v13 = ~(-1 << *(v4 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v6 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v4 + 48);
      if ((v17 & v16) != 0)
      {
        while (v11 != *(v18 + v14))
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v6 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v11;
        v8 = *(v4 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v4 + 16) = v10;
      }

      if (++v5 == v2)
      {
        return v4;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_11594(uint64_t a1)
{
  v2 = sub_AB3690();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7520);
    v9 = sub_ABAD50();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_131E0(&qword_DE7528, &type metadata accessor for Calendar.Component);
      v16 = sub_AB90D0();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_131E0(&qword_DE7530, &type metadata accessor for Calendar.Component);
          v23 = sub_AB91C0();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_118B4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_ABB060())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE7590);
      v3 = sub_ABAD50();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_ABB060();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = sub_3605EC(v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_ABA780(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_13C80(0, &qword_DF12A0);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_ABA790();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = v1 + 32;
    v38 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    while (v22 != v38)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = sub_ABA780(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_13C80(0, &qword_DF12A0);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_ABA790();

          if (v33)
          {

            v5 = v39;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v39;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

Swift::Int sub_11BA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7538);
    v3 = sub_ABAD50();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_ABB5C0();

      sub_AB93F0();
      result = sub_ABB610();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_ABB3C0();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int sub_11D0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7740);
    v3 = sub_ABAD50();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    while (1)
    {
      v6 = *(v25 + v4);
      sub_ABB5C0();
      if (v6)
      {
        v7 = 0x6F4E6E657473696CLL;
      }

      else
      {
        v7 = 0x487972617262696CLL;
      }

      if (v6)
      {
        v8 = 0xEF72656461654877;
      }

      else
      {
        v8 = 0xED00007265646165;
      }

      sub_AB93F0();

      result = sub_ABB610();
      v10 = -1 << *(v3 + 32);
      v11 = result & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) != 0)
      {
        v23 = v6;
        v15 = ~v10;
        do
        {
          if (*(*(v3 + 48) + v11))
          {
            v16 = 0x6F4E6E657473696CLL;
          }

          else
          {
            v16 = 0x487972617262696CLL;
          }

          if (*(*(v3 + 48) + v11))
          {
            v17 = 0xEF72656461654877;
          }

          else
          {
            v17 = 0xED00007265646165;
          }

          if (v16 == v7 && v17 == v8)
          {

            goto LABEL_4;
          }

          v19 = sub_ABB3C0();

          if (v19)
          {
            goto LABEL_4;
          }

          v11 = (v11 + 1) & v15;
          v12 = v11 >> 6;
          v13 = *(v5 + 8 * (v11 >> 6));
          v14 = 1 << v11;
        }

        while ((v13 & (1 << v11)) != 0);
        LOBYTE(v6) = v23;
      }

      *(v5 + 8 * v12) = v13 | v14;
      *(*(v3 + 48) + v11) = v6;
      v20 = *(v3 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      *(v3 + 16) = v22;
LABEL_4:
      if (++v4 == v24)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

double sub_11F44(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void sub_11F70(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_ABB060())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7578);
      v3 = sub_ABAD50();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_ABB060();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = sub_36125C(v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_ABA780(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_13C80(0, &qword_DE7580);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_ABA790();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = v1 + 32;
    v38 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    while (v22 != v38)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = sub_ABA780(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_13C80(0, &qword_DE7580);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_ABA790();

          if (v33)
          {

            v5 = v39;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v39;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void *sub_12260(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptySetSingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7570);
  v3 = sub_ABAD50();
  v4 = 0;
  v5 = v3 + 56;
  v27 = v1;
  v28 = a1 + 32;
  do
  {
    v6 = *(v28 + v4++);
    sub_ABB5C0();
    sub_AB93F0();

    v7 = sub_ABB610();
    v8 = ~(-1 << *(v3 + 32));
    v9 = v7 & v8;
    v10 = (v7 & v8) >> 6;
    v11 = *(v5 + 8 * v10);
    v12 = 1 << (v7 & v8);
    if ((v12 & v11) != 0)
    {
      while (1)
      {
        v13 = 0xEA00000000007365;
        v14 = 0x6974697669746361;
        switch(*(*(v3 + 48) + v9))
        {
          case 1:
            v13 = 0xE600000000000000;
            v14 = 0x736D75626C61;
            break;
          case 2:
            v13 = 0xE700000000000000;
            v14 = 0x73747369747261;
            break;
          case 3:
            v13 = 0xE800000000000000;
            v14 = 0x73726F7461727563;
            break;
          case 4:
            v13 = 0xE500000000000000;
            v14 = 0x73676E6F73;
            break;
          case 5:
            v13 = 0xE800000000000000;
            v14 = 0x736E6F6974617473;
            break;
          case 6:
            v14 = 0x75632D656C707061;
            v13 = 0xEE0073726F746172;
            break;
          case 7:
            v14 = 0x6169726F74696465;
            v13 = 0xEF736D6574692D6CLL;
            break;
          case 8:
            v14 = 0x6F6D2D636973756DLL;
            v15 = 1936025974;
            goto LABEL_22;
          case 9:
            v14 = 0x69762D636973756DLL;
            v15 = 1936680292;
LABEL_22:
            v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 0xA:
            v14 = 0x6F736970652D7674;
            v13 = 0xEB00000000736564;
            break;
          case 0xB:
            v13 = 0xE800000000000000;
            v14 = 0x73776F68732D7674;
            break;
          case 0xC:
            v14 = 0x646564616F6C7075;
            v13 = 0xEF736F656469762DLL;
            break;
          case 0xD:
            v14 = 0x6C2D64726F636572;
            v13 = 0xED0000736C656261;
            break;
          case 0xE:
            v14 = 0x702D6C6169636F73;
            v13 = 0xEF73656C69666F72;
            break;
          case 0xF:
            v14 = 0x7473696C79616C70;
            v13 = 0xE900000000000073;
            break;
          default:
            break;
        }

        v16 = 0x6974697669746361;
        v17 = 0xEA00000000007365;
        switch(v6)
        {
          case 1:
            v17 = 0xE600000000000000;
            if (v14 == 0x736D75626C61)
            {
              goto LABEL_50;
            }

            goto LABEL_51;
          case 2:
            v17 = 0xE700000000000000;
            if (v14 != 0x73747369747261)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 3:
            v17 = 0xE800000000000000;
            if (v14 != 0x73726F7461727563)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 4:
            v17 = 0xE500000000000000;
            if (v14 != 0x73676E6F73)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 5:
            v17 = 0xE800000000000000;
            if (v14 != 0x736E6F6974617473)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 6:
            v17 = 0xEE0073726F746172;
            if (v14 != 0x75632D656C707061)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 7:
            v18 = 0x6169726F74696465;
            v19 = 0x6D6574692D6CLL;
            goto LABEL_40;
          case 8:
            v20 = 0x6F6D2D636973756DLL;
            v21 = 1936025974;
            goto LABEL_55;
          case 9:
            v20 = 0x69762D636973756DLL;
            v21 = 1936680292;
LABEL_55:
            v17 = v21 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v14 != v20)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 10:
            v16 = 0x6F736970652D7674;
            v17 = 0xEB00000000736564;
            goto LABEL_49;
          case 11:
            v17 = 0xE800000000000000;
            if (v14 != 0x73776F68732D7674)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 12:
            v18 = 0x646564616F6C7075;
            v19 = 0x6F656469762DLL;
            goto LABEL_40;
          case 13:
            v17 = 0xED0000736C656261;
            if (v14 != 0x6C2D64726F636572)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 14:
            v18 = 0x702D6C6169636F73;
            v19 = 0x656C69666F72;
LABEL_40:
            v17 = v19 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
            if (v14 != v18)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 15:
            v17 = 0xE900000000000073;
            if (v14 != 0x7473696C79616C70)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          default:
LABEL_49:
            if (v14 != v16)
            {
              goto LABEL_51;
            }

LABEL_50:
            if (v13 == v17)
            {

              goto LABEL_4;
            }

LABEL_51:
            v22 = sub_ABB3C0();

            if (v22)
            {
              goto LABEL_4;
            }

            v9 = (v9 + 1) & v8;
            v10 = v9 >> 6;
            v11 = *(v5 + 8 * (v9 >> 6));
            v12 = 1 << v9;
            if ((v11 & (1 << v9)) == 0)
            {
              goto LABEL_57;
            }

            break;
        }
      }
    }

LABEL_57:
    *(v5 + 8 * v10) = v11 | v12;
    *(*(v3 + 48) + v9) = v6;
    v23 = *(v3 + 16);
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      __break(1u);
      JUMPOUT(0x129F8);
    }

    *(v3 + 16) = v25;
LABEL_4:
    ;
  }

  while (v4 != v27);
  return v3;
}

uint64_t sub_12AB8()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_AB6830();

    return sub_AB5D50();
  }

  else
  {
    sub_AB5E70();
    swift_getWitnessTable();
    sub_AB6700();
    sub_AB5D50();
    sub_ABA9C0();
    swift_getWitnessTable();
    sub_AB5E70();
    swift_getWitnessTable();
    sub_AB6700();
    return sub_AB5D50();
  }
}

uint64_t sub_12C1C()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_AB6830();
    sub_AB5D50();
  }

  else
  {
    sub_AB5E70();
    swift_getWitnessTable();
    sub_AB6700();
    sub_AB5D50();
    sub_ABA9C0();
    swift_getWitnessTable();
    sub_AB5E70();
    swift_getWitnessTable();
    sub_AB6700();
    sub_AB5D50();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_12E1C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_12EF0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_12F10(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for GlowModifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GlowModifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_131E0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_13C48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_13C80(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_13CC8(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_143FC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_14494()
{
  result = qword_DE7898;
  if (!qword_DE7898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE7898);
  }

  return result;
}

id JSUserNotificationAuthorizationViewController.init(with:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MusicApplication45JSUserNotificationAuthorizationViewController_engagementViewController] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication45JSUserNotificationAuthorizationViewController_userNotificationAuthorizationViewModel] = a1;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", 0, 0);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 engagementRequestForFullSheet];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12[4] = sub_14F30;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_151E0;
  v12[3] = &block_descriptor;
  v10 = _Block_copy(v12);

  [v8 addFinishBlock:v10];
  _Block_release(v10);

  return v7;
}

uint64_t sub_148B4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

id CTRunRef.PartialRunView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

void JSUserNotificationAuthorizationViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication45JSUserNotificationAuthorizationViewController_engagementViewController) = 0;
  sub_ABAFD0();
  __break(1u);
}

Swift::Void __swiftcall JSUserNotificationAuthorizationViewController.viewDidLoad()()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "viewDidLoad");
  v2 = [v0 navigationController];
  if (v2)
  {
    v3 = v2;
    [v2 setModalInPresentation:(*&stru_108.sectname[swift_isaMask & **&v0[OBJC_IVAR____TtC16MusicApplication45JSUserNotificationAuthorizationViewController_userNotificationAuthorizationViewModel]])() & 1];
  }

  v4 = *&v0[OBJC_IVAR____TtC16MusicApplication45JSUserNotificationAuthorizationViewController_engagementViewController];
  if (v4)
  {
    v5 = v4;
    v6 = [v1 view];
    if (v6)
    {
      v7 = v6;
      v8 = [v5 view];
      [v7 addSubview:v8];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_14B88(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a2)
    {
      swift_errorRetain();
      if (qword_DE6700 != -1)
      {
        swift_once();
      }

      v6 = sub_AB4BC0();
      __swift_project_value_buffer(v6, qword_DE7A30);
      swift_errorRetain();
      v7 = sub_AB4BA0();
      v8 = sub_AB9F30();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v26 = v10;
        *v9 = 136315138;
        swift_getErrorValue();
        v11 = sub_ABB520();
        v13 = sub_425E68(v11, v12, &v26);

        *(v9 + 4) = v13;
        _os_log_impl(&dword_0, v7, v8, "Authorization failed with error: %s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v10);
      }

      v14 = *&v5[OBJC_IVAR____TtC16MusicApplication45JSUserNotificationAuthorizationViewController_userNotificationAuthorizationViewModel];
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v16 = *&stru_108.segname[(swift_isaMask & *v14) + 8];

      v16(sub_15ED4, v15);
    }

    else if (a1 && (v17 = [a1 request]) != 0)
    {
      v18 = v17;
      sub_13C80(0, &qword_DE8ED0);
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      *(v19 + 24) = v5;
      v20 = v18;
      v21 = v5;
      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_15ECC, v19);
    }

    else
    {
      if (qword_DE6700 != -1)
      {
        swift_once();
      }

      v22 = sub_AB4BC0();
      __swift_project_value_buffer(v22, qword_DE7A30);
      v23 = sub_AB4BA0();
      v24 = sub_AB9F30();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_0, v23, v24, "Authorization request is missing.", v25, 2u);
      }
    }
  }
}

void sub_14F38(uint64_t a1, char *a2)
{
  sub_13C80(0, &qword_DEE560);
  v4 = static ICStoreRequestContext.storeFlow.getter();
  v5 = [objc_allocWithZone(ICAMSBagAdapter) initWithRequestContext:v4];

  v6 = [objc_allocWithZone(AMSUIEngagementTaskViewController) initWithRequest:a1 bag:v5];
  v7 = [v6 navigationItem];
  [v7 setHidesBackButton:1 animated:0];

  v8 = *&a2[OBJC_IVAR____TtC16MusicApplication45JSUserNotificationAuthorizationViewController_engagementViewController];
  *&a2[OBJC_IVAR____TtC16MusicApplication45JSUserNotificationAuthorizationViewController_engagementViewController] = v6;
  v9 = v6;

  v10 = [v9 startEngagement];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18[4] = sub_161C4;
  v18[5] = v11;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_311FA0;
  v18[3] = &block_descriptor_8;
  v12 = _Block_copy(v18);

  [v10 addFinishBlock:v12];
  _Block_release(v12);

  [a2 addChildViewController:v9];
  if (![a2 isViewLoaded])
  {
    goto LABEL_5;
  }

  v13 = [v9 view];
  v14 = [a2 view];
  if (v14)
  {
    v15 = v14;
    [v14 bounds];
    [v13 setFrame:?];

    v16 = [a2 view];
    if (v16)
    {
      v17 = v16;
      [v16 addSubview:v13];

LABEL_5:
      [v9 didMoveToParentViewController:a2];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_151E0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_15284(void *a1)
{
  if ([a1 authorizationStatus] == &dword_0 + 2)
  {
    v1 = [objc_opt_self() sharedManager];
    [v1 setAccountNotificationsArtistContentFeature:1 withCompletionHandler:0];

    if (qword_DE6700 != -1)
    {
      swift_once();
    }

    v2 = sub_AB4BC0();
    __swift_project_value_buffer(v2, qword_DE7A30);
    oslog = sub_AB4BA0();
    v3 = sub_AB9F50();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 67109120;
      *(v4 + 1) = 1;
      v5 = "Attempting to update account notification settings. Notifications enabled: %{BOOL}d.";
      v6 = v3;
      v7 = oslog;
      v8 = v4;
      v9 = 8;
LABEL_10:
      _os_log_impl(&dword_0, v7, v6, v5, v8, v9);
    }
  }

  else
  {
    if (qword_DE6700 != -1)
    {
      swift_once();
    }

    v10 = sub_AB4BC0();
    __swift_project_value_buffer(v10, qword_DE7A30);
    oslog = sub_AB4BA0();
    v11 = sub_AB9F50();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      v5 = "Did not update account notification settings. User did not authorize device notifications.";
      v6 = v11;
      v7 = oslog;
      v8 = v12;
      v9 = 2;
      goto LABEL_10;
    }
  }
}

void sub_1546C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_154D4(void *a1)
{
  v2 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [v9 presentingViewController];
    if (v10)
    {
      v11 = v10;
      if (a1)
      {
        v12 = a1;
        v13 = [v9 navigationController];

        if (v13)
        {
          memset(v38, 0, sizeof(v38));
          v39 = 0;
          v40 = xmmword_AF7710;
          v30 = v13;
          PresentationSource.init(viewController:position:)(v30, v38, v37);
          v14 = *&v9[OBJC_IVAR____TtC16MusicApplication45JSUserNotificationAuthorizationViewController_userNotificationAuthorizationViewModel];
          sub_15F28(v37, v36);
          v15 = type metadata accessor for PlaybackIntentDescriptor(0);
          memset(v34, 0, sizeof(v34));
          v35 = 0;
          (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
          sub_15F84(v36, v32, &unk_DEA520);
          sub_15F84(v34, (v4 + 104), &unk_DE8E30);
          v16 = *(v2 + 28);
          v29 = v12;
          sub_15F84(v7, &v4[v16], &unk_DEA510);
          *v4 = 0u;
          *(v4 + 1) = 0u;
          *(v4 + 2) = 0u;
          *(v4 + 3) = 0u;
          *(v4 + 8) = 1;
          *(v4 + 9) = 0;
          *(v4 + 10) = 0;
          *(v4 + 11) = 0;
          v17 = v14;
          sub_160B4(v32, v4, &unk_DEA520);
          *(v4 + 12) = 0;
          v31[3] = v2;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v31);
          sub_16050(v4, boxed_opaque_existential_0);
          sub_12E1C(v7, &unk_DEA510);
          sub_12E1C(v34, &unk_DE8E30);
          sub_12E1C(v36, &unk_DEA520);
          memset(v33, 0, 32);
          v32[1] = 0;
          v32[2] = 0;
          v32[0] = v14;
          sub_160B4(v31, v33, &unk_DE8E40);
          v19 = *JSSegueCoordinator.shared.unsafeMutableAddressor();
          v20 = v29;
          JSSegueCoordinator.perform(segue:with:)(v29, v32);

          sub_1611C(v37);
          sub_16170(v32);
        }

        else
        {
          if (qword_DE6700 != -1)
          {
            swift_once();
          }

          v25 = sub_AB4BC0();
          __swift_project_value_buffer(v25, qword_DE7A30);
          v26 = sub_AB4BA0();
          v27 = sub_AB9F30();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            *v28 = 0;
            _os_log_impl(&dword_0, v26, v27, "AuthorizationViewController does not have a navigationController, dismissing prewarm sheet.", v28, 2u);
          }

          [v11 dismissViewControllerAnimated:1 completion:0];
        }
      }

      else
      {

        [v11 dismissViewControllerAnimated:1 completion:0];
        if (qword_DE6700 != -1)
        {
          swift_once();
        }

        v21 = sub_AB4BC0();
        __swift_project_value_buffer(v21, qword_DE7A30);
        v22 = sub_AB4BA0();
        v23 = sub_AB9F50();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_0, v22, v23, "No segue provided from scripting environment, dismissing prewarm sheet.", v24, 2u);
        }
      }
    }

    else
    {
    }
  }
}

uint64_t sub_159F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    if (a2)
    {
      swift_errorRetain();
      if (qword_DE6700 != -1)
      {
        swift_once();
      }

      v5 = sub_AB4BC0();
      __swift_project_value_buffer(v5, qword_DE7A30);
      swift_errorRetain();
      v6 = sub_AB4BA0();
      v7 = sub_AB9F30();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v16 = v9;
        *v8 = 136315138;
        swift_getErrorValue();
        v10 = sub_ABB520();
        v12 = sub_425E68(v10, v11, &v16);

        *(v8 + 4) = v12;
        _os_log_impl(&dword_0, v6, v7, "startEngagement failed with error: %s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v9);
      }
    }

    else
    {
      sub_161CC();
    }

    v13 = *&v4[OBJC_IVAR____TtC16MusicApplication45JSUserNotificationAuthorizationViewController_userNotificationAuthorizationViewModel];
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = *&stru_108.segname[(swift_isaMask & *v13) + 8];

    v15(sub_16408, v14);
  }

  return result;
}

id SyncedLyricsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_AB9260();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id DeviceCapabilitiesObjC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_15DCC()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_DE7A30);
  __swift_project_value_buffer(v0, qword_DE7A30);
  sub_13C80(0, &qword_DED8C0);
  OS_os_log.init(musicCategory:)();
  return sub_AB4BD0();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_15E8C()
{

  return swift_deallocObject();
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_15F84(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_16050(uint64_t a1, uint64_t a2)
{
  v4 = _s23MusicPerformanceContextVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_160B4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_161CC()
{
  sub_13C80(0, &qword_DF0600);
  v0 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (v0)
  {

    v1 = [objc_opt_self() currentNotificationCenter];
    aBlock[4] = sub_15284;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1546C;
    aBlock[3] = &block_descriptor_13;
    v2 = _Block_copy(aBlock);
    [v1 getNotificationSettingsWithCompletionHandler:v2];
    _Block_release(v2);
  }

  else
  {
    if (qword_DE6700 != -1)
    {
      swift_once();
    }

    v3 = sub_AB4BC0();
    __swift_project_value_buffer(v3, qword_DE7A30);
    oslog = sub_AB4BA0();
    v4 = sub_AB9F50();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, oslog, v4, "Unable to update Music Account settings because there is no active account.", v5, 2u);
    }
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_1640C(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7F40);
  __chkstk_darwin(v7 - 8);
  v9 = v88 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin(v10 - 8);
  v12 = v88 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v13 - 8);
  v15 = v88 - v14;
  v16 = sub_AB3820();
  __chkstk_darwin(v16);
  v20 = v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v3[8];
  if (!v21)
  {
    (*(v18 + 56))(v15, 1, 1);
    goto LABEL_12;
  }

  v101 = v12;
  v102 = a3;
  v100 = v9;
  v22 = v3;
  v23 = v18;
  v24 = v17;

  v103 = a2;
  v104 = a1;
  v25 = a2;
  v26 = v24;
  v27 = v23;
  v21(v3, a1, v25);
  sub_17654(v21);
  if ((*(v23 + 48))(v15, 1, v26) == 1)
  {
LABEL_12:
    sub_12E1C(v15, &unk_DE8E20);
    return;
  }

  v28 = *(v23 + 32);
  v29 = v20;
  v28(v20, v15, v26);
  v30 = v3[4];
  if (!v30 || (, v31 = v30(v20), sub_17654(v30), !v31))
  {
    (*(v27 + 8))(v29, v26);
    return;
  }

  ObjectType = swift_getObjectType();
  (*(v103 + 40))(v115, ObjectType);
  v33 = v116;
  if ((v116 & 0xFE) == 0xF8 || (v34 = *(&v116 + 1), v125 = v115[0], v126 = v115[1], v127 = v116, (v35 = [v31 relativeModelObjectForStoreLibraryPersonalization]) == 0))
  {
    (*(v27 + 8))(v29, v26);

    return;
  }

  v36 = v35;
  v99 = v34;
  v37 = [v102 window];
  if (!v37 || (v38 = v37, v39 = [v37 windowScene], v38, !v39))
  {
    (*(v27 + 8))(v29, v26);

    return;
  }

  v40 = static PresentationSource.topmost(in:)(v105);
  if (v108 != 1)
  {
    v97 = v39;
    v95 = v33;
    sub_17704(v105, &v109);
    v41 = [objc_allocWithZone(MPMutableSectionedCollection) init];
    v98 = v41;
    v42 = sub_AB9260();
    [v41 appendSection:v42];

    v96 = v36;
    [v41 appendItem:v36];
    v43 = v102;
    [v102 bounds];
    v128[0] = v43;
    v128[1] = v44;
    v128[2] = v45;
    v128[3] = v46;
    v128[4] = v47;
    v129 = 0;
    PresentationSource.Position.init(source:permittedArrowDirections:)(v128, 15, v117);
    v93 = v119;
    v94 = v118;
    v48 = v110;
    v91 = *(&v111 + 1);
    v49 = v111;
    v92 = v120;
    v89 = v113;
    v90 = v112;
    v88[1] = v114;
    v50 = v43;
    sub_17760(v48, *(&v48 + 1), v49, v91, v90, v89);
    v111 = v117[1];
    v110 = v117[0];
    v112 = v94;
    v113 = v93;
    v114 = v92;
    v94 = type metadata accessor for LibraryAddKeepLocalHandlingController();
    v51 = *(*v22 + 240);
    v52 = v98;
    v53 = v51();
    v54 = v53;
    v102 = v52;
    if ((v95 & 0xFE) == 0x7A)
    {

LABEL_18:
LABEL_24:
      v63 = v104;
LABEL_25:
      v39 = v97;
LABEL_26:
      if (swift_unknownObjectWeakLoadStrong())
      {
        v64 = v22[3];
        v65 = swift_getObjectType();
        (*(v64 + 8))(v22, v63, v103, &v125, v29, v65, v64);

        (*(v27 + 8))(v29, v26);
        swift_unknownObjectRelease();
      }

      else
      {
        (*(v27 + 8))(v29, v26);
      }

      sub_1611C(&v109);
      goto LABEL_30;
    }

    v55 = v95 >> 1;
    if (v95 >> 1 <= 0x7C)
    {
      if (v55 != 62)
      {
        if (v55 == 63)
        {
          goto LABEL_23;
        }

        goto LABEL_33;
      }

      v66 = v102;
      if ([v102 firstItem])
      {
        v93 = v54;
        objc_opt_self();
        v79 = swift_dynamicCastObjCClass();
        v63 = v104;
        v39 = v97;
        if (v79)
        {
          v80 = v79;
          if (([v79 libraryRemovalSupportedOptions] & 2) != 0)
          {
            sub_2BA534(v80, 0);
          }

          else
          {
            sub_2BAC50(v80, 0);
          }
        }

        swift_unknownObjectRelease();
        goto LABEL_26;
      }
    }

    else
    {
      if (v55 == 125)
      {
        v72 = [v102 firstItem];
        v63 = v104;
        v93 = v54;
        if (v72)
        {
          objc_opt_self();
          v72 = swift_dynamicCastObjCClass();
          if (!v72)
          {
            swift_unknownObjectRelease();
            v72 = 0;
          }
        }

        v100 = v72;
        v73 = sub_AB9990();
        v74 = v101;
        (*(*(v73 - 8) + 56))(v101, 1, 1, v73);
        sub_15F28(&v109, v105);
        sub_AB9940();
        v75 = sub_AB9930();
        v76 = swift_allocObject();
        *(v76 + 16) = v75;
        *(v76 + 24) = &protocol witness table for MainActor;
        sub_17704(v105, v76 + 32);
        sub_DBDC8(0, 0, v74, &unk_AF79B0, v76);

        goto LABEL_25;
      }

      if (v55 != 126)
      {
        if (v55 == 127)
        {
LABEL_23:
          v56 = sub_AB9990();
          v57 = v101;
          (*(*(v56 - 8) + 56))(v101, 1, 1, v56);
          sub_15F28(&v109, v105);
          v58 = swift_allocObject();
          *(v58 + 16) = 0;
          *(v58 + 24) = 0;
          v59 = v98;
          *(v58 + 32) = v94;
          *(v58 + 40) = v59;
          v60 = v126;
          *(v58 + 48) = v125;
          *(v58 + 64) = v60;
          *(v58 + 80) = v127;
          *(v58 + 96) = v54;
          *(v58 + 104) = 0;
          sub_17704(v105, v58 + 112);
          v61 = v54;
          v62 = v102;
          sub_DC0B8(0, 0, v57, &unk_AF79C0, v58);

          goto LABEL_24;
        }

LABEL_33:
        if ((v95 & 0x80) == 0)
        {
          v66 = v102;
          if ([v102 firstItem])
          {
            objc_opt_self();
            v67 = swift_dynamicCastObjCClass();
            if (v67)
            {
              v68 = v67;
              v69 = [objc_allocWithZone(MPModelLibraryKeepLocalChangeRequest) init];
              [v69 setModelObject:v68];
              [v69 setEnableState:3];
              v70 = v54;
              v71 = [objc_opt_self() sharedDeviceLibraryController];
              [v71 performKeepLocalChangeRequest:v69 withRelatedModelObjects:0];

              swift_unknownObjectRelease();
              goto LABEL_24;
            }

            swift_unknownObjectRelease();
            goto LABEL_18;
          }

          goto LABEL_49;
        }

        v81 = v53;
        v82 = v100;
        MusicLibrary.DownloadStatus.DownloadPauseReasons.init(mediaPlayerReason:)(v99, v100);
        v83 = sub_AB8230();
        v84 = *(v83 - 8);
        if ((*(v84 + 48))(v82, 1, v83) == 1)
        {
          v85 = &qword_DE7F40;
          v86 = v82;
        }

        else
        {
          MusicLibrary.DownloadStatus.DownloadPauseReasons.alert.getter(v121);
          (*(v84 + 8))(v82, v83);
          if (!v123)
          {
LABEL_57:

            goto LABEL_24;
          }

          v105[0] = v121[0];
          v105[1] = v121[1];
          v105[2] = v121[2];
          v106 = v122;
          v107 = v123;
          v108 = v124;
          v87 = Alert.uiAlertController.getter();
          PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v87, 1, 1, 0, 0);

          v85 = &unk_DE7F48;
          v86 = v121;
        }

        sub_12E1C(v86, v85);
        goto LABEL_57;
      }

      v66 = v102;
      if ([v102 firstItem])
      {
        v77 = v54;
        objc_opt_self();
        v78 = swift_dynamicCastObjCClass();
        v63 = v104;
        v39 = v97;
        if (v78)
        {
          sub_2B9FD0(v78, 0, &v109);
        }

        swift_unknownObjectRelease();
        goto LABEL_26;
      }
    }

LABEL_49:

    goto LABEL_18;
  }

  (*(v27 + 8))(v29, v26, v40);

  sub_12E1C(v105, &unk_DEA520);
LABEL_30:
}

void *sub_16FF4()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

uint64_t sub_1701C()
{
  sub_176DC(v0 + 16);
  sub_17654(*(v0 + 32));
  sub_17654(*(v0 + 48));
  sub_17654(*(v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_1709C(void *a1)
{
  *(v1 + 88) = a1;
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 80) = 0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 32) = 0u;
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v1 + 48) = sub_1764C;
  *(v1 + 56) = v3;
  v4 = a1;
  swift_retain_n();
  v5 = v4;
  sub_17654(0);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = *(v1 + 64);
  *(v1 + 64) = sub_17664;
  *(v1 + 72) = v6;
  sub_17654(v7);

  return v1;
}

id sub_1717C(uint64_t a1, uint64_t a2, void *a3)
{
  isa = sub_AB3770().super.isa;
  v5 = [a3 cellForItemAtIndexPath:isa];

  if (v5)
  {
    swift_getObjectType();
    if (!swift_conformsToProtocol2())
    {

      return 0;
    }
  }

  return v5;
}

uint64_t sub_1720C@<X0>(void *a1@<X3>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    swift_unknownObjectRetain();
    v9 = [a1 indexPathForCell:v8];
    if (v9)
    {
      v10 = v9;
      sub_AB3790();

      v11 = sub_AB3820();
      (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
    }

    else
    {
      v15 = sub_AB3820();
      (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    }

    sub_1766C(v6, a2);
    return swift_unknownObjectRelease();
  }

  else
  {
    v12 = sub_AB3820();
    v13 = *(*(v12 - 8) + 56);

    return v13(a2, 1, 1, v12);
  }
}

uint64_t sub_173D8()
{
  sub_176DC(v0 + 16);
  sub_17654(*(v0 + 32));
  sub_17654(*(v0 + 48));
  sub_17654(*(v0 + 64));

  return swift_deallocClassInstance();
}

id sub_1745C()
{
  result = *(v0 + 88);
  if (result)
  {
    result = [result results];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v2 = result;
    v3 = [result firstSection];

    if (!v3)
    {
      return 0;
    }

    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {
        swift_unknownObjectRelease();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_17578()
{
  sub_176DC(v0 + 16);
  sub_17654(*(v0 + 32));
  sub_17654(*(v0 + 48));
  sub_17654(*(v0 + 64));

  return v0;
}

uint64_t sub_175C8()
{
  sub_17578();

  return swift_deallocClassInstance();
}

uint64_t sub_17614()
{

  return swift_deallocObject();
}

uint64_t sub_17654(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1766C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_17760(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    sub_17774(a1, a2, a3, a4, a5, a6);
  }
}

void sub_17774(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 == 2)
  {
    swift_unknownObjectRelease();
  }

  else if (a6 <= 1u)
  {
  }
}

uint64_t sub_17798()
{
  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_17814(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_2B90D0(a1, v4, v5, v1 + 32);
}

void sub_178C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 + 32);
  if (v7 && (v8 = a3, , v10 = v7(a2), sub_17654(v7), v10))
  {
    v12 = [v10 relativeModelObjectForStoreLibraryPersonalization];
    if (v12)
    {
      swift_unknownObjectRetain();
      v11 = &off_CF2AC8;
    }

    else
    {
      v8 = 0;
      v11 = 0;
    }

    (*(a5 + 16))(v8, v11, a4, a5);
    (*(a5 + 32))(v12, 0, a4, a5);
  }

  else
  {
    (*(a5 + 16))(0, 0, a4, a5);
    (*(a5 + 32))(0, 0, a4, a5);
  }
}

uint64_t sub_17A50()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 160);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), v1);
  }

  if (*(v0 + 176))
  {
  }

  if (*(v0 + 192))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_17AE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[12];
  v9 = v1[13];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_17BD0;

  return sub_2B7BDC(a1, v4, v5, v6, v7, v1 + 6, v8, v9);
}

uint64_t sub_17BD0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_17D54()
{
  if (*(v0 + 232))
  {
    v1 = *(v0 + 232);
  }

  else
  {
    v1 = sub_964B8(&_swiftEmptyArrayStorage);
    *(v0 + 232) = v1;
  }

  return v1;
}

void *sub_17DB8()
{
  if (*(v0 + 240))
  {
    v1 = *(v0 + 240);
  }

  else
  {
    if (&_swiftEmptyArrayStorage >> 62 && sub_ABB060())
    {
      sub_10DBC(&_swiftEmptyArrayStorage);
      v1 = v3;
    }

    else
    {
      v1 = &_swiftEmptySetSingleton;
    }

    *(v0 + 240) = v1;
  }

  return v1;
}

uint64_t sub_17EB0(void *a1, void *a2, uint64_t a3, char a4)
{
  v9 = &_swiftEmptySetSingleton;
  v4[26] = &_swiftEmptySetSingleton;
  v10 = sub_13C80(0, &qword_DE7500);
  v11 = WeakArray.init(_:)(_swiftEmptyArrayStorage, v10);
  v4[29] = 0;
  v4[30] = 0;
  v4[28] = v11;
  if (_swiftEmptyArrayStorage >> 62 && sub_ABB060())
  {
    sub_10DBC(_swiftEmptyArrayStorage);
    v9 = v24;
  }

  v4[31] = v9;
  v12 = *(a3 + 16);
  if (v12)
  {
    v25 = a2;
    sub_6D450(0, v12, 0);
    v13 = (a3 + 32);
    v14 = _swiftEmptyArrayStorage[2];
    do
    {
      v15 = *v13;
      v16 = _swiftEmptyArrayStorage[3];
      if (v14 >= v16 >> 1)
      {
        sub_6D450((v16 > 1), v14 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      _swiftEmptyArrayStorage[v14 + 4] = v15;
      ++v13;
      ++v14;
      --v12;
    }

    while (v12);
    a2 = v25;
  }

  v17 = sub_2F3560(_swiftEmptyArrayStorage);

  v4[27] = v17;
  v18 = a1;
  v19 = a2;
  v20 = sub_126E50(v18, v19, 0, a4 & 1);
  v21 = *(&stru_68.reserved2 + (swift_isaMask & *v18));
  swift_retain_n();
  v22 = v18;
  v21(v20, &off_CF2C30);

  return v20;
}

uint64_t sub_180C0()
{
  v1 = v0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_13C80(0, &qword_DE7500);

    v4 = WeakArray.allElements.getter();

    v5 = *&stru_108.sectname[swift_isaMask & *v3];
    v6 = v3;
    v24 = v5(v4, sub_2BB18, v1);
    v25 = v6;

    v26 = v1;
    v7 = sub_17DB8();
    sub_185CC(v7);
    v9 = v8;

    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = (v9 + 40);
      while (v11 < *(v9 + 16))
      {
        v16 = *v12;
        ObjectType = swift_getObjectType();
        v18 = *(v16 + 8);
        swift_unknownObjectRetain();
        v18(ObjectType, v16);
        type metadata accessor for ImpressionTracker();
        v19 = swift_dynamicCastClass();
        if (v19)
        {
          *(v19 + 40) = 1;
        }

        ++v11;
        swift_unknownObjectRelease();
        v18(ObjectType, v16);
        v14 = v13;
        v15 = swift_getObjectType();
        (*(v14 + 96))(v15, v14);
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        v12 += 2;
        if (v10 == v11)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_8:

      v20 = *(v26 + 208);
      if (*(v20 + 16) <= *(v24 + 16) >> 3)
      {

        sub_1C4DBC(v20);

        v21 = v24;
      }

      else
      {

        v21 = sub_1C5C2C(v20, v24);
      }

      sub_1886C(v21, sub_18A38);
      v22 = *(v26 + 208);
      if (*(v24 + 16) <= *(v22 + 16) >> 3)
      {
        v27 = *(v26 + 208);

        sub_1C4DBC(v24);
        v23 = v27;
      }

      else
      {

        v23 = sub_1C5C2C(v24, v22);
      }

      sub_1886C(v23, sub_18F48);
      *(v26 + 208) = v24;

      sub_127348();
    }
  }

  return result;
}

uint64_t sub_1843C(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_17D54();
    if (*(v4 + 16) && (v5 = sub_2EC3D0(a1), (v6 & 1) != 0))
    {
      v7 = *(*(v4 + 56) + 16 * v5);

      v8 = *&stru_108.segname[(swift_isaMask & *v3) - 8];
      v9 = v7;
      v10 = v3;
      v11 = v8(v9);

      v3 = v9;
    }

    else
    {

      v12 = sub_17DB8();
      v13 = sub_472FF8(a1, v12);

      if (v13)
      {
        v11 = 1;
LABEL_10:

        return v11 & 1;
      }

      v14 = *&stru_108.segname[(swift_isaMask & *v3) - 8];
      v3 = v3;
      v11 = v14(a1);
    }

    goto LABEL_10;
  }

  v11 = 0;
  return v11 & 1;
}

void sub_185CC(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_ABAC10();
    sub_13C80(0, &qword_DE7500);
    sub_2BB20();
    sub_AB9BC0();
    v1 = v19;
    v2 = v20;
    v3 = v21;
    v4 = v22;
    v5 = v23;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = &_swiftEmptyArrayStorage;
  while (v1 < 0)
  {
    if (!sub_ABAC90() || (sub_13C80(0, &qword_DE7500), swift_unknownObjectRetain(), swift_dynamicCast(), v12 = v24, swift_unknownObjectRelease(), !v24))
    {
LABEL_24:
      sub_2BB88();
      return;
    }

LABEL_17:
    swift_getObjectType();
    v13 = swift_conformsToProtocol2();
    if (v13)
    {
      v18 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_6AB68(0, v9[2] + 1, 1, v9);
      }

      v15 = v9[2];
      v14 = v9[3];
      v16 = v18;
      if (v15 >= v14 >> 1)
      {
        v9 = sub_6AB68((v14 > 1), v15 + 1, 1, v9);
        v16 = v18;
      }

      v9[2] = v15 + 1;
      v17 = &v9[2 * v15];
      v17[4] = v12;
      v17[5] = v16;
    }

    else
    {
    }
  }

  v10 = v4;
  v11 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v11 - 1) & v11;
    v12 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v11 = *(v2 + 8 * v4);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_1886C(uint64_t a1, void (*a2)(void *, uint64_t))
{
  swift_weakInit();
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = *(*(a1 + 48) + ((v10 << 9) | (8 * v11)));
    sub_18E6C(&v12, v2, v13, a2);
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      swift_weakDestroy();
      return;
    }

    v7 = *(a1 + 56 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1897C(void *a1, uint64_t a2)
{
  v4 = a2;
  if (qword_DE6D70 != -1)
  {
    swift_once();
  }

  UnfairLock.locked<A>(_:)(sub_2BA50);
  return sub_127A2C(a1, &v4, qword_E0A760, 0, 3);
}

void sub_18A38(void *a1, uint64_t a2)
{
  v3 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v7 = Strong;
  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (v8)
  {
    v9 = a1 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  v11 = &selRef__authenticateReturningError_;
  if (v9)
  {
    v12 = 0;
  }

  else
  {
    v13 = v8;
    v56 = a2;
    v57 = v7;
    v55 = v10;
    swift_beginAccess();
    v14 = *(v2 + 248);
    ObjectType = swift_getObjectType();
    v16 = a1;

    v17 = sub_472FF8(v16, v14);

    v18 = *(v13 + 8);
    if ((v17 & 1) == 0)
    {
      v18(ObjectType, v13);
      v20 = v19;
      v21 = swift_getObjectType();
      v22 = (*(v20 + 32))(v21, v20);
      swift_unknownObjectRelease();
      if (v22)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v18(ObjectType, v13);
        v54 = ObjectType;
        v24 = v23;
        v25 = swift_getObjectType();
        v52 = *(v24 + 40);
        v26 = swift_unknownObjectRetain();
        v52(v26, &off_CFADC8, v25, v24);
        swift_unknownObjectRelease();
        v27 = (v18)(v54, v13);
        v51 = v28;
        v53 = v27;
        v29 = *(v3 + 32);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_6AB8C(0, v29[2] + 1, 1, v29);
        }

        v31 = v29[2];
        v30 = v29[3];
        if (v31 >= v30 >> 1)
        {
          v29 = sub_6AB8C((v30 > 1), v31 + 1, 1, v29);
        }

        v29[2] = v31 + 1;
        v32 = &v29[2 * v31];
        v32[4] = v53;
        v32[5] = v51;
        v33 = *(v3 + 32);
        *(v3 + 32) = v29;
        sub_12E05C(v33);

        swift_beginAccess();
        sub_1B104(&v59, v16, &qword_DE7500, UIViewController_ptr, &qword_DE74F8, &unk_AF6790);
        swift_endAccess();

        ObjectType = v54;
      }
    }

    v18(ObjectType, v13);
    v34 = v16;
    v35 = v18;
    v36 = ObjectType;
    v38 = v37;
    v39 = swift_getObjectType();
    v12 = (*(v38 + 80))(v39, v38);
    swift_unknownObjectRelease();
    v35(v36, v13);
    v41 = v40;
    v42 = [v57 view];
    if (!v42)
    {
      goto LABEL_28;
    }

    v43 = v42;
    v44 = swift_getObjectType();
    v45 = [v43 isHidden];

    (*(v41 + 16))(v45 ^ 1, v44, v41);
    swift_unknownObjectRelease();
    a2 = v56;
    v7 = v57;
    v10 = v55;
    v11 = &selRef__authenticateReturningError_;
  }

  v46 = sub_17DB8();
  v47 = sub_472FF8(a1, v46);

  v48 = [a1 v11[342]];
  if (!v48)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  v49 = v48;
  v58[0] = a2;
  if (v47)
  {
    v50 = 2;
  }

  else
  {
    v50 = 0;
  }

  sub_127A2C(v48, v58, v12, v10, v50);
}

void sub_18E6C(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  v5 = *a1;
  sub_13C80(0, &qword_DE7500);

  v6 = WeakArray.subscript.getter();

  if (v6)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      a4(v6, v5);
    }

    else
    {
    }
  }
}

void sub_18F48(void *a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4 && a1)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 8);
    v8 = a1;
    v7(ObjectType, v5);
    v10 = v9;
    v11 = swift_getObjectType();
    (*(v10 + 16))(0, v11, v10);

    swift_unknownObjectRelease();
  }

  v12 = [a1 view];
  if (v12)
  {
    v13 = v12;
    v14 = a2;
    sub_131DC8(&v14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_19068(uint64_t a1)
{
  v2 = v1;
  v37 = &_swiftEmptyArrayStorage;
  v3 = *(a1 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers);
  if (v3 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)); ; i = sub_ABB060())
  {
    v5 = &_swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v6 = v3 & 0xC000000000000001;
    v28 = v3 + 32;
    v29 = v3 & 0xFFFFFFFFFFFFFF8;

    v7 = 0;
    v32 = v2;
    v26 = i;
    v27 = v3;
    v30 = v3 & 0xC000000000000001;
    while (1)
    {
      if (v6)
      {
        v9 = sub_35F8D4(v7, v3);
      }

      else
      {
        if (v7 >= *(v29 + 16))
        {
          goto LABEL_41;
        }

        v9 = *(v28 + 8 * v7);
      }

      v10 = v9;
      if (__OFADD__(v7++, 1))
      {
        break;
      }

      ObjectType = swift_getObjectType();
      v33 = v10;
      v34 = swift_conformsToProtocol2();
      if (v34 && v10)
      {
        v13 = sub_CFAE4();
        v36 = &_swiftEmptyArrayStorage;
        if (v13 >> 62)
        {
          v23 = v13;
          v14 = sub_ABB060();
          v13 = v23;
        }

        else
        {
          v14 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
        }

        v31 = v7;
        v15 = v33;
        if (v14)
        {
          v16 = 0;
          v17 = v13 & 0xC000000000000001;
          v18 = v13 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v17)
            {
              v19 = v13;
              v20 = sub_35F8D4(v16, v13);
            }

            else
            {
              if (v16 >= *(v18 + 16))
              {
                goto LABEL_39;
              }

              v19 = v13;
              v20 = *(v13 + 8 * v16 + 32);
            }

            v3 = v20;
            v21 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            v35 = v20;
            if (sub_193E0(&v35, v2, v15, v34))
            {
              sub_ABAE90();
              sub_ABAED0();
              v2 = v32;
              sub_ABAEE0();
              sub_ABAEA0();
              v15 = v33;
            }

            else
            {
            }

            ++v16;
            v13 = v19;
            if (v21 == v14)
            {
              v8 = v36;
              i = v26;
              v3 = v27;
              goto LABEL_6;
            }
          }

          __break(1u);
LABEL_39:
          __break(1u);
          break;
        }

        v8 = &_swiftEmptyArrayStorage;
LABEL_6:

        sub_199D8(v8, sub_2A414);
        v6 = v30;
        v7 = v31;
      }

      else if (!sub_472E58(ObjectType, v2[27]))
      {
        v22 = v10;
        sub_AB9730();
        if (*(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v37 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_AB97A0();
          v2 = v32;
        }

        sub_AB97F0();
      }

      if (v7 == i)
      {

        v5 = v37;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

LABEL_35:
  v24 = sub_13C80(0, &qword_DE7500);
  v2[28] = WeakArray.init(_:)(v5, v24);
}

BOOL sub_193E0(void **a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = *a1;
  ObjectType = swift_getObjectType();
  v9 = sub_472E58(ObjectType, a2[27]);
  if (!v9)
  {
    v10 = v7;
    v16 = sub_17DB8();
    sub_1B104(&v17, v10, &qword_DE7500, UIViewController_ptr, &qword_DE74F8, &unk_AF6790);
    a2[30] = v16;

    v11 = v10;
    v12 = a3;
    v13 = sub_17D54();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v13;
    sub_91EF4(v12, a4, v11, isUniquelyReferenced_nonNull_native);

    a2[29] = v17;
  }

  return !v9;
}

uint64_t sub_19500(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_ABB060();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v1 >> 62))
  {
    v4 = *(&dword_10 + (*v1 & 0xFFFFFFFFFFFFFF8));
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_ABB060();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_2A124(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2A284(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_19694(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_6A6AC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_19780(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_6B9F8(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_198A4(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_6C1C4(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_199D8(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_ABB060();
  }

  else
  {
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v2 >> 62))
  {
    v6 = *(&dword_10 + (*v2 & 0xFFFFFFFFFFFFFF8));
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_ABB060();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_2A1E4(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(&dword_10 + v10) + 32, (*(&dword_18 + v10) >> 1) - *(&dword_10 + v10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_19AD0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_6C59C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_19BF0(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_19D4C()
{
}

uint64_t sub_19D9C()
{
  v0 = sub_12758C();

  return v0;
}

uint64_t sub_19DF4()
{
  sub_19D9C();

  return swift_deallocClassInstance();
}

Swift::Int sub_19E40()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

Swift::Int sub_19F44()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_1A094(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  sub_ABB5C0();
  v6 = a2 - 3;
  if ((a2 - 3) >= 6u)
  {
    sub_ABB5D0(6uLL);
    v6 = a2;
  }

  sub_ABB5D0(v6);
  v7 = sub_ABB610();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_27:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_218B8(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
    goto LABEL_28;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = *(*(v5 + 48) + v9);
    if (v11 > 5)
    {
      break;
    }

    switch(v11)
    {
      case 3u:
        if (a2 == 3)
        {
          goto LABEL_26;
        }

        break;
      case 4u:
        if (a2 == 4)
        {
          goto LABEL_26;
        }

        break;
      case 5u:
        if (a2 == 5)
        {
          goto LABEL_26;
        }

        break;
      default:
        goto LABEL_20;
    }

LABEL_6:
    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  switch(v11)
  {
    case 6u:
      if (a2 == 6)
      {
        goto LABEL_26;
      }

      goto LABEL_6;
    case 7u:
      if (a2 == 7)
      {
        goto LABEL_26;
      }

      goto LABEL_6;
    case 8u:
      if (a2 == 8)
      {
        goto LABEL_26;
      }

      goto LABEL_6;
  }

LABEL_20:
  if ((a2 - 9) > 0xF9u || v11 != a2)
  {
    goto LABEL_6;
  }

LABEL_26:
  result = 0;
LABEL_28:
  *a1 = a2;
  return result;
}

uint64_t sub_1A254(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_ABB5B0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_21ACC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1A35C(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v9 = *v4;
  sub_ABB5C0();
  v29 = a1;
  v30 = a3;
  if (a4)
  {
    sub_ABB5D0(1uLL);
    sub_ABA7A0();
  }

  else
  {
    sub_ABB5D0(0);
    sub_AB93F0();
  }

  v10 = sub_ABB610();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_18:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v4;
    v23 = a4 & 1;
    sub_2BA40(a2, v30, v23);
    sub_21C00(a2, v30, v23, v12, isUniquelyReferenced_nonNull_native);
    *v4 = v31;
    *v29 = a2;
    *(v29 + 8) = v30;
    *(v29 + 16) = v23;
    return 1;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(v9 + 48) + 24 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    if (*(v14 + 16))
    {
      break;
    }

    if ((a4 & 1) == 0)
    {
      if (v15 == a2 && v16 == v30)
      {
        v19 = a2;
        v20 = v30;
        v21 = 0;
        goto LABEL_21;
      }

      if (sub_ABB3C0())
      {
        v19 = a2;
        v20 = v30;
        v21 = 0;
        goto LABEL_21;
      }
    }

LABEL_6:
    v12 = (v12 + 1) & v13;
    if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if ((a4 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_13C80(0, &qword_DFA720);
  v17 = v15;
  if ((sub_ABA790() & 1) == 0)
  {
    sub_13CC8(v15, v16, 1);
    goto LABEL_6;
  }

  sub_13CC8(a2, v30, 1);
  v19 = v15;
  v20 = v16;
  v21 = 1;
LABEL_21:
  sub_13CC8(v19, v20, v21);
  v25 = *(v9 + 48) + 24 * v12;
  v26 = *v25;
  v27 = *(v25 + 8);
  v28 = *(v25 + 16);
  *v29 = *v25;
  *(v29 + 8) = v27;
  *(v29 + 16) = v28;
  sub_2BA40(v26, v27, v28);
  return 0;
}

uint64_t sub_1A5CC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_ABAC60();

    if (v8)
    {

      type metadata accessor for ImpressionTracker();
      swift_unknownObjectRetain();
      swift_dynamicCast();
      a2 = v28;
      swift_unknownObjectRelease();
      result = 0;
LABEL_28:
      *a1 = a2;
      return result;
    }

    v19 = sub_ABAC50();
    if (!__OFADD__(v19, 1))
    {
      v20 = sub_1D5FC(v7, v19 + 1);
      if (*(v20 + 24) <= *(v20 + 16))
      {
        sub_1E12C();
      }

      sub_2178C(v21, v20);

      *v3 = v20;
      *a1 = a2;
      return 1;
    }

    goto LABEL_31;
  }

  sub_ABB5C0();
  v10 = sub_127604();
  sub_ABB5D0(v10);
  v11 = sub_ABB610();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    v29 = *v3;
    v17 = *(*v3 + 16);
    v18 = *(*v3 + 24);

    if (v18 <= v17)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_1E12C();
      }

      else
      {
        sub_26DE0();
      }

      v16 = v29;
      sub_ABB5C0();
      sub_ABB5D0(*(a2 + 56));
      v22 = sub_ABB610();
      v23 = -1 << *(v29 + 32);
      v13 = v22 & ~v23;
      if ((*(v29 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
      {
        v24 = ~v23;
        type metadata accessor for ImpressionTracker();
        while (sub_127604() != *(a2 + 56))
        {
          v13 = (v13 + 1) & v24;
          if (((*(v29 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_32;
      }
    }

    else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_252C8();
      v16 = v29;
    }

LABEL_26:
    *(v16 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v13;
    *(*(v16 + 48) + 8 * v13) = a2;
    v25 = *(v16 + 16);
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (!v26)
    {
      *(v16 + 16) = v27;
      *v3 = v16;
      result = 1;
      goto LABEL_28;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    result = sub_ABB4B0();
    __break(1u);
    return result;
  }

  v14 = ~v12;
  while (sub_127604() != *(a2 + 56))
  {
    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_1A904(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  sub_ABB5C0();
  sub_ABB5D0(a2);
  v6 = sub_ABB610();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_21E30(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1A9FC(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  sub_ABB5C0();
  sub_AB93F0();
  v8 = sub_ABB610();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_ABB3C0() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_21F90(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1AB68(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v7 = *v3;
  v8 = sub_ABB5B0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (*(*(v7 + 48) + 8 * v10) != a2)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_22110(a2, v10, isUniquelyReferenced_nonNull_native, a3);
    *v3 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1AC68(__int128 *a1, uint64_t a2)
{
  v5 = *v2;
  sub_ABB5C0();
  v6 = *a2;
  v7 = *(a2 + 8);
  sub_AB93F0();
  v8 = sub_ABB610();
  v9 = -1 << *(v5 + 32);
  v10 = v8 & ~v9;
  if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v5 + 48) + (v10 << 6));
      v13 = *v12 == v6 && v12[1] == v7;
      if (v13 || (sub_ABB3C0() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    sub_2BA68(a2);
    v18 = (*(v5 + 48) + (v10 << 6));
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[3];
    v25[2] = v18[2];
    v25[3] = v21;
    v25[0] = v19;
    v25[1] = v20;
    v22 = v18[1];
    *a1 = *v18;
    a1[1] = v22;
    v23 = v18[3];
    a1[2] = v18[2];
    a1[3] = v23;
    sub_2BABC(v25, v24);
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24[0] = *v2;
    sub_2BABC(a2, v25);
    sub_2224C(a2, v10, isUniquelyReferenced_nonNull_native);
    *v2 = v24[0];
    v15 = *(a2 + 16);
    *a1 = *a2;
    a1[1] = v15;
    v16 = *(a2 + 48);
    a1[2] = *(a2 + 32);
    a1[3] = v16;
    return 1;
  }
}

uint64_t sub_1ADEC(_OWORD *a1, void *a2)
{
  v4 = *v2;
  sub_ABB5C0();
  v5 = a2[11];
  v6 = a2[12];
  sub_AB93F0();
  v7 = *a2;
  v8 = a2[1];
  v42 = a2;
  if (v8)
  {
    sub_ABB5E0(1u);
    sub_AB93F0();
  }

  else
  {
    sub_ABB5E0(0);
  }

  v9 = sub_ABB610();
  v10 = v4 + 56;
  v11 = -1 << *(v4 + 32);
  v12 = v9 & ~v11;
  if ((*(v4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v40 = v4;
    v14 = *(v4 + 48);
    do
    {
      v15 = (v14 + (v12 << 7));
      v16 = v15[1];
      v17 = v15[11];
      v18 = v15[12];
      if (v16)
      {
        if (!v8)
        {
          goto LABEL_7;
        }

        v19 = *v15 == v7 && v16 == v8;
        if (!v19 && (sub_ABB3C0() & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      else if (v8)
      {
        goto LABEL_7;
      }

      v20 = v17 == v5 && v18 == v6;
      if (v20 || (sub_ABB3C0() & 1) != 0)
      {
        sub_2B818(v42);
        v21 = (*(v40 + 48) + (v12 << 7));
        v22 = *v21;
        v23 = v21[1];
        v24 = v21[3];
        v45[2] = v21[2];
        v45[3] = v24;
        v45[0] = v22;
        v45[1] = v23;
        v25 = v21[4];
        v26 = v21[5];
        v27 = v21[7];
        v45[6] = v21[6];
        v45[7] = v27;
        v45[4] = v25;
        v45[5] = v26;
        v28 = *v21;
        v29 = v21[1];
        v30 = v21[3];
        a1[2] = v21[2];
        a1[3] = v30;
        *a1 = v28;
        a1[1] = v29;
        v31 = v21[4];
        v32 = v21[5];
        v33 = v21[7];
        a1[6] = v21[6];
        a1[7] = v33;
        a1[4] = v31;
        a1[5] = v32;
        sub_2B7BC(v45, v44);
        return 0;
      }

LABEL_7:
      v12 = (v12 + 1) & v13;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44[0] = *v41;
  sub_2B7BC(v42, v45);
  sub_223D8(v42, v12, isUniquelyReferenced_nonNull_native);
  *v41 = v44[0];
  v36 = v42[5];
  a1[4] = v42[4];
  a1[5] = v36;
  v37 = v42[7];
  a1[6] = v42[6];
  a1[7] = v37;
  v38 = v42[1];
  *a1 = *v42;
  a1[1] = v38;
  v39 = v42[3];
  result = 1;
  a1[2] = v42[2];
  a1[3] = v39;
  return result;
}

BOOL sub_1B02C()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_ABB5D0(0);
  v2 = sub_ABB610() & ~(-1 << *(v1 + 32));
  v3 = (1 << v2) & *(v1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
  if (!v3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v0;
    sub_225FC(v2, isUniquelyReferenced_nonNull_native);
    *v0 = v6;
  }

  return v3 == 0;
}

uint64_t sub_1B104(void *a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v10 = v6;
  v13 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v13 < 0)
    {
      v14 = *v6;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = a2;

    v16 = sub_ABAC60();

    if (v16)
    {

      sub_13C80(0, a3);
      swift_unknownObjectRetain();
      swift_dynamicCast();
      swift_unknownObjectRelease();
      result = 0;
      *a1 = v34;
    }

    else
    {
      result = sub_ABAC50();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v26 = sub_1D800(v14, result + 1, a5, a6, a3);
        v27 = v26[2];
        if (v26[3] <= v27)
        {
          sub_1F1E8(v27 + 1, a5);
        }

        v28 = v15;
        sub_21834(v28, v26);

        *v10 = v26;
        *a1 = v28;
        return 1;
      }
    }
  }

  else
  {
    sub_13C80(0, a3);
    v18 = sub_ABA780(*(v13 + 40));
    v19 = -1 << *(v13 + 32);
    v20 = v18 & ~v19;
    if ((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      v21 = ~v19;
      while (1)
      {
        v22 = *(*(v13 + 48) + 8 * v20);
        v23 = sub_ABA790();

        if (v23)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v29 = *(*(v13 + 48) + 8 * v20);
      *a1 = v29;
      v30 = v29;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *v10;
      v25 = a2;
      sub_2270C(v25, v20, isUniquelyReferenced_nonNull_native, a5, a6, a3);
      *v10 = v35;
      *a1 = v25;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1B38C(uint64_t a1, void *a2, char a3)
{
  v6 = *v3;
  sub_ABB5C0();
  sub_ABA7A0();
  sub_1BDE98(a3);
  sub_AB93F0();

  v7 = sub_ABB610();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_56:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *v33;
    v28 = a2;
    sub_2289C(v28, a3, v10, isUniquelyReferenced_nonNull_native);
    *v33 = v35;
    *a1 = v28;
    *(a1 + 8) = a3;
    return 1;
  }

  v11 = ~v9;
  sub_13C80(0, &qword_DFA720);
  while (2)
  {
    v12 = *(v6 + 48) + 16 * v10;
    v13 = *(v12 + 8);
    v14 = *v12;
    if ((sub_ABA790() & 1) == 0)
    {

      goto LABEL_4;
    }

    v15 = v6;
    v16 = a2;
    v17 = 0xEA00000000007365;
    v18 = 0x6974697669746361;
    v19 = 0x6974697669746361;
    switch(v13)
    {
      case 1:
        v17 = 0xE600000000000000;
        v19 = 0x736D75626C61;
        break;
      case 2:
        v17 = 0xE700000000000000;
        v19 = 0x73747369747261;
        break;
      case 3:
        v17 = 0xE800000000000000;
        v19 = 0x73726F7461727563;
        break;
      case 4:
        v17 = 0xE500000000000000;
        v19 = 0x73676E6F73;
        break;
      case 5:
        v17 = 0xE800000000000000;
        v19 = 0x736E6F6974617473;
        break;
      case 6:
        v19 = 0x75632D656C707061;
        v17 = 0xEE0073726F746172;
        break;
      case 7:
        v19 = 0x6169726F74696465;
        v17 = 0xEF736D6574692D6CLL;
        break;
      case 8:
        v19 = 0x6F6D2D636973756DLL;
        v20 = 1936025974;
        goto LABEL_22;
      case 9:
        v19 = 0x69762D636973756DLL;
        v20 = 1936680292;
LABEL_22:
        v17 = v20 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 10:
        v19 = 0x6F736970652D7674;
        v17 = 0xEB00000000736564;
        break;
      case 11:
        v17 = 0xE800000000000000;
        v19 = 0x73776F68732D7674;
        break;
      case 12:
        v19 = 0x646564616F6C7075;
        v17 = 0xEF736F656469762DLL;
        break;
      case 13:
        v19 = 0x6C2D64726F636572;
        v17 = 0xED0000736C656261;
        break;
      case 14:
        v19 = 0x702D6C6169636F73;
        v17 = 0xEF73656C69666F72;
        break;
      case 15:
        v19 = 0x7473696C79616C70;
        v17 = 0xE900000000000073;
        break;
      default:
        break;
    }

    v21 = 0xEA00000000007365;
    switch(a3)
    {
      case 1:
        v21 = 0xE600000000000000;
        if (v19 == 0x736D75626C61)
        {
          goto LABEL_50;
        }

        goto LABEL_51;
      case 2:
        v21 = 0xE700000000000000;
        if (v19 != 0x73747369747261)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 3:
        v21 = 0xE800000000000000;
        if (v19 != 0x73726F7461727563)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 4:
        v21 = 0xE500000000000000;
        if (v19 != 0x73676E6F73)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 5:
        v21 = 0xE800000000000000;
        if (v19 != 0x736E6F6974617473)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 6:
        v21 = 0xEE0073726F746172;
        if (v19 != 0x75632D656C707061)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 7:
        v22 = 0x6169726F74696465;
        v23 = 0x6D6574692D6CLL;
        goto LABEL_40;
      case 8:
        v24 = 0x6F6D2D636973756DLL;
        v25 = 1936025974;
        goto LABEL_54;
      case 9:
        v24 = 0x69762D636973756DLL;
        v25 = 1936680292;
LABEL_54:
        v21 = v25 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v19 != v24)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 10:
        v18 = 0x6F736970652D7674;
        v21 = 0xEB00000000736564;
        goto LABEL_49;
      case 11:
        v21 = 0xE800000000000000;
        if (v19 != 0x73776F68732D7674)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 12:
        v22 = 0x646564616F6C7075;
        v23 = 0x6F656469762DLL;
        goto LABEL_40;
      case 13:
        v21 = 0xED0000736C656261;
        if (v19 != 0x6C2D64726F636572)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 14:
        v22 = 0x702D6C6169636F73;
        v23 = 0x656C69666F72;
LABEL_40:
        v21 = v23 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
        if (v19 != v22)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 15:
        v21 = 0xE900000000000073;
        if (v19 != 0x7473696C79616C70)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      default:
LABEL_49:
        if (v19 != v18)
        {
          goto LABEL_51;
        }

LABEL_50:
        if (v17 != v21)
        {
LABEL_51:
          v26 = sub_ABB3C0();

          a2 = v16;
          v6 = v15;
          if (v26)
          {

            goto LABEL_58;
          }

LABEL_4:
          v10 = (v10 + 1) & v11;
          if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
          {
            goto LABEL_56;
          }

          continue;
        }

        v6 = v15;
LABEL_58:
        v30 = *(v6 + 48) + 16 * v10;
        v31 = *v30;
        LOBYTE(v30) = *(v30 + 8);
        *a1 = v31;
        *(a1 + 8) = v30;
        v32 = v31;
        return 0;
    }
  }
}

uint64_t sub_1BA50(_BYTE *a1, Swift::Int a2)
{
  v3 = v2;
  v5 = *v2;
  sub_ABB5C0();
  sub_1BDE98(a2);
  sub_AB93F0();

  v6 = sub_ABB610();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_54:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    sub_22F60(a2, v8, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
    result = 1;
    goto LABEL_57;
  }

  v9 = ~v7;
  while (2)
  {
    v10 = 0xEA00000000007365;
    v11 = 0x6974697669746361;
    switch(*(*(v5 + 48) + v8))
    {
      case 1:
        v10 = 0xE600000000000000;
        v11 = 0x736D75626C61;
        break;
      case 2:
        v10 = 0xE700000000000000;
        v11 = 0x73747369747261;
        break;
      case 3:
        v10 = 0xE800000000000000;
        v11 = 0x73726F7461727563;
        break;
      case 4:
        v10 = 0xE500000000000000;
        v11 = 0x73676E6F73;
        break;
      case 5:
        v10 = 0xE800000000000000;
        v11 = 0x736E6F6974617473;
        break;
      case 6:
        v11 = 0x75632D656C707061;
        v10 = 0xEE0073726F746172;
        break;
      case 7:
        v11 = 0x6169726F74696465;
        v10 = 0xEF736D6574692D6CLL;
        break;
      case 8:
        v11 = 0x6F6D2D636973756DLL;
        v12 = 1936025974;
        goto LABEL_19;
      case 9:
        v11 = 0x69762D636973756DLL;
        v12 = 1936680292;
LABEL_19:
        v10 = v12 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 0xA:
        v11 = 0x6F736970652D7674;
        v10 = 0xEB00000000736564;
        break;
      case 0xB:
        v10 = 0xE800000000000000;
        v11 = 0x73776F68732D7674;
        break;
      case 0xC:
        v11 = 0x646564616F6C7075;
        v10 = 0xEF736F656469762DLL;
        break;
      case 0xD:
        v11 = 0x6C2D64726F636572;
        v10 = 0xED0000736C656261;
        break;
      case 0xE:
        v11 = 0x702D6C6169636F73;
        v10 = 0xEF73656C69666F72;
        break;
      case 0xF:
        v11 = 0x7473696C79616C70;
        v10 = 0xE900000000000073;
        break;
      default:
        break;
    }

    v13 = 0x6974697669746361;
    v14 = 0xEA00000000007365;
    switch(a2)
    {
      case 1:
        v14 = 0xE600000000000000;
        if (v11 == 0x736D75626C61)
        {
          goto LABEL_47;
        }

        goto LABEL_48;
      case 2:
        v14 = 0xE700000000000000;
        if (v11 != 0x73747369747261)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 3:
        v14 = 0xE800000000000000;
        if (v11 != 0x73726F7461727563)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 4:
        v14 = 0xE500000000000000;
        if (v11 != 0x73676E6F73)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 5:
        v14 = 0xE800000000000000;
        if (v11 != 0x736E6F6974617473)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 6:
        v14 = 0xEE0073726F746172;
        if (v11 != 0x75632D656C707061)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 7:
        v15 = 0x6169726F74696465;
        v16 = 0x6D6574692D6CLL;
        goto LABEL_37;
      case 8:
        v17 = 0x6F6D2D636973756DLL;
        v18 = 1936025974;
        goto LABEL_52;
      case 9:
        v17 = 0x69762D636973756DLL;
        v18 = 1936680292;
LABEL_52:
        v14 = v18 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v11 != v17)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 10:
        v13 = 0x6F736970652D7674;
        v14 = 0xEB00000000736564;
        goto LABEL_46;
      case 11:
        v14 = 0xE800000000000000;
        if (v11 != 0x73776F68732D7674)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 12:
        v15 = 0x646564616F6C7075;
        v16 = 0x6F656469762DLL;
        goto LABEL_37;
      case 13:
        v14 = 0xED0000736C656261;
        if (v11 != 0x6C2D64726F636572)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 14:
        v15 = 0x702D6C6169636F73;
        v16 = 0x656C69666F72;
LABEL_37:
        v14 = v16 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
        if (v11 != v15)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 15:
        v14 = 0xE900000000000073;
        if (v11 != 0x7473696C79616C70)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      default:
LABEL_46:
        if (v11 != v13)
        {
          goto LABEL_48;
        }

LABEL_47:
        if (v10 != v14)
        {
LABEL_48:
          v19 = sub_ABB3C0();

          if (v19)
          {
            goto LABEL_56;
          }

          v8 = (v8 + 1) & v9;
          if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_54;
          }

          continue;
        }

LABEL_56:
        result = 0;
        LOBYTE(a2) = *(*(v5 + 48) + v8);
LABEL_57:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t sub_1C060(_BYTE *a1, Swift::Int a2)
{
  v4 = *v2;
  sub_ABB5C0();
  Library.Menu.Identifier.rawValue.getter(a2);
  sub_AB93F0();

  v5 = sub_ABB610();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = 0xD000000000000029;
      v10 = "LibraryView.Playlists";
      switch(*(*(v4 + 48) + v7))
      {
        case 1:
          v9 = 0xD000000000000025;
          v10 = "LibraryView.Artists";
          break;
        case 2:
          v9 = 0xD000000000000023;
          v10 = "LibraryView.Albums";
          break;
        case 3:
          v9 = 0xD000000000000022;
          v10 = "LibraryView.Songs";
          break;
        case 4:
          v9 = 0xD000000000000021;
          v10 = "LibraryView.MadeForYou";
          break;
        case 5:
          v9 = 0xD000000000000026;
          v10 = "LibraryView.MusicVideos";
          break;
        case 6:
          v9 = 0xD000000000000027;
          v10 = "LibraryView.Genres";
          break;
        case 7:
          v9 = 0xD000000000000022;
          v10 = "LibraryView.Compilations";
          break;
        case 8:
          v9 = 0xD000000000000028;
          v10 = "LibraryView.Composers";
          break;
        case 9:
          v9 = 0xD000000000000025;
          v10 = "LibraryView.Shows";
          break;
        case 0xA:
          v9 = 0xD000000000000021;
          v10 = "LibraryView.Downloaded";
          break;
        case 0xB:
          v9 = 0xD000000000000026;
          v10 = "LibraryView.Downloading";
          break;
        case 0xC:
          v9 = 0xD000000000000027;
          v10 = "ByPlaylistOrderAscending";
          break;
        default:
          break;
      }

      v11 = v10 | 0x8000000000000000;
      v12 = 0xD000000000000029;
      v13 = "LibraryView.Playlists";
      switch(a2)
      {
        case 1:
          v12 = 0xD000000000000025;
          v13 = "LibraryView.Artists";
          break;
        case 2:
          v12 = 0xD000000000000023;
          v13 = "LibraryView.Albums";
          break;
        case 3:
          v12 = 0xD000000000000022;
          v13 = "LibraryView.Songs";
          break;
        case 4:
          v12 = 0xD000000000000021;
          v13 = "LibraryView.MadeForYou";
          break;
        case 5:
          v12 = 0xD000000000000026;
          v13 = "LibraryView.MusicVideos";
          break;
        case 6:
          v12 = 0xD000000000000027;
          v13 = "LibraryView.Genres";
          break;
        case 7:
          v12 = 0xD000000000000022;
          v13 = "LibraryView.Compilations";
          break;
        case 8:
          v12 = 0xD000000000000028;
          v13 = "LibraryView.Composers";
          break;
        case 9:
          v12 = 0xD000000000000025;
          v13 = "LibraryView.Shows";
          break;
        case 10:
          v12 = 0xD000000000000021;
          v13 = "LibraryView.Downloaded";
          break;
        case 11:
          v12 = 0xD000000000000026;
          v13 = "LibraryView.Downloading";
          break;
        case 12:
          v12 = 0xD000000000000027;
          v13 = "ByPlaylistOrderAscending";
          break;
        default:
          break;
      }

      if (v9 == v12 && v11 == (v13 | 0x8000000000000000))
      {
        break;
      }

      v14 = sub_ABB3C0();

      if (v14)
      {
        goto LABEL_35;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

LABEL_35:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_33:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    sub_235CC(a2, v7, isUniquelyReferenced_nonNull_native);
    *v17 = v19;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1C47C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_2B94C(&qword_DFAA90);
  v33 = a2;
  v11 = sub_AB90D0();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_2B94C(&qword_DF7940);
      v21 = sub_AB91C0();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_23A38(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1C734(_BYTE *a1, Swift::Int a2)
{
  v4 = *v2;
  sub_ABB5C0();
  SortOptions.SortType.rawValue.getter(a2);
  sub_AB93F0();

  v5 = sub_ABB610();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_45:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v16;
    sub_23CB4(a2, v7, isUniquelyReferenced_nonNull_native);
    *v16 = v18;
    result = 1;
    goto LABEL_48;
  }

  v8 = ~v6;
  while (2)
  {
    v9 = 0xE700000000000000;
    v10 = 0x656C7469547942;
    switch(*(*(v4 + 48) + v7))
    {
      case 1:
        v10 = 0xD000000000000019;
        v9 = 0x8000000000B49380;
        break;
      case 2:
        break;
      case 3:
        v10 = 0xD000000000000012;
        v9 = 0x8000000000B49360;
        break;
      case 4:
        v10 = 0xD000000000000018;
        v9 = 0x8000000000B49340;
        break;
      case 5:
        v10 = 0xD000000000000012;
        v9 = 0x8000000000B49320;
        break;
      case 6:
        v9 = 0xE800000000000000;
        v10 = 0x7473697472417942;
        break;
      case 7:
        v10 = 0x6D75626C417942;
        break;
      case 8:
        v10 = 0x696C79616C507942;
        v9 = 0xEE00657079547473;
        break;
      case 9:
        v10 = 0xD000000000000010;
        v9 = 0x8000000000B49300;
        break;
      case 0xA:
        v10 = 0x646E656373417942;
        v9 = 0xEF72616559676E69;
        break;
      case 0xB:
        v10 = 0xD000000000000016;
        v9 = 0x8000000000B492E0;
        break;
      case 0xC:
        v10 = 0xD000000000000017;
        v9 = 0x8000000000B492C0;
        break;
      default:
        v10 = 0xD000000000000018;
        v9 = 0x8000000000B493A0;
        break;
    }

    v11 = 0xE700000000000000;
    v12 = 0x656C7469547942;
    switch(a2)
    {
      case 1:
        v11 = 0x8000000000B49380;
        if (v10 == 0xD000000000000019)
        {
          goto LABEL_39;
        }

        goto LABEL_40;
      case 2:
        goto LABEL_38;
      case 3:
        v11 = 0x8000000000B49360;
        if (v10 != 0xD000000000000012)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 4:
        v11 = 0x8000000000B49340;
        if (v10 != 0xD000000000000018)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 5:
        v11 = 0x8000000000B49320;
        if (v10 != 0xD000000000000012)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 6:
        v11 = 0xE800000000000000;
        if (v10 != 0x7473697472417942)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 7:
        if (v10 != 0x6D75626C417942)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 8:
        v11 = 0xEE00657079547473;
        if (v10 != 0x696C79616C507942)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 9:
        v11 = 0x8000000000B49300;
        if (v10 != 0xD000000000000010)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 10:
        v12 = 0x646E656373417942;
        v11 = 0xEF72616559676E69;
LABEL_38:
        if (v10 == v12)
        {
          goto LABEL_39;
        }

        goto LABEL_40;
      case 11:
        v11 = 0x8000000000B492E0;
        if (v10 != 0xD000000000000016)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 12:
        v11 = 0x8000000000B492C0;
        if (v10 != 0xD000000000000017)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      default:
        v11 = 0x8000000000B493A0;
        if (v10 != 0xD000000000000018)
        {
          goto LABEL_40;
        }

LABEL_39:
        if (v9 != v11)
        {
LABEL_40:
          v13 = sub_ABB3C0();

          if (v13)
          {
            goto LABEL_47;
          }

          v7 = (v7 + 1) & v8;
          if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
          {
            goto LABEL_45;
          }

          continue;
        }

LABEL_47:
        result = 0;
        LOBYTE(a2) = *(*(v4 + 48) + v7);
LABEL_48:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t sub_1CC18(Swift::Int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  sub_ABB5C0();
  v41 = a2;
  v42 = a3;
  sub_47B1A4(&v46, a2, a3, a4);
  v9 = sub_ABB610();
  v44 = v8 + 56;
  v45 = v8;
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  v37 = a4;
  if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_30:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = *v36;
    sub_2BB90();
    sub_241E8(v41, v42, v37, v11, isUniquelyReferenced_nonNull_native);
    *v36 = v46;
    *a1 = v41;
    a1[1] = v42;
    a1[2] = v37;
    return 1;
  }

  v43 = ~v10;
  if (a4 < 0)
  {
    v12 = 0x7972617262696CLL;
  }

  else
  {
    v12 = 0x676F6C61746163;
  }

  v40 = a4 & 0x7FFFFFFFFFFFFFFFLL;
  v13 = &_s7LibraryVN;
  if (a4 >= 0)
  {
    v13 = &_s7CatalogVN;
  }

  v39 = v13;
  if (a4 < 0)
  {
    v14 = &off_D17228;
  }

  else
  {
    v14 = &off_D00048;
  }

  while (1)
  {
    v15 = (*(v45 + 48) + 24 * v11);
    v17 = *v15;
    v16 = v15[1];
    v18 = v15[2];
    v19 = v18 < 0 ? 0x7972617262696CLL : 0x676F6C61746163;
    if (v19 == v12)
    {
      sub_2BB90();
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v20 = sub_ABB3C0();
      sub_2BB90();
      swift_bridgeObjectRelease_n();
      if ((v20 & 1) == 0)
      {
        sub_2BBCC();
        goto LABEL_11;
      }
    }

    v21 = v18 < 0 ? &off_D17228 : &off_D00048;
    v50 = v21;
    v22 = v18 < 0 ? &_s7LibraryVN : &_s7CatalogVN;
    v46 = v17;
    v47 = v16;
    v48 = v18 & 0x7FFFFFFFFFFFFFFFLL;
    v49 = v22;

    __swift_project_boxed_opaque_existential_1(&v46, v22);
    v23 = (v21[1])(v22, v21);
    v25 = v24;
    __swift_destroy_boxed_opaque_existential_0(&v46);
    v46 = v41;
    v47 = v42;
    v49 = v39;
    v50 = v14;
    v48 = v40;

    __swift_project_boxed_opaque_existential_1(&v46, v39);
    v26 = (v14[1])(v39, v14);
    v28 = v27;
    __swift_destroy_boxed_opaque_existential_0(&v46);
    if (v23 == v26 && v25 == v28)
    {
      break;
    }

    v30 = sub_ABB3C0();

    sub_2BBCC();
    if (v30)
    {
      goto LABEL_32;
    }

LABEL_11:
    v11 = (v11 + 1) & v43;
    if (((*(v44 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  sub_2BBCC();
LABEL_32:
  sub_2BBCC();
  v33 = (*(v45 + 48) + 24 * v11);
  v34 = v33[1];
  v35 = v33[2];
  *a1 = *v33;
  a1[1] = v34;
  a1[2] = v35;
  sub_2BB90();
  return 0;
}

uint64_t sub_1D014(_OWORD *a1, _OWORD *a2)
{
  v5 = *v2;
  sub_ABB5C0();
  sub_AB93F0();
  v6 = sub_ABB610();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = (*(v5 + 48) + 240 * v8);
      v12 = v10[1];
      v11 = v10[2];
      v55[0] = *v10;
      v55[1] = v12;
      v55[2] = v11;
      v13 = v10[3];
      v14 = v10[4];
      v15 = v10[6];
      v55[5] = v10[5];
      v55[6] = v15;
      v55[3] = v13;
      v55[4] = v14;
      v16 = v10[7];
      v17 = v10[8];
      v18 = v10[10];
      v55[9] = v10[9];
      v55[10] = v18;
      v55[7] = v16;
      v55[8] = v17;
      v19 = v10[11];
      v20 = v10[12];
      v21 = v10[14];
      v55[13] = v10[13];
      v55[14] = v21;
      v55[11] = v19;
      v55[12] = v20;
      sub_ABB5C0();
      sub_2B990(v55, v54);
      sub_AB93F0();
      v22 = sub_ABB610();
      sub_ABB5C0();
      sub_AB93F0();
      v23 = sub_ABB610();
      sub_2B9EC(v55);
      if (v22 == v23)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_2B9EC(a2);
    v33 = (*(v5 + 48) + 240 * v8);
    v34 = v33[11];
    v35 = v33[12];
    v36 = v33[14];
    v54[13] = v33[13];
    v54[14] = v36;
    v54[11] = v34;
    v54[12] = v35;
    v37 = v33[7];
    v38 = v33[8];
    v39 = v33[10];
    v54[9] = v33[9];
    v54[10] = v39;
    v54[7] = v37;
    v54[8] = v38;
    v40 = v33[3];
    v41 = v33[4];
    v42 = v33[6];
    v54[5] = v33[5];
    v54[6] = v42;
    v54[3] = v40;
    v54[4] = v41;
    v44 = v33[1];
    v43 = v33[2];
    v54[0] = *v33;
    v54[1] = v44;
    v54[2] = v43;
    v45 = v33[13];
    a1[12] = v33[12];
    a1[13] = v45;
    a1[14] = v33[14];
    v46 = v33[9];
    a1[8] = v33[8];
    a1[9] = v46;
    v47 = v33[11];
    a1[10] = v33[10];
    a1[11] = v47;
    v48 = v33[5];
    a1[4] = v33[4];
    a1[5] = v48;
    v49 = v33[7];
    a1[6] = v33[6];
    a1[7] = v49;
    v50 = v33[1];
    *a1 = *v33;
    a1[1] = v50;
    v51 = v33[3];
    a1[2] = v33[2];
    a1[3] = v51;
    sub_2B990(v54, v53);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v54[0] = *v52;
    sub_2B990(a2, v55);
    sub_247A8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v52 = *&v54[0];
    v25 = a2[13];
    a1[12] = a2[12];
    a1[13] = v25;
    a1[14] = a2[14];
    v26 = a2[9];
    a1[8] = a2[8];
    a1[9] = v26;
    v27 = a2[11];
    a1[10] = a2[10];
    a1[11] = v27;
    v28 = a2[5];
    a1[4] = a2[4];
    a1[5] = v28;
    v29 = a2[7];
    a1[6] = a2[6];
    a1[7] = v29;
    v30 = a2[1];
    *a1 = *a2;
    a1[1] = v30;
    v31 = a2[3];
    result = 1;
    a1[2] = a2[2];
    a1[3] = v31;
  }

  return result;
}

uint64_t sub_1D2C4(_BYTE *a1, Swift::Int a2)
{
  v4 = *v2;
  v5 = sub_19F44();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v30 = ~v6;
    v8 = 7368564;
    v9 = 0xE300000000000000;
    while (1)
    {
      v10 = *(*(v4 + 48) + v7);
      if (v10 > 3)
      {
        if (*(*(v4 + 48) + v7) > 5u)
        {
          if (v10 == 6)
          {
            v15 = 0x7265736F706D6F63;
            v16 = 0xE900000000000073;
          }

          else
          {
            v15 = 0x4D73776F68537674;
            v16 = 0xED0000736569766FLL;
          }
        }

        else
        {
          if (v10 == 4)
          {
            v15 = 0x7473696C79616C70;
          }

          else
          {
            v15 = 0x646956636973756DLL;
          }

          if (v10 == 4)
          {
            v16 = 0xE900000000000073;
          }

          else
          {
            v16 = 0xEB00000000736F65;
          }
        }
      }

      else
      {
        if (v10 == 2)
        {
          v11 = 0x736D75626C61;
        }

        else
        {
          v11 = 0x73676E6F73;
        }

        if (v10 == 2)
        {
          v12 = 0xE600000000000000;
        }

        else
        {
          v12 = 0xE500000000000000;
        }

        if (*(*(v4 + 48) + v7))
        {
          v13 = 0x73747369747261;
        }

        else
        {
          v13 = 7368564;
        }

        if (*(*(v4 + 48) + v7))
        {
          v14 = 0xE700000000000000;
        }

        else
        {
          v14 = 0xE300000000000000;
        }

        if (*(*(v4 + 48) + v7) <= 1u)
        {
          v15 = v13;
        }

        else
        {
          v15 = v11;
        }

        if (*(*(v4 + 48) + v7) <= 1u)
        {
          v16 = v14;
        }

        else
        {
          v16 = v12;
        }
      }

      v17 = 0x7265736F706D6F63;
      if (a2 != 6)
      {
        v17 = 0x4D73776F68537674;
      }

      v18 = 0xED0000736569766FLL;
      if (a2 == 6)
      {
        v18 = 0xE900000000000073;
      }

      v19 = 0x7473696C79616C70;
      if (a2 != 4)
      {
        v19 = 0x646956636973756DLL;
      }

      v20 = 0xEB00000000736F65;
      if (a2 == 4)
      {
        v20 = 0xE900000000000073;
      }

      if (a2 <= 5u)
      {
        v17 = v19;
        v18 = v20;
      }

      if (a2 == 2)
      {
        v21 = 0x736D75626C61;
      }

      else
      {
        v21 = 0x73676E6F73;
      }

      if (a2 == 2)
      {
        v22 = 0xE600000000000000;
      }

      else
      {
        v22 = 0xE500000000000000;
      }

      if (a2)
      {
        v8 = 0x73747369747261;
        v9 = 0xE700000000000000;
      }

      if (a2 <= 1u)
      {
        v21 = v8;
        v22 = v9;
      }

      v23 = a2 <= 3u ? v21 : v17;
      v24 = a2 <= 3u ? v22 : v18;
      if (v15 == v23 && v16 == v24)
      {
        break;
      }

      v25 = sub_ABB3C0();

      if (v25)
      {
        goto LABEL_64;
      }

      v7 = (v7 + 1) & v30;
      v8 = 7368564;
      v9 = 0xE300000000000000;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_62;
      }
    }

LABEL_64:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_62:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v28;
    sub_249FC(a2, v7, isUniquelyReferenced_nonNull_native);
    *v28 = v31;
    result = 1;
  }

  *a1 = a2;
  return result;
}

Swift::Int sub_1D5FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7508);
    v2 = sub_ABAD40();
    v15 = v2;
    sub_ABAC10();
    if (sub_ABAC90())
    {
      type metadata accessor for ImpressionTracker();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1E12C();
        }

        v2 = v15;
        sub_ABB5C0();
        v3 = sub_127604();
        sub_ABB5D0(v3);
        result = sub_ABB610();
        v5 = v15 + 56;
        v6 = -1 << *(v15 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v8 == v11;
            if (v8 == v11)
            {
              v8 = 0;
            }

            v10 |= v12;
            v13 = *(v5 + 8 * v8);
          }

          while (v13 == -1);
          v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v15 + 48) + 8 * v9) = v14;
        ++*(v15 + 16);
      }

      while (sub_ABAC90());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1D800(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v7 = sub_ABAD40();
    v20 = v7;
    sub_ABAC10();
    if (sub_ABAC90())
    {
      sub_13C80(0, a5);
      do
      {
        swift_dynamicCast();
        v14 = *(v7 + 16);
        if (*(v7 + 24) <= v14)
        {
          sub_1F1E8(v14 + 1, a3);
        }

        v7 = v20;
        result = sub_ABA780(*(v20 + 40));
        v9 = v20 + 56;
        v10 = -1 << *(v20 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v20 + 48) + 8 * v13) = v19;
        ++*(v20 + 16);
      }

      while (sub_ABAC90());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v7;
}

uint64_t sub_1DA00()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE75A8);
  result = sub_ABAD30();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_ABB5C0();
      v17 = v16 - 3;
      if ((v16 - 3) >= 6)
      {
        sub_ABB5D0(6uLL);
        v17 = v16;
      }

      sub_ABB5D0(v17);
      result = sub_ABB610();
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1DC6C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7FE8);
  result = sub_ABAD30();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_ABB5B0();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1DE90()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE7670);
  result = sub_ABAD30();
  v4 = result;
  if (*(v2 + 16))
  {
    v29 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 24 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      sub_ABB5C0();
      if (v20)
      {
        sub_ABB5D0(1uLL);
        sub_ABA7A0();
      }

      else
      {
        sub_ABB5D0(0);
        sub_AB93F0();
      }

      result = sub_ABB610();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 24 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      ++*(v4 + 16);
      v2 = v29;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v2 + 32);
    if (v28 >= 64)
    {
      bzero(v6, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v28;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1E12C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7508);
  result = sub_ABAD30();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_ABB5C0();
      v17 = sub_127604();
      sub_ABB5D0(v17);
      result = sub_ABB610();
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1E380()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7FF0);
  result = sub_ABAD30();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_ABB5C0();
      sub_ABB5D0(v16);
      result = sub_ABB610();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1E5D0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7538);
  result = sub_ABAD30();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_ABB5C0();
      sub_AB93F0();
      result = sub_ABB610();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1E830(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_ABAD30();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    v26 = v3;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_ABB5B0();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    if (v9 >= 64)
    {
      bzero((v4 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v3 = v26;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_1EA4C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8110);
  result = sub_ABAD30();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + ((v14 | (v5 << 6)) << 6);
      v18 = *v17;
      v19 = *(v17 + 8);
      v28 = *(v17 + 16);
      v29 = *(v17 + 32);
      v30 = *(v17 + 48);
      sub_ABB5C0();
      sub_AB93F0();
      result = sub_ABB610();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + (v12 << 6);
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v28;
      *(v13 + 32) = v29;
      *(v13 + 48) = v30;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1ECCC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7FF8);
  result = sub_ABAD30();
  v4 = result;
  if (*(v2 + 16))
  {
    v31 = v0;
    v32 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + ((v14 | (v5 << 6)) << 7);
      v18 = *v17;
      v19 = *(v17 + 8);
      v38 = *(v17 + 48);
      v39 = *(v17 + 64);
      v20 = *(v17 + 88);
      v40 = *(v17 + 80);
      v36 = *(v17 + 16);
      v37 = *(v17 + 32);
      v21 = *(v17 + 96);
      v35 = *(v17 + 120);
      v34 = *(v17 + 104);
      sub_ABB5C0();
      v33 = v21;
      sub_AB93F0();
      if (v19)
      {
        sub_ABB5E0(1u);
        v22 = v18;
        sub_AB93F0();
      }

      else
      {
        v22 = v18;
        sub_ABB5E0(0);
      }

      result = sub_ABB610();
      v23 = -1 << *(v4 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v11 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v11 + 8 * v25);
          if (v29 != -1)
          {
            v12 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v24) & ~*(v11 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + (v12 << 7);
      *v13 = v22;
      *(v13 + 8) = v19;
      *(v13 + 48) = v38;
      *(v13 + 64) = v39;
      *(v13 + 16) = v36;
      *(v13 + 32) = v37;
      *(v13 + 80) = v40;
      *(v13 + 88) = v20;
      v2 = v32;
      *(v13 + 96) = v33;
      *(v13 + 104) = v34;
      *(v13 + 120) = v35;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v2 + 32);
    if (v30 >= 64)
    {
      bzero(v6, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v30;
    }

    v1 = v31;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1EFD0()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE80F8);
  result = sub_ABAD30();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = (v1 + 56);
    v6 = 1 << *(v1 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v1 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
LABEL_13:
      sub_ABB5C0();
      sub_ABB5D0(0);
      result = sub_ABB610();
      v13 = -1 << *(v3 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v10 + 8 * (v14 >> 6))) == 0)
      {
        v16 = 0;
        v17 = (63 - v13) >> 6;
        while (++v15 != v17 || (v16 & 1) == 0)
        {
          v18 = v15 == v17;
          if (v15 == v17)
          {
            v15 = 0;
          }

          v16 |= v18;
          v19 = *(v10 + 8 * v15);
          if (v19 != -1)
          {
            v11 = __clz(__rbit64(~v19)) + (v15 << 6);
            goto LABEL_7;
          }
        }

LABEL_28:
        __break(1u);
        return result;
      }

      v11 = __clz(__rbit64((-1 << v14) & ~*(v10 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v8 &= v8 - 1;
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      ++*(v3 + 16);
    }

    while (1)
    {
      v12 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v12 >= v9)
      {
        break;
      }

      v8 = v5[v12];
      ++v4;
      if (v8)
      {
        v4 = v12;
        goto LABEL_13;
      }
    }

    v20 = 1 << *(v1 + 32);
    if (v20 >= 64)
    {
      bzero((v1 + 56), ((v20 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v5 = -1 << v20;
    }

    *(v1 + 16) = 0;
  }

  *v0 = v3;
  return result;
}

uint64_t sub_1F1E8(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_ABAD30();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_ABA780(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_1F408()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8008);
  v3 = sub_ABAD30();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v3 + 56;
    while (v9)
    {
      v18 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v21 = *(v2 + 48) + 16 * (v18 | (v5 << 6));
      v22 = *v21;
      v23 = *(v21 + 8);
      sub_ABB5C0();
      sub_ABA7A0();
      sub_AB93F0();

      v12 = sub_ABB610();
      v13 = -1 << *(v4 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v11 + 8 * (v14 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = 0;
        v25 = (63 - v13) >> 6;
        do
        {
          if (++v15 == v25 && (v24 & 1) != 0)
          {
            goto LABEL_31;
          }

          v26 = v15 == v25;
          if (v15 == v25)
          {
            v15 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v15);
        }

        while (v27 == -1);
        v16 = __clz(__rbit64(~v27)) + (v15 << 6);
      }

      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v4 + 48) + 16 * v16;
      *v17 = v22;
      *(v17 + 8) = v23;
      ++*(v4 + 16);
    }

    v19 = v5;
    while (1)
    {
      v5 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        JUMPOUT(0x1F868);
      }

      if (v5 >= v10)
      {
        break;
      }

      v20 = v6[v5];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v9 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    v28 = 1 << *(v2 + 32);
    if (v28 >= 64)
    {
      bzero((v2 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v28;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1F8A8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7570);
  v3 = sub_ABAD30();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v3 + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v20 = *(*(v2 + 48) + (v17 | (v5 << 6)));
      sub_ABB5C0();
      sub_AB93F0();

      v12 = sub_ABB610();
      v13 = -1 << *(v4 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v11 + 8 * (v14 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        do
        {
          if (++v15 == v22 && (v21 & 1) != 0)
          {
            goto LABEL_31;
          }

          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v15);
        }

        while (v24 == -1);
        v16 = __clz(__rbit64(~v24)) + (v15 << 6);
      }

      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v4 + 48) + v16) = v20;
      ++*(v4 + 16);
    }

    v18 = v5;
    while (1)
    {
      v5 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        JUMPOUT(0x1FCE8);
      }

      if (v5 >= v10)
      {
        break;
      }

      v19 = v6[v5];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1FD28()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE80F0);
  v3 = sub_ABAD30();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v3 + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v20 = *(*(v2 + 48) + (v17 | (v5 << 6)));
      sub_ABB5C0();
      sub_AB93F0();

      v12 = sub_ABB610();
      v13 = -1 << *(v4 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v11 + 8 * (v14 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        do
        {
          if (++v15 == v22 && (v21 & 1) != 0)
          {
            goto LABEL_31;
          }

          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v15);
        }

        while (v24 == -1);
        v16 = __clz(__rbit64(~v24)) + (v15 << 6);
      }

      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v4 + 48) + v16) = v20;
      ++*(v4 + 16);
    }

    v18 = v5;
    while (1)
    {
      v5 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        JUMPOUT(0x20100);
      }

      if (v5 >= v10)
      {
        break;
      }

      v19 = v6[v5];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_20134()
{
  v1 = v0;
  v35 = sub_AB3820();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8080);
  result = sub_ABAD30();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_2B94C(&qword_DFAA90);
      result = sub_AB90D0();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}