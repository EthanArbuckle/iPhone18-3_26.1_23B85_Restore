uint64_t sub_342B98(id *__dst, id *__src, id *a3, id *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __src - __dst;
  v7 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v7 = __src - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - __src;
  v10 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v10 = a3 - __src;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (a4 != __src || &__src[v11] <= a4)
    {
      v29 = a4;
      memmove(a4, __src, 8 * v11);
      a4 = v29;
    }

    v14 = &a4[v11];
    v12 = a4;
    if (v9 < 8 || v5 <= __dst)
    {
      goto LABEL_57;
    }

    p_name = (&JSDateDescriptor + 24);
    v55 = a4;
LABEL_36:
    v50 = v5;
    v31 = v5 - 1;
    v32 = v4;
    v33 = v14;
    v53 = v31;
    while (1)
    {
      v57 = v14;
      v34 = *--v33;
      v35 = *v31;
      v36 = v34;
      v59 = v35;
      v37 = [v36 p_name[493]];
      if (v37)
      {
        v38 = v37;
        sub_AB92A0();

        v39 = sub_AB9390();
        v41 = v40;
      }

      else
      {
        v39 = 0;
        v41 = 0xE000000000000000;
      }

      v42 = [v59 p_name[493]];
      if (v42)
      {
        v43 = v42;
        sub_AB92A0();

        v44 = sub_AB9390();
        v46 = v45;

        if (v39 != v44)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v46 = 0xE000000000000000;
        if (v39)
        {
          goto LABEL_47;
        }
      }

      if (v41 != v46)
      {
LABEL_47:
        v48 = sub_ABB3C0();

        v4 = v32 - 1;
        p_name = &JSDateDescriptor.name;
        if (v48)
        {
          v14 = v57;
          if (v32 != v50)
          {
            *v4 = *v53;
          }

          v12 = v55;
          if (v57 <= v55 || (v5 = v53, v53 <= __dst))
          {
            v5 = v53;
            goto LABEL_57;
          }

          goto LABEL_36;
        }

        v47 = v57;
        goto LABEL_49;
      }

      v4 = v32 - 1;
      v47 = v57;
      p_name = (&JSDateDescriptor + 24);
LABEL_49:
      v31 = v53;
      if (v47 != v32)
      {
        *v4 = *v33;
      }

      v14 = v33;
      v32 = v4;
      if (v33 <= v55)
      {
        v14 = v33;
        v12 = v55;
        v5 = v50;
        goto LABEL_57;
      }
    }
  }

  v12 = a4;
  v13 = __dst;
  if (a4 != __dst || &__dst[v8] <= a4)
  {
    memmove(a4, __dst, 8 * v8);
  }

  v14 = &v12[v8];
  if (v6 >= 8 && v5 < v4)
  {
    v15 = &JSDateDescriptor.name;
    while (1)
    {
      v16 = *v12;
      v17 = *v5;
      v58 = v16;
      v56 = v17;
      v18 = [v17 v15[493]];
      if (v18)
      {
        v19 = v18;
        sub_AB92A0();

        v52 = sub_AB9390();
        v54 = v20;
      }

      else
      {
        v52 = 0;
        v54 = 0xE000000000000000;
      }

      v21 = [v58 v15[493]];
      if (v21)
      {
        v22 = v21;
        sub_AB92A0();

        v23 = sub_AB9390();
        v25 = v24;
      }

      else
      {
        v23 = 0;
        v25 = 0xE000000000000000;
      }

      if (v52 == v23 && v54 == v25)
      {
        break;
      }

      v26 = sub_ABB3C0();

      v15 = (&JSDateDescriptor + 24);
      if ((v26 & 1) == 0)
      {
        goto LABEL_25;
      }

      v27 = v5;
      v28 = v13 == v5++;
      if (!v28)
      {
        goto LABEL_26;
      }

LABEL_27:
      ++v13;
      if (v12 >= v14 || v5 >= v4)
      {
        goto LABEL_29;
      }
    }

    v15 = (&JSDateDescriptor + 24);
LABEL_25:
    v27 = v12;
    v28 = v13 == v12++;
    if (v28)
    {
      goto LABEL_27;
    }

LABEL_26:
    *v13 = *v27;
    goto LABEL_27;
  }

LABEL_29:
  v5 = v13;
LABEL_57:
  if (v5 != v12 || v5 >= (v12 + ((v14 - v12 + (v14 - v12 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v12, 8 * ((v14 - v12) / 8));
  }

  return 1;
}

uint64_t sub_343088(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 240;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 240;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[30 * v9] <= a4)
    {
      memmove(a4, __dst, 240 * v9);
    }

    v12 = &v4[30 * v9];
    if (v8 < 240)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[29] < v6[29])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 30;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 30;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 30;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0xF0uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[30 * v11] <= a4)
  {
    memmove(a4, __src, 240 * v11);
  }

  v12 = &v4[30 * v11];
  if (v10 >= 240 && v6 > v7)
  {
LABEL_20:
    v5 -= 30;
    do
    {
      v15 = v5 + 30;
      if (*(v6 - 1) < *(v12 - 1))
      {
        v17 = v6 - 30;
        if (v15 != v6)
        {
          memmove(v5, v6 - 30, 0xF0uLL);
        }

        if (v12 <= v4 || (v6 -= 30, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v16 = (v12 - 30);
      if (v15 != v12)
      {
        memmove(v5, v12 - 30, 0xF0uLL);
      }

      v5 -= 30;
      v12 -= 30;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v18 = (v12 - v4) / 240;
  if (v6 != v4 || v6 >= &v4[30 * v18])
  {
    memmove(v6, v4, 240 * v18);
  }

  return 1;
}

void *sub_3432F8(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v7 = sub_ABB060();
  if (!v7)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

char *sub_34339C()
{
  result = *(v0 + qword_DFE2F0);
  if (result)
  {
    result = [result results];
    if (result)
    {
      v2 = result;
      v3 = [result numberOfSections];

      result = v3;
    }
  }

  v4 = *(v0 + qword_DFF1D0);
  if (v4 >> 62)
  {
    v6 = result;
    v7 = sub_ABB060();
    result = v6;
    if (v7 < 1)
    {
      return result;
    }
  }

  else if (*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)) < 1)
  {
    return result;
  }

  if (__OFADD__(result++, 1))
  {
    __break(1u);
  }

  return result;
}

void sub_343460(uint64_t a1)
{
  v2 = v1;
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v2[qword_DFF1D0];
  if (v8 >> 62)
  {
    v9 = sub_ABB060();
  }

  else
  {
    v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  }

  (*(v5 + 16))(v7, a1, v4);
  if (v9 >= 1)
  {
    if (__OFADD__(IndexPath.safeSection.getter(), 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    IndexPath.safeSection.setter();
  }

  [v2 loadViewIfNeeded];
  v10 = qword_DFE2F8;
  v11 = *&v2[qword_DFE2F8];
  if (!v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = v11;
  isa = sub_AB3770().super.isa;
  v14 = [v12 cellForItemAtIndexPath:isa];

  if (v14)
  {
    type metadata accessor for SocialPersonHorizontalCell();
    if (swift_dynamicCastClass())
    {

      sub_49DA1C();
    }

    else
    {
    }
  }

  [v2 loadViewIfNeeded];
  v15 = *&v2[v10];
  if (v15)
  {
    v16 = v15;
    v17 = sub_AB3770().super.isa;
    [v16 deselectItemAtIndexPath:v17 animated:1];
    (*(v5 + 8))(v7, v4);

    return;
  }

LABEL_16:
  __break(1u);
}

void sub_3436A4(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAC40);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_isBottomHairlineVisible;
  swift_beginAccess();
  a1[v9] = 1;
  if ((a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView__isBottomHairlineVisible] & 1) == 0)
  {
    a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView__isBottomHairlineVisible] = 1;
    [a1 setNeedsLayout];
  }

  v20 = a2;
  v21 = a3;
  sub_AB3550();
  v10 = sub_AB35C0();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  sub_36A48();
  v11 = sub_ABAA50();
  v13 = v12;
  sub_12E1C(v8, &qword_DEAC40);
  v14 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_title];
  swift_beginAccess();
  *v14 = v11;
  v14[1] = v13;

  v15 = *&a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents + 8];

  v16 = String.trim()();

  swift_beginAccess();
  v15[7] = v16;

  sub_2EB704();
  [a1 setNeedsLayout];
  v17 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_regularLayoutStyle];
  swift_beginAccess();
  v19 = xmmword_B0A3F0;
  *v17 = xmmword_B0A3F0;
  v17[16] = 1;
  sub_1848CC();
  v18 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_compactLayoutStyle];
  swift_beginAccess();
  *v18 = v19;
  v18[16] = 1;
  sub_1846A0();
}

uint64_t sub_343918(void *a1)
{
  if (!a1)
  {
    return 4;
  }

  v2 = a1;
  v3 = [v2 identifiers];
  v4 = [v3 universalStore];

  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = [v4 socialProfileID];
  if (!v5)
  {
    swift_unknownObjectRelease();
LABEL_7:
    v7 = 0;
    v9 = 0xE000000000000000;
    goto LABEL_8;
  }

  v6 = v5;
  v7 = sub_AB92A0();
  v9 = v8;
  swift_unknownObjectRelease();

LABEL_8:
  if ([v2 isPrivate])
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v12 = qword_DFF1C0;
  swift_beginAccess();
  v13 = *(v1 + v12);

  v14 = sub_472F00(v7, v9, v13);

  if (v14)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_343A5C(void *a1, unsigned __int8 a2)
{
  v5 = sub_AB35C0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_AB9250();
  __chkstk_darwin(v6 - 8);
  if (!a1)
  {
    return 0;
  }

  v7 = *(v2 + qword_DFE2F0);
  if (!v7)
  {
    return 0;
  }

  type metadata accessor for JSSocialOnboardingFriendsModelRequest.Response();
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = a1;
  v33 = v7;
  v11 = [v10 identifiers];
  v12 = [v11 universalStore];

  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = [v12 socialProfileID];
  if (!v13)
  {
    swift_unknownObjectRelease();
LABEL_8:
    v15 = 0;
    v17 = 0xE000000000000000;
    goto LABEL_9;
  }

  v14 = v13;
  v15 = sub_AB92A0();
  v17 = v16;
  swift_unknownObjectRelease();

LABEL_9:
  v18 = *(v9 + OBJC_IVAR____TtCC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest8Response_profileIDsToFriendsMap);
  if (*(v18 + 16))
  {

    v19 = sub_2EBF88(v15, v17);
    if (v20)
    {
      v21 = (*(v18 + 56) + 240 * v19);
      v23 = v21[1];
      v22 = v21[2];
      v35[0] = *v21;
      v35[1] = v23;
      v36 = v22;
      v24 = v21[3];
      v25 = v21[4];
      v26 = v21[6];
      v39 = v21[5];
      v40 = v26;
      v37 = v24;
      v38 = v25;
      v27 = v21[7];
      v28 = v21[8];
      v29 = v21[10];
      v43 = v21[9];
      v44 = v29;
      v41 = v27;
      v42 = v28;
      v30 = v21[11];
      v31 = v21[12];
      v32 = v21[14];
      v47 = v21[13];
      v48 = v32;
      v45 = v30;
      v46 = v31;
      sub_2B990(v35, &v34);

      if (a2 != 4 && (v36 & 1) == 0)
      {
        if (a2 - 1 < 2)
        {
          sub_AB91E0();
          sub_AB3550();
          sub_AB9320();
          sub_2B9EC(v35);

          return 0x64657469766E69;
        }

        if (!a2)
        {
          sub_AB91E0();
          sub_AB3550();
          sub_AB9320();
          sub_2B9EC(v35);

          return 0x657469766E69;
        }
      }

      sub_2B9EC(v35);

      return 0;
    }
  }

  else
  {
  }

  return 0;
}

void sub_343E00()
{
  v1 = qword_DFF188;
  *(v0 + v1) = sub_96828(_swiftEmptyArrayStorage);
  v2 = qword_DFF190;
  *(v0 + v2) = [objc_allocWithZone(CNContactStore) init];
  v3 = qword_DFF1A8;
  *(v0 + v3) = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *(v0 + qword_DFF1B0) = 0;
  *(v0 + qword_DFF1B8) = 1;
  *(v0 + qword_DFF1C0) = &_swiftEmptySetSingleton;
  v4 = qword_DFF1C8;
  type metadata accessor for SocialOnboardingNetworkRegistrationController();
  v5 = swift_allocObject();
  v6 = [objc_allocWithZone(NSOperationQueue) init];
  v7 = sub_AB9260();
  [v6 setName:v7];

  [v6 setQualityOfService:25];
  *(v5 + 16) = v6;
  *(v0 + v4) = v5;
  *(v0 + qword_DFF1D0) = _swiftEmptyArrayStorage;
  v8 = qword_DFF1D8;
  *(v0 + v8) = sub_96724(_swiftEmptyArrayStorage);
  *(v0 + qword_DFF1E0) = 0;
  sub_ABAFD0();
  __break(1u);
}

id sub_343FBC(uint64_t a1)
{
  v2 = qword_DFF1D0;
  v3 = *(v1 + qword_DFF1D0);
  if (v3 >> 62)
  {
    v8 = a1;
    v4 = sub_ABB060();
    a1 = v8;
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  }

  if (v4 >= 1 && a1 == 0)
  {
    if (*(v1 + qword_DFE2F0))
    {
      if (*(v1 + qword_DFF1B8))
      {
        return &dword_0 + 1;
      }

      else
      {
        v7 = *(v1 + v2);
        if (v7 >> 62)
        {

          return sub_ABB060();
        }

        else
        {
          return *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return sub_497570();
  }
}

double sub_3440BC(void *a1)
{
  v2 = v1;
  v4 = sub_AB37F0();
  v5 = *&v1[qword_DFF1D0];
  if (v5 >> 62)
  {
    v38 = v4;
    v6 = sub_ABB060();
    v4 = v38;
  }

  else
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  }

  v7 = v6 > 0;
  v8 = v4 == 0;
  v9 = v7 && v8;
  if (v7 && v8)
  {
    v10 = 0xD00000000000001BLL;
  }

  else
  {
    v10 = 0xD00000000000001ALL;
  }

  if (v7 && v8)
  {
    v11 = "SocialPersonHorizontalCell";
  }

  else
  {
    v11 = "ingFriendsFinderViewController";
  }

  v12 = qword_DFF188;
  swift_beginAccess();
  v13 = *&v2[v12];
  if (*(v13 + 16))
  {

    v14 = sub_2EBF88(v10, v11 | 0x8000000000000000);
    if (v15)
    {
      v16 = *(*(v13 + 56) + 16 * v14 + 8);

      return v16;
    }
  }

  [a1 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [a1 music_inheritedLayoutInsets];
  v27 = UIEdgeInsetsInsetRect(v18, v20, v22, v24, v25, v26);
  v29 = v28;
  v30 = [v2 traitCollection];
  if (v9)
  {
    if (qword_DE6AE0 != -1)
    {
      v39 = v30;
      swift_once();
      v30 = v39;
    }

    v31 = *&qword_E00AF0;
    if (qword_DE6AD8 != -1)
    {
      v40 = v30;
      swift_once();
      v30 = v40;
    }

    v32 = *&qword_E00AB8;
    v33 = *&qword_E00AC8;

    v16 = v31 + v32 + v33;
  }

  else
  {
    v34 = v30;
    v29 = sub_B2768(v30, v29);
    v16 = v35;
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *&v2[v12];
  *&v2[v12] = 0x8000000000000000;
  sub_94C58(v10, v11 | 0x8000000000000000, isUniquelyReferenced_nonNull_native, v29, v16);

  *&v2[v12] = v41;
  swift_endAccess();
  return v16;
}

void sub_34438C(void *a1)
{
  v2 = v1;
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v8 - 8);
  v10 = &v37 - v9;
  sub_AB3810();
  sub_339A48(v7, v10);
  v11 = *(v5 + 8);
  v11(v7, v4);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_12E1C(v10, &unk_DE8E20);
    return;
  }

  v12 = IndexPath.safeSection.getter();
  v11(v10, v4);
  v13 = *&v1[qword_DFE2F0];
  if (v13)
  {
    v14 = [v13 results];
    if (!v14)
    {
      __break(1u);
      goto LABEL_16;
    }

    v15 = v14;
    v16 = [v14 sectionAtIndex:v12];

    if (v16)
    {
      v41 = v16;
      if (swift_dynamicCast())
      {
        v17 = v43;
        v40 = v42;
        v18 = *&v2[qword_DFF1B0];
        v19 = &selRef__authenticateReturningError_;
        if (v18)
        {
          v20 = *&v2[qword_DFF1B0];
        }

        else
        {
          v37 = qword_DFF1B0;
          v38 = v43;
          v21 = [objc_allocWithZone(type metadata accessor for TitleSectionHeaderView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
          v22 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_forSizing;
          swift_beginAccess();
          v21[v22] = 1;
          v20 = v21;
          [v20 setHidden:1];
          [v20 setUserInteractionEnabled:0];
          v23 = *&v2[direct field offset for BrowseCollectionViewController.textDrawingCache];
          v24 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textDrawingCache;
          swift_beginAccess();
          v39 = *&v20[v24];
          *&v20[v24] = v23;
          v19 = &selRef__authenticateReturningError_;

          v25 = [v2 view];
          if (!v25)
          {
LABEL_17:
            __break(1u);
            return;
          }

          v26 = v25;
          [v25 addSubview:v20];

          v27 = *&v2[v37];
          *&v2[v37] = v20;

          v18 = 0;
          v17 = v38;
        }

        v28 = v18;
        sub_AB3810();
        sub_3436A4(v20, v40, v17);
        v11(v7, v4);
        v29 = [v2 v19[342]];
        if (v29)
        {
          v30 = v29;
          [v29 music_inheritedLayoutInsets];
          v32 = v31;
          v34 = v33;

          [a1 bounds];
          v35 = CGRectGetWidth(v44) - v32 - v34;
          v36 = v20;
          [a1 bounds];
          [v36 setFrame:{0.0, 0.0, v35, CGRectGetHeight(v45)}];

          [v36 layoutIfNeeded];

          return;
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }
  }
}

void sub_34480C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4143SocialOnboardingNetworkStatusViewController_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v4 = sub_80104(v3);

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4143SocialOnboardingNetworkStatusViewController_networkLabel;
  *(v1 + v5) = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4143SocialOnboardingNetworkStatusViewController_networkStateLabel;
  *(v1 + v6) = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_344928()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_344970()
{

  return swift_deallocObject();
}

uint64_t sub_3449D8()
{

  return swift_deallocObject();
}

uint64_t sub_344A20()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_344A58()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_108(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_344AC8()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t objectdestroy_108Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_344B54()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_344B8C()
{

  return swift_deallocObject();
}

uint64_t sub_344BF0()
{

  return swift_deallocObject();
}

uint64_t sub_344C50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_344D0C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_344D50()
{

  return swift_deallocObject();
}

BOOL sub_344D98(uint64_t *a1)
{
  v2 = *a1;
  v3 = **(v1 + 16);
  if (*a1 == 3)
  {
    return v3 == 3;
  }

  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 != 1)
  {
    return (v3 - 1) >= 3;
  }

  return v3 == 1;
}

char *sub_344E4C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_pageHeaderContentViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_layoutStyle] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView] = 0;
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_title];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_subtitle];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_supertitle];
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_maximumNumberOfLinesInTitle] = 2;
  *&v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_lineBreakMode] = 4;
  *&v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_textDrawingCache] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isBottomHairlineVisible] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isBelowPromotionalImage] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isBelowStandardNavigationBar] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isAccessoryViewAlignedWithText] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isAccessoryViewAlignedWithTextForAccessibilitySizes] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_adjustsFontsForAccessibilitySizes] = 1;
  *&v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_bottomHairlineView] = 0;
  v12 = OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_leadingStackView;
  type metadata accessor for TextStackView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  v14[v15] = 0;
  *&v4[v12] = v14;
  v16 = OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_leadingSizingStackView;
  v17 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v18 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  v17[v18] = 0;
  *&v4[v16] = v17;
  v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_needsTextUpdate] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_gradientView] = 0;
  v25.receiver = v4;
  v25.super_class = type metadata accessor for PageHeaderContentView();
  v19 = objc_msgSendSuper2(&v25, "initWithFrame:", a1, a2, a3, a4);
  v20 = qword_DE6C58;
  v21 = v19;
  if (v20 != -1)
  {
    v24 = v21;
    swift_once();
    v21 = v24;
  }

  v22 = v21;
  [v21 setBackgroundColor:qword_E71898];
  [v22 addSubview:*&v22[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_leadingStackView]];

  return v22;
}

void sub_345124(char a1)
{
  if (v1[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_layoutStyle] != (a1 & 1))
  {
    v2 = v1;
    v3 = OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_gradientView;
    v4 = *&v1[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_gradientView];
    if (v1[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_layoutStyle])
    {
      if (v4)
      {
        v5 = *&v1[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_gradientView];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_AF82E0;
        *(v6 + 32) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.0];
        *(v6 + 40) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.16];
        *(v6 + 48) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.32];
        static Gradient.vertical(colors:locations:interpolations:)(v6, 0, 0, v17);

        v7 = objc_allocWithZone(type metadata accessor for Gradient.View());
        v8 = Gradient.View.init(configuration:)(v17);
        v9 = *&v2[v3];
        *&v2[v3] = v8;
        v5 = v8;

        v4 = 0;
      }

      v10 = *&v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_leadingStackView];
      v11 = v4;
      [v2 insertSubview:v5 below:v10];

      v12 = [objc_opt_self() clearColor];
      [v2 setBackgroundColor:v12];
    }

    else
    {
      if (v4)
      {
        [v4 removeFromSuperview];
      }

      if (qword_DE6C58 != -1)
      {
        swift_once();
      }

      [v1 setBackgroundColor:qword_E71898];
    }

    v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_needsTextUpdate] = 1;
    [v2 setNeedsLayout];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      if ([Strong isViewLoaded])
      {
        v15 = [v14 view];
        if (v15)
        {
          v16 = v15;
          [v15 setNeedsLayout];
          swift_unknownObjectRelease();
        }

        else
        {
          __break(1u);
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_34549C(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView;
  v4 = *&v1[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView];
  if (a1)
  {
    v5 = a1;
    if (!v4 || (sub_13C80(0, &qword_DF12A0), v6 = v4, v5 = v5, v7 = sub_ABA790(), v5, v6, (v7 & 1) == 0))
    {
      v8 = v5;
      if ([v8 isDescendantOfView:v2])
      {
        [v8 removeFromSuperview];
      }
    }

    v4 = *&v2[v3];
  }

  if (v4)
  {
    [v2 addSubview:v4];
  }

  v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_needsTextUpdate] = 1;
  [v2 setNeedsLayout];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if ([Strong isViewLoaded])
    {
      v11 = [v10 view];
      if (v11)
      {
        v12 = v11;
        [v11 setNeedsLayout];
        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_345690(char *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB92A0();
  v8 = &a1[*a4];
  v9 = *v8;
  v10 = v8[1];
  *v8 = v7;
  v8[1] = v11;
  v12 = a3;
  v13 = a1;
  sub_34574C(v9, v10, a4);
}

void sub_34574C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = &v3[*a3];
  if ((*v4 != a1 || v4[1] != a2) && (sub_ABB3C0() & 1) == 0)
  {
    v3[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_needsTextUpdate] = 1;
    [v3 setNeedsLayout];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      if ([Strong isViewLoaded])
      {
        v8 = [v7 view];
        if (v8)
        {
          v9 = v8;
          [v8 setNeedsLayout];
          swift_unknownObjectRelease();
        }

        else
        {
          __break(1u);
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_345880(uint64_t a1, void *a2)
{
  v3 = *&v2[*a2];
  *&v2[*a2] = a1;
  if (v3 != a1)
  {
    v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_needsTextUpdate] = 1;
    [v2 setNeedsLayout];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      if ([Strong isViewLoaded])
      {
        v6 = [v5 view];
        if (v6)
        {
          v7 = v6;
          [v6 setNeedsLayout];
          swift_unknownObjectRelease();
        }

        else
        {
          __break(1u);
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_34598C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_leadingStackView);
  v3 = OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_textDrawingCache;
  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_textDrawingCache);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *(v2 + v5);
  *(v2 + v5) = v4;
  swift_retain_n();
  sub_2E6210(v6);

  v7 = *(v1 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_leadingSizingStackView);
  v8 = *(v1 + v3);
  v9 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v10 = *(v7 + v9);
  *(v7 + v9) = v8;
  swift_retain_n();
  sub_2E6210(v10);
}

void sub_345A84(char a1)
{
  v2 = v1[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_adjustsFontsForAccessibilitySizes];
  v1[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_adjustsFontsForAccessibilitySizes] = a1;
  if (v2 != (a1 & 1))
  {
    v1[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_needsTextUpdate] = 1;
    [v1 setNeedsLayout];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      if ([Strong isViewLoaded])
      {
        v5 = [v4 view];
        if (v5)
        {
          v6 = v5;
          [v5 setNeedsLayout];
          swift_unknownObjectRelease();
        }

        else
        {
          __break(1u);
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_345B98()
{
  v1 = v0;
  v126.receiver = v0;
  v126.super_class = type metadata accessor for PageHeaderContentView();
  objc_msgSendSuper2(&v126, "layoutSubviews");
  v2 = [v0 traitCollection];
  [v2 displayScale];
  v117 = v3;
  [v0 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v0 music_inheritedLayoutInsets];
  v13 = v12;
  v15 = v14;
  [v0 effectiveUserInterfaceLayoutDirection];
  v120 = v7;
  v121 = v5;
  v122 = v9;
  v16 = UIEdgeInsetsInsetRect(v5, v7, v9, v11, v13, v15);
  v18 = v17;
  v119 = v19;
  rect = v20;
  v21 = [v2 horizontalSizeClass];
  if (v0[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_adjustsFontsForAccessibilitySizes] == 1)
  {
    v22 = [v2 preferredContentSizeCategory];
    v23 = sub_ABA310();
    v24 = sub_ABA330();
  }

  else
  {
    v24 = 0;
  }

  v111 = OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_layoutStyle;
  v115 = v1[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_layoutStyle];
  v25 = OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView;
  v26 = *&v1[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView];
  if (v26)
  {
    v27 = v26;
    [v27 frame];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v137.origin.x = v16;
    v137.origin.y = v18;
    v137.size.width = v119;
    v137.size.height = rect;
    MaxX = CGRectGetMaxX(v137);
    v138.origin.x = v29;
    v112 = v31;
    v113 = v33;
    v138.origin.y = v31;
    v138.size.width = v33;
    v138.size.height = v35;
    Width = CGRectGetWidth(v138);
    v38 = MaxX - Width;
    if ((v24 & 1) != 0 && ((v1[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isAccessoryViewAlignedWithTextForAccessibilitySizes] | v115) & 1) == 0)
    {
    }

    else
    {
      v139.origin.x = MaxX - Width;
      v139.origin.y = v31;
      v139.size.width = v33;
      v139.size.height = v35;
      v39 = CGRectGetWidth(v139);

      v119 = v119 - (v39 + 8.0);
    }
  }

  else
  {
    v112 = 0.0;
    v113 = 0.0;
    v35 = 0.0;
    v38 = 0.0;
  }

  v40 = *&v1[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_leadingStackView];
  if (v1[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_needsTextUpdate] == 1)
  {
    v1[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_needsTextUpdate] = 0;
    v41 = [v1 traitCollection];
    sub_347350(v40, v41);
  }

  v114 = v2;
  v42 = v16 + -2.0;
  v118 = v18 - 1.0 / v117;
  v43 = v119;
  if ((v24 & 1) == 0 || (v44 = v42, v1[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isAccessoryViewAlignedWithTextForAccessibilitySizes] & 1 | (v21 != &dword_0 + 1) | v115 & 1))
  {
    v140.origin.y = v120;
    v140.origin.x = v121;
    v140.size.width = v122;
    v140.size.height = v11;
    v45 = CGRectGetWidth(v140) <= 1500.0;
    v44 = v38;
    if (!v45)
    {
      v46 = [v40 traitCollection];
      [v46 displayScale];
      v48 = v47;

      if (rect <= 5.99231045e307)
      {
        v49 = rect;
      }

      else
      {
        v49 = 5.99231045e307;
      }

      sub_2E94A4(v127, 0.0, 0.0, v119, v49, v48);
      sub_3F250(v127);
      v50 = v127[3];
      v141.origin.x = v42;
      v141.origin.y = v118;
      v141.size.width = v119;
      v141.size.height = rect;
      v44 = *&v50 + CGRectGetMinX(v141) + 8.0;
    }
  }

  v51 = *&v1[v25];
  v52 = &selRef__authenticateReturningError_;
  if (v51)
  {
    v109 = v21;
    v110 = v44;
    v53 = *&v1[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_supertitle + 8];
    if ((v53 & 0x2000000000000000) != 0)
    {
      v54 = HIBYTE(v53) & 0xF;
    }

    else
    {
      v54 = *&v1[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_supertitle] & 0xFFFFFFFFFFFFLL;
    }

    if (v54)
    {
      v55 = 0x7469747265707573;
    }

    else
    {
      v55 = 0x656C746974;
    }

    if (v54)
    {
      v56 = 0xEA0000000000656CLL;
    }

    else
    {
      v56 = 0xE500000000000000;
    }

    v57 = v51;
    v142.origin.x = v42;
    v142.origin.y = v118;
    v142.size.width = v119;
    v142.size.height = rect;
    v58 = CGRectGetWidth(v142);
    v143.origin.x = v42;
    v143.origin.y = v118;
    v143.size.width = v119;
    v143.size.height = rect;
    Height = CGRectGetHeight(v143);
    TextStackView.componentMetrics(forComponentIdentifier:bounds:displayScale:)(v55, v56, v128, 0.0, 0.0, v58, Height, v117);
    v130[8] = v128[8];
    v131 = v129;
    v130[4] = v128[4];
    v130[5] = v128[5];
    v130[6] = v128[6];
    v130[7] = v128[7];
    v130[0] = v128[0];
    v130[1] = v128[1];
    v130[2] = v128[2];
    v130[3] = v128[3];
    if (get_enum_tag_for_layout_string_s5Error_pIegHzo_Sg_0(v130) == 1)
    {

      goto LABEL_65;
    }

    y = v131.origin.y;
    v104 = v131.size.width;
    x = v131.origin.x;
    v103 = v131.size.height;
    CGRectGetMinY(v131);
    sub_AB39F0();
    objc_opt_self();
    v61 = swift_dynamicCastObjCClass();
    v62 = v57;
    if (!v61)
    {
LABEL_39:
      if ((v109 != &dword_0 + 1) | v115 & 1)
      {
LABEL_40:
        if (v1[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isAccessoryViewAlignedWithText] == 1)
        {
          v144.origin.y = v120;
          v144.origin.x = v121;
          v144.size.width = v122;
          v144.size.height = v11;
          CGRectGetMaxY(v144);
          v52 = &selRef__authenticateReturningError_;
          if (v1[v111] == 1)
          {
            v68 = v62;
            v69 = [v1 traitCollection];
            [v69 horizontalSizeClass];

            v62 = v68;
          }

          v145.origin.x = v110;
          v145.origin.y = v112;
          v145.size.width = v113;
          v145.size.height = v35;
          CGRectGetHeight(v145);
        }

        else
        {
          v52 = &selRef__authenticateReturningError_;
          if (!v54)
          {
            v147.origin.x = v42;
            v147.origin.y = v118;
            v147.size.width = v119;
            v147.size.height = rect;
            CGRectGetMinY(v147);
            v148.origin.x = v110;
            v148.origin.y = v112;
            v148.size.width = v113;
            v148.size.height = v35;
            CGRectGetHeight(v148);
          }
        }

        goto LABEL_64;
      }

      if ((v24 & 1) == 0)
      {
        v52 = &selRef__authenticateReturningError_;
        if (v1[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isAccessoryViewAlignedWithText] == 1)
        {
          v149.size.width = v104;
          v149.origin.x = x;
          v149.origin.y = y;
          v149.size.height = v103;
          CGRectGetHeight(v149);
          v150.origin.x = v110;
          v150.origin.y = v112;
          v150.size.width = v113;
          v150.size.height = v35;
          CGRectGetHeight(v150);
        }

        else if (!v54)
        {
          v151.origin.x = v42;
          v151.origin.y = v118;
          v151.size.width = v119;
          v151.size.height = rect;
          CGRectGetMinY(v151);
          v152.origin.x = v110;
          v152.origin.y = v112;
          v152.size.width = v113;
          v152.size.height = v35;
          CGRectGetHeight(v152);
        }

        goto LABEL_64;
      }

      v108 = v62;
      v146.origin.x = v42;
      v146.origin.y = v118;
      v146.size.width = v119;
      v146.size.height = rect;
      CGRectGetMaxY(v146);
      v70 = *&v1[v25];
      v52 = &selRef__authenticateReturningError_;
      if (v70)
      {
        objc_opt_self();
        v71 = swift_dynamicCastObjCClass();
        v72 = v70;
        v73 = v72;
        if (v71)
        {
          v74 = v72;
          v75 = [v71 titleForState:0];
          if (v75 || (v75 = [v71 attributedTitleForState:0]) != 0)
          {

            [v74 frame];
            goto LABEL_63;
          }
        }

        [v73 frame];
      }

LABEL_63:
      sub_AB39F0();
      v62 = v108;
LABEL_64:
      sub_ABA490();
      [v62 v52[262]];

      sub_3472E8(v128);

      v43 = v119;
      goto LABEL_65;
    }

    v63 = v61;
    v107 = v57;
    v106 = v57;
    v64 = [v63 titleForState:0];
    if (v64)
    {
      v65 = &selRef__authenticateReturningError_;
    }

    else
    {
      v64 = [v63 attributedTitleForState:0];
      v65 = &selRef__authenticateReturningError_;
      if (!v64)
      {
LABEL_38:

        v62 = v107;
        goto LABEL_39;
      }
    }

    v66 = [v63 titleLabel];
    if (v66)
    {
      v67 = v66;
      if ((v115 & 1) == 0)
      {
        [v66 _firstLineBaselineOffsetFromBoundsTop];
        sub_AB39F0();
        [v67 v65[56]];
        [v67 convertRect:v63 toCoordinateSpace:?];
        if (!v54)
        {
          v80 = v76;
          v153.origin.x = v42;
          v81 = v77;
          v82 = v78;
          v153.origin.y = v118;
          v153.size.width = v119;
          v116 = v79;
          v153.size.height = rect;
          CGRectGetMinY(v153);
          v154.origin.x = v80;
          v154.origin.y = v81;
          v154.size.width = v82;
          v154.size.height = v116;
          CGRectGetMinY(v154);
        }

        v52 = &selRef__authenticateReturningError_;
        v62 = v107;
        goto LABEL_64;
      }

      v62 = v107;
      goto LABEL_40;
    }

    goto LABEL_38;
  }

LABEL_65:
  sub_ABA490();
  [v40 v52[262]];
  v83 = OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_bottomHairlineView;
  v84 = *&v1[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_bottomHairlineView];
  if (v1[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isBottomHairlineVisible] == 1)
  {
    if (v84)
    {
      v85 = *&v1[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_bottomHairlineView];
    }

    else
    {
      v86 = [objc_allocWithZone(UIView) init];
      v87 = qword_DE6C70;
      v85 = v86;
      if (v87 != -1)
      {
        swift_once();
      }

      [v85 setBackgroundColor:qword_E718B0];
      [v1 addSubview:v85];
      v88 = *&v1[v83];
      *&v1[v83] = v85;

      v84 = 0;
    }

    v89 = v84;
    v155.origin.x = v121;
    v155.origin.y = v120;
    v155.size.width = v122;
    v155.size.height = v11;
    CGRectGetMaxY(v155);
    v156.origin.x = v121;
    v156.origin.y = v120;
    v156.size.width = v122;
    v156.size.height = v11;
    CGRectGetWidth(v156);
    sub_ABA490();
    [v85 v52[262]];
  }

  else if (v84)
  {
    [v84 setHidden:1];
  }

  v90 = *&v1[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_gradientView];
  if (v90)
  {
    v91 = v90;
    v157.origin.x = v121;
    v157.origin.y = v120;
    v157.size.width = v122;
    v157.size.height = v11;
    v92 = CGRectGetWidth(v157);
    v158.origin.x = v121;
    v158.origin.y = v120;
    v158.size.width = v122;
    v158.size.height = v11;
    MinX = CGRectGetMinX(v158);
    v159.origin.x = v121;
    v159.origin.y = v120;
    v159.size.width = v122;
    v159.size.height = v11;
    v94 = CGRectGetMaxY(v159) + -150.0;
    [v91 v52[262]];
    v160.origin.x = MinX;
    v160.origin.y = v94;
    v160.size.width = v92;
    v160.size.height = 150.0;
    v95 = CGRectGetHeight(v160);
    v161.origin.x = v42;
    v161.origin.y = v118;
    v161.size.width = v43;
    v161.size.height = rect;
    v96 = v95 - CGRectGetHeight(v161);
    v162.origin.x = MinX;
    v162.origin.y = v94;
    v162.size.width = v92;
    v162.size.height = 150.0;
    v97 = v96 / CGRectGetHeight(v162);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA9B0);
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_AF8820;
    *(v98 + 32) = 0;
    *(v98 + 40) = v97;
    *(v98 + 48) = 0x3FF0000000000000;
    v99 = &v91[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
    swift_beginAccess();
    v100 = *(v99 + 3);
    v101 = *v99;
    v102 = *(v99 + 1);
    *&v125[16] = *(v99 + 2);
    *&v125[32] = v100;
    v124 = v101;
    *v125 = v102;
    sub_8A334(&v124, &v132);

    v132 = v124;
    v134 = *&v125[8];
    v135 = *&v125[24];
    v136 = *&v125[40];
    v133 = v98;
    Gradient.View.typedConfiguration.setter(&v132);
  }

  else
  {
  }
}

void sub_3468D8(void *a1, double a2)
{
  v5 = [a1 horizontalSizeClass];
  if (v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_adjustsFontsForAccessibilitySizes] == 1)
  {
    v6 = [a1 preferredContentSizeCategory];
    v7 = sub_ABA310();
    v8 = sub_ABA330();
  }

  else
  {
    v8 = 0;
  }

  [v2 music_inheritedLayoutInsets];
  v9 = v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_layoutStyle];
  v12 = a2 - v10 - v11;
  if (v8 & 1) == 0 || ((v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isAccessoryViewAlignedWithTextForAccessibilitySizes] | v9))
  {
    v13 = *&v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView];
    if (v13)
    {
      v14 = v13;
      [v14 frame];
      Width = CGRectGetWidth(v24);

      v12 = v12 - (Width + 8.0);
    }
  }

  v16 = v5 == &dword_0 + 1;
  v17 = *&v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_leadingSizingStackView];
  sub_347350(v17, a1);
  [v17 sizeThatFits:{v12, 5.99231045e307}];
  if ((v16 & v8) == 1 && ((v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isAccessoryViewAlignedWithTextForAccessibilitySizes] | v9) & 1) == 0)
  {
    v18 = *&v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView];
    if (v18)
    {
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      v20 = v18;
      v21 = v20;
      if (v19)
      {
        v22 = v20;
        v23 = [v19 titleForState:0];
        if (v23 || (v23 = [v19 attributedTitleForState:0]) != 0)
        {

          [v22 frame];
          return;
        }
      }

      [v21 frame];
    }
  }
}

void sub_346BF0(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for PageHeaderContentView();
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", a1);
  *(v1 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_needsTextUpdate) = 1;
  [v1 setNeedsLayout];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([Strong isViewLoaded])
    {
      v5 = [v4 view];
      if (v5)
      {
        v6 = v5;
        [v5 setNeedsLayout];
        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

id sub_346D34(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v23.receiver = v3;
  v23.super_class = type metadata accessor for PageHeaderContentView();
  v7 = objc_msgSendSuper2(&v23, "hitTest:withEvent:", a1, a2, a3);
  v8 = *&v3[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView];
  if (v8)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = v8;
      [v10 hitRectInsets];
      top = v12;
      left = v14;
    }

    else
    {
      top = UIEdgeInsetsZero.top;
      left = UIEdgeInsetsZero.left;
      v16 = v8;
    }

    [v8 frame];
    v25.origin.x = UIEdgeInsetsInsetRect(v17, v18, v19, v20, top, left);
    v24.x = a2;
    v24.y = a3;
    if (CGRectContainsPoint(v25, v24))
    {
      [v8 convertPoint:v3 fromCoordinateSpace:{a2, a3}];
      v21 = [v8 hitTest:a1 withEvent:?];

      v7 = v21;
    }
  }

  return v7;
}

id sub_346F20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if ((*(v2 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_layoutStyle) & 1) != 0 || *(v2 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_adjustsFontsForAccessibilitySizes) != 1)
  {
    v9 = 0;
  }

  else
  {
    v6 = [v2 traitCollection];
    v7 = [v6 preferredContentSizeCategory];

    v8 = sub_ABA310();
    v9 = sub_ABA330();
  }

  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v10 = qword_E718C8;
  if (v9)
  {
    v11 = objc_opt_self();
    v12 = v10;
    v13 = [v11 defaultMetrics];
    v14 = v13;
    v15 = 13.0;
    if (v5 == &dword_0 + 2)
    {
      v15 = 15.0;
    }

    [v13 scaledValueForValue:v15];
    v17 = v16;

    v18 = [objc_opt_self() systemFontOfSize:v17 weight:UIFontWeightBold];
  }

  else
  {
    sub_13C80(0, &qword_DE6EE0);
    v19 = v10;
    v18 = sub_ABA550();
  }

  v20 = v18;
  result = [objc_opt_self() clearColor];
  *a1 = v10;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  *(a1 + 24) = 4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v20;
  return result;
}

id sub_347150()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PageHeaderContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_347294()
{
  result = qword_DFFCA0;
  if (!qword_DFFCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFFCA0);
  }

  return result;
}

uint64_t sub_3472E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFFCA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_347350(uint64_t a1, id a2)
{
  v3 = v2;
  v106 = [a2 horizontalSizeClass];
  v5 = UIFontTextStyleLargeTitle;
  v6 = OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_layoutStyle;
  if (v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_layoutStyle])
  {
    v7 = 0;
    goto LABEL_3;
  }

  if (v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_adjustsFontsForAccessibilitySizes] == 1)
  {
    v12 = [a2 preferredContentSizeCategory];
    v13 = sub_ABA310();
    v7 = sub_ABA330();

    v10 = 16.0;
    if (v3[v6] != 1)
    {
LABEL_6:
      if (v3[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isBelowPromotionalImage])
      {
        v11 = 44.0;
        if (v7)
        {
LABEL_16:
          v15 = objc_opt_self();
          v16 = [v15 defaultMetrics];
          sub_AB9EF0();
          v14 = v17;

          v18 = [v15 defaultMetrics];
          sub_AB9EF0();
          v10 = v19;

          v20 = [v15 defaultMetrics];
          sub_AB9EF0();
          v11 = v21;

          v22 = 2;
          v5 = UIFontTextStyleLargeTitle;
          goto LABEL_24;
        }

        goto LABEL_19;
      }

      if (v3[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isBelowStandardNavigationBar])
      {
        v14 = 36.0;
      }

      else
      {
        v14 = 50.0;
      }

      if (v7)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }

LABEL_3:
    v8 = [v3 traitCollection];
    v9 = [v8 horizontalSizeClass];

    if (v9 == &dword_0 + 2)
    {
      v10 = 18.0;
    }

    else
    {
      v10 = 20.0;
    }

    goto LABEL_6;
  }

  v10 = 16.0;
  if (v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isBelowPromotionalImage])
  {
    v11 = 44.0;
LABEL_19:
    v22 = 1;
    v14 = 44.0;
    goto LABEL_24;
  }

  if (v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isBelowStandardNavigationBar])
  {
    v14 = 36.0;
  }

  else
  {
    v14 = 50.0;
  }

LABEL_23:
  v11 = 44.0;
  v22 = 1;
LABEL_24:
  v23 = &v3[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_supertitle];
  v24 = *&v3[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_supertitle + 8];
  v25 = *&v3[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_supertitle] & 0xFFFFFFFFFFFFLL;
  if ((v24 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v24) & 0xF;
  }

  if (v25)
  {
    v14 = v14 - v11;
  }

  sub_13C80(0, &qword_DE6EE0);
  v108 = sub_ABA580();
  v26 = sub_ABA580();
  if (v3[v6] == 1)
  {
    v27 = [objc_opt_self() whiteColor];
  }

  else
  {
    if (qword_DE6C98 != -1)
    {
      swift_once();
    }

    v27 = qword_E718D8;
  }

  v28 = v27;
  v103 = objc_opt_self();
  v29 = [v103 clearColor];
  v30 = v29;
  v112 = *&v3[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_lineBreakMode];
  v113 = *&v3[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_maximumNumberOfLinesInTitle];
  v31 = v23[1];
  v32 = *v23 & 0xFFFFFFFFFFFFLL;
  if ((v31 & 0x2000000000000000) != 0)
  {
    v32 = HIBYTE(v31) & 0xF;
  }

  v110 = v28;
  v111 = v26;
  v109 = v29;
  if (v32)
  {
    *(&v101 + 1) = v22;
    v33 = v28;
    v34 = v30;
    v35 = v26;
    v102 = v3;
    sub_346F20(v128);
    v36 = v128[0];
    v37 = v128[1];
    v38 = v129;
    v39 = v130;
    v40 = v131;
    v41 = v132;
    *&v101 = v133;
    v42 = OBJC_IVAR____TtC16MusicApplication13TextStackView_indexedComponents;
    swift_beginAccess();
    v43 = *(a1 + v42);
    v99 = v38;
    v100 = v37;
    if (*(v43 + 16))
    {
      sub_109A00(v128, &v144);

      v44 = sub_2EBF88(0x7469747265707573, 0xEA0000000000656CLL);
      if (v45)
      {
        v46 = *(*(v43 + 56) + 8 * v44);

        *&v139 = v36;
        *(&v139 + 1) = v37;
        *&v140 = v38;
        *(&v140 + 1) = v39;
        v47 = v40;
        *&v141 = v40;
        *(&v141 + 1) = v41;
        v48 = *(&v101 + 1);
        v49 = v101;
        v142 = v101;
        v143 = *&v11;
        swift_beginAccess();
        v51 = *(v46 + 48);
        v50 = *(v46 + 64);
        v52 = *(v46 + 96);
        v147 = *(v46 + 80);
        v148 = v52;
        v145 = v51;
        v146 = v50;
        v144 = *(v46 + 32);
        v53 = v143;
        *(v46 + 80) = v142;
        *(v46 + 96) = v53;
        v54 = v140;
        *(v46 + 32) = v139;
        *(v46 + 48) = v54;
        *(v46 + 64) = v141;

        sub_2F118(&v139, &v134);
        sub_2F174(&v144);
        sub_2EB2A8();
LABEL_45:
        v66 = *v23;
        v65 = v23[1];
        swift_beginAccess();
        *(v46 + 112) = v66;
        *(v46 + 120) = v65;

        sub_2EB704();
        sub_109A5C(v128);

        *&v139 = v36;
        *(&v139 + 1) = v100;
        *&v140 = v99;
        *(&v140 + 1) = v39;
        *&v141 = v47;
        *(&v141 + 1) = v41;
        *&v142 = v49;
        *(&v142 + 1) = v48;
        v143 = *&v11;
        sub_2F174(&v139);

        v28 = v110;
        v26 = v111;
        v5 = UIFontTextStyleLargeTitle;
        v30 = v109;
        v3 = v102;
        goto LABEL_46;
      }
    }

    else
    {
      sub_109A00(v128, &v144);
    }

    *&v144 = v36;
    *(&v144 + 1) = v37;
    *&v145 = v38;
    *(&v145 + 1) = v39;
    v47 = v40;
    *&v146 = v40;
    *(&v146 + 1) = v41;
    v49 = v101;
    v48 = v22;
    *&v147 = v101;
    *(&v147 + 1) = v22;
    v148 = *&v11;
    type metadata accessor for TextStackView.Component();
    swift_allocObject();
    v46 = TextStackView.Component.init(identifier:labelProperties:)(0x7469747265707573, 0xEA0000000000656CLL, &v144);
    sub_2F118(&v144, &v139);

    TextStackView.add(_:)(v64);
    goto LABEL_45;
  }

  v55 = OBJC_IVAR____TtC16MusicApplication13TextStackView_indexedComponents;
  swift_beginAccess();
  v56 = *(a1 + v55);
  v57 = *(v56 + 16);
  v58 = v28;
  v59 = v30;
  v60 = v26;
  if (v57)
  {

    v61 = sub_2EBF88(0x7469747265707573, 0xEA0000000000656CLL);
    if (v62)
    {
      v63 = *(*(v56 + 56) + 8 * v61);

      TextStackView.remove(_:)(v63);
    }

    else
    {
    }
  }

LABEL_46:
  v67 = OBJC_IVAR____TtC16MusicApplication13TextStackView_indexedComponents;
  swift_beginAccess();
  v68 = *(a1 + v67);
  if (*(v68 + 16))
  {

    v69 = sub_2EBF88(0x656C746974, 0xE500000000000000);
    if (v70)
    {
      v71 = *(*(v68 + 56) + 8 * v69);

      *&v134 = v28;
      *(&v134 + 1) = v30;
      *&v135 = 0;
      *(&v135 + 1) = v112;
      v136 = 0uLL;
      *&v137 = v26;
      *(&v137 + 1) = v113;
      *&v138 = v14;
      *(&v138 + 1) = v10;
      swift_beginAccess();
      v73 = *(v71 + 48);
      v72 = *(v71 + 64);
      v74 = *(v71 + 96);
      v142 = *(v71 + 80);
      v143 = v74;
      v140 = v73;
      v141 = v72;
      v139 = *(v71 + 32);
      v75 = v138;
      *(v71 + 80) = v137;
      *(v71 + 96) = v75;
      v76 = v135;
      *(v71 + 32) = v134;
      *(v71 + 48) = v76;
      *(v71 + 64) = v136;

      sub_2F118(&v134, &v123);
      sub_2F174(&v139);
      sub_2EB2A8();
      goto LABEL_51;
    }
  }

  *&v139 = v28;
  *(&v139 + 1) = v30;
  *&v140 = 0;
  *(&v140 + 1) = v112;
  v141 = 0uLL;
  *&v142 = v26;
  *(&v142 + 1) = v113;
  *&v143 = v14;
  *(&v143 + 1) = v10;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v71 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, &v139);
  sub_2F118(&v139, &v134);

  TextStackView.add(_:)(v77);
LABEL_51:
  v79 = *&v3[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_title];
  v78 = *&v3[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_title + 8];
  swift_beginAccess();
  *(v71 + 112) = v79;
  *(v71 + 120) = v78;

  sub_2EB704();

  v80 = UIFontTextStyleTitle2;
  if (v106 == &dword_0 + 2)
  {
    v80 = v5;
    v81 = 58.0;
  }

  else
  {
    v81 = 32.0;
  }

  v82 = v80;
  v83 = sub_ABA580();

  v84 = [v103 systemGrayColor];
  v85 = [v103 clearColor];
  v86 = *(a1 + v67);
  v87 = *(v86 + 16);
  v107 = v84;
  v105 = v85;
  v104 = v83;
  if (!v87)
  {
    goto LABEL_58;
  }

  v88 = sub_2EBF88(0x656C746974627573, 0xE800000000000000);
  if ((v89 & 1) == 0)
  {

LABEL_58:
    *&v134 = v84;
    *(&v134 + 1) = v85;
    v135 = xmmword_AF7C20;
    v136 = 0uLL;
    *&v137 = v83;
    *(&v137 + 1) = 1;
    *&v138 = v81;
    *(&v138 + 1) = v10;
    type metadata accessor for TextStackView.Component();
    swift_allocObject();
    v90 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, &v134);
    sub_2F118(&v134, &v123);

    TextStackView.add(_:)(v96);
    goto LABEL_59;
  }

  v90 = *(*(v86 + 56) + 8 * v88);

  *&v123 = v84;
  *(&v123 + 1) = v85;
  v124 = xmmword_AF7C20;
  v125 = 0uLL;
  *&v126 = v83;
  *(&v126 + 1) = 1;
  *&v127 = v81;
  *(&v127 + 1) = v10;
  swift_beginAccess();
  v92 = *(v90 + 48);
  v91 = *(v90 + 64);
  v93 = *(v90 + 96);
  v137 = *(v90 + 80);
  v138 = v93;
  v135 = v92;
  v136 = v91;
  v134 = *(v90 + 32);
  v94 = v127;
  *(v90 + 80) = v126;
  *(v90 + 96) = v94;
  v95 = v124;
  *(v90 + 32) = v123;
  *(v90 + 48) = v95;
  *(v90 + 64) = v125;

  sub_2F118(&v123, v115);
  sub_2F174(&v134);
  sub_2EB2A8();
LABEL_59:
  v98 = *&v3[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_subtitle];
  v97 = *&v3[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_subtitle + 8];
  swift_beginAccess();
  *(v90 + 112) = v98;
  *(v90 + 120) = v97;

  sub_2EB704();

  v115[0] = v84;
  v115[1] = v85;
  v116 = xmmword_AF7C20;
  v117 = 0;
  v118 = 0;
  v119 = v83;
  v120 = 1;
  v121 = v81;
  v122 = v10;
  sub_2F174(v115);
  *&v123 = v110;
  *(&v123 + 1) = v109;
  *&v124 = 0;
  *(&v124 + 1) = v112;
  v125 = 0uLL;
  *&v126 = v111;
  *(&v126 + 1) = v113;
  *&v127 = v14;
  *(&v127 + 1) = v10;
  sub_2F174(&v123);
}

void sub_347F18()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_pageHeaderContentViewDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_layoutStyle) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView) = 0;
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_title);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_subtitle);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_supertitle);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_maximumNumberOfLinesInTitle) = 2;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_lineBreakMode) = 4;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_textDrawingCache) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isBottomHairlineVisible) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isBelowPromotionalImage) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isBelowStandardNavigationBar) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isAccessoryViewAlignedWithText) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isAccessoryViewAlignedWithTextForAccessibilitySizes) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_adjustsFontsForAccessibilitySizes) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_bottomHairlineView) = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_leadingStackView;
  type metadata accessor for TextStackView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v7 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  v6[v7] = 0;
  *(v0 + v4) = v6;
  v8 = OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_leadingSizingStackView;
  v9 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v10 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  v9[v10] = 0;
  *(v0 + v8) = v9;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_needsTextUpdate) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_gradientView) = 0;
  sub_ABAFD0();
  __break(1u);
}

char *BackgroundLockupCollectionViewCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkEdgeInsets;
  if (qword_DE6AB8 != -1)
  {
    swift_once();
  }

  v11 = &v5[v10];
  v12 = xmmword_E714F0;
  v13 = qword_E71500;
  v14 = unk_E71508;
  *v11 = xmmword_E714F0;
  *(v11 + 2) = v13;
  *(v11 + 3) = v14;
  v15 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkCornerTreatment;
  v16 = sub_ABA680();
  (*(*(v16 - 8) + 56))(&v5[v15], 1, 1, v16);
  v17 = &v5[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkPlaceholder];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 2) = 0u;
  *&v5[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_lockupImageArtworkCatalog] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkAspectRatio] = 0x3FF0000000000000;
  v18 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_textStackView;
  type metadata accessor for TextStackView();
  *&v5[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkSize] = xmmword_B0A6A0;
  v19 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v21 = sub_80104(v20);

  *&v5[v19] = v21;
  *&v5[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkCachingReference] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_textDrawingCache] = 0;
  v22 = &v5[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell__artworkEdgeInsets];
  *v22 = v12;
  *(v22 + 2) = v13;
  *(v22 + 3) = v14;
  v45.receiver = v5;
  v45.super_class = type metadata accessor for BackgroundLockupCollectionViewCell();
  v23 = objc_msgSendSuper2(&v45, "initWithFrame:", a1, a2, a3, a4);
  v24 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkComponent;
  v25 = v23;

  v26 = UIView.Border.artwork.unsafeMutableAddressor();
  v27 = *v26;
  v28 = *(v26 + 8);
  v29 = v26[2];
  v30 = v29;
  sub_75E64(v27, v28, v29);

  v31 = *&v23[v24];
  *(v31 + 24) = 0x70756B636F6CLL;
  *(v31 + 32) = 0xE600000000000000;

  v32 = *&v23[v24];
  v33 = *(v32 + 80);
  v34 = *(v32 + 88);
  *(v32 + 80) = *&v25[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkSize];

  sub_75614(v33, v34);

  v35 = *&v23[v24];
  v36 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v37 = (v35 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v38 = *(v35 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  *v37 = sub_8A12C;
  v37[1] = v36;

  sub_17654(v38);

  v39 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_textStackView;
  v40 = *&v25[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_textStackView];
  v41 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  *(v40 + v41) = 2;
  v42 = [v25 contentView];
  [v42 addSubview:*(*&v23[v24] + 112)];

  v43 = [v25 contentView];
  [v43 addSubview:*&v25[v39]];

  sub_34A210();
  return v25;
}

void BackgroundLockupCollectionViewCell.artworkComponentBackgroundColor.setter(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkComponent);
  v4 = *(v2 + 56);
  v3 = *(v2 + 64);
  *(v2 + 56) = a1;
  if (!v3)
  {
    goto LABEL_5;
  }

  sub_B9A4C();
  v9 = a1;
  if ((sub_ABA790() & 1) == 0)
  {
    v6 = *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
    if (v6)
    {

      v6(v7);

      sub_17654(v6);
LABEL_5:
      v8 = v4;
      goto LABEL_7;
    }
  }

  v8 = v9;
LABEL_7:
}

void (*BackgroundLockupCollectionViewCell.artworkComponentBackgroundColor.modify(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkComponent);
  a1[1] = v2;
  v3 = *(v2 + 56);
  *a1 = v3;
  v4 = v3;
  return sub_348684;
}

void sub_348684(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_74DD4(v3);
  }

  else
  {
    sub_74DD4(v2);
  }
}

double BackgroundLockupCollectionViewCell.artworkEdgeInsets.getter()
{
  v1 = v0 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkEdgeInsets;
  swift_beginAccess();
  return *v1;
}

uint64_t BackgroundLockupCollectionViewCell.artworkEdgeInsets.setter(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkEdgeInsets];
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  type metadata accessor for UIEdgeInsets(0);
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell__artworkEdgeInsets];
  v13 = *&v4[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell__artworkEdgeInsets];
  v14 = *&v4[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell__artworkEdgeInsets + 16];
  result = sub_AB38D0();
  if (result)
  {
    v12 = *(v9 + 1);
    *v10 = *v9;
    *(v10 + 1) = v12;
    sub_34A210();
    return [v4 setNeedsLayout];
  }

  return result;
}

void (*BackgroundLockupCollectionViewCell.artworkEdgeInsets.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkEdgeInsets;
  *(v3 + 64) = v1;
  *(v3 + 72) = v4;
  swift_beginAccess();
  return sub_34889C;
}

void sub_34889C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[8];
    v5 = v4 + v3[9];
    type metadata accessor for UIEdgeInsets(0);
    v6 = v4 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell__artworkEdgeInsets;
    v7 = *(v4 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell__artworkEdgeInsets + 16);
    *v3 = *(v4 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell__artworkEdgeInsets);
    *(v3 + 1) = v7;
    v8 = *(v5 + 16);
    *(v3 + 2) = *v5;
    *(v3 + 3) = v8;
    if (sub_AB38D0())
    {
      v9 = v3[8];
      v10 = *(v5 + 24);
      v11 = *(v5 + 8);
      *v6 = *&v9[v3[9]];
      *(v6 + 8) = v11;
      *(v6 + 24) = v10;
      sub_34A210();
      [v9 setNeedsLayout];
    }
  }

  free(v3);
}

uint64_t BackgroundLockupCollectionViewCell.artworkCornerTreatment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkCornerTreatment;
  swift_beginAccess();
  return sub_15F84(v1 + v3, a1, &unk_DFFBC0);
}

uint64_t BackgroundLockupCollectionViewCell.artworkCornerTreatment.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkCornerTreatment;
  swift_beginAccess();
  sub_8A01C(a1, v1 + v9);
  swift_endAccess();
  v10 = *(v1 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkComponent);
  sub_15F84(v1 + v9, v8, &unk_DFFBC0);
  v11 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  sub_15F84(v10 + v11, v6, &unk_DFFBC0);
  swift_beginAccess();
  sub_8A01C(v8, v10 + v11);
  swift_endAccess();
  sub_75AE8(v6);
  sub_12E1C(a1, &unk_DFFBC0);
  sub_12E1C(v6, &unk_DFFBC0);
  return sub_12E1C(v8, &unk_DFFBC0);
}

void (*BackgroundLockupCollectionViewCell.artworkCornerTreatment.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkCornerTreatment;
  v4[11] = v6;
  v4[12] = v7;
  swift_beginAccess();
  return sub_348C64;
}

void sub_348C64(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
    v5 = v3[10];
    v4 = v3[11];
  }

  else
  {
    v4 = v3[11];
    v6 = v3[9];
    v5 = v3[10];
    v7 = *(v6 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkComponent);
    sub_15F84(v6 + v3[12], v4, &unk_DFFBC0);
    v8 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
    swift_beginAccess();
    sub_15F84(v7 + v8, v5, &unk_DFFBC0);
    swift_beginAccess();
    sub_8A01C(v4, v7 + v8);
    swift_endAccess();
    sub_75AE8(v5);
    sub_12E1C(v5, &unk_DFFBC0);
    sub_12E1C(v4, &unk_DFFBC0);
  }

  free(v4);
  free(v5);

  free(v3);
}

id BackgroundLockupCollectionViewCell.artworkPlaceholder.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkPlaceholder;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v9 = *(v3 + 32);
  v8 = *(v3 + 40);
  result = sub_80C9C(v4, v5, v6, v7);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v9;
  a1[5] = v8;
  return result;
}

uint64_t BackgroundLockupCollectionViewCell.artworkPlaceholder.setter(_OWORD *a1)
{
  v3 = v1 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkPlaceholder;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = a1[1];
  *v3 = *a1;
  *(v3 + 16) = v8;
  *(v3 + 32) = a1[2];
  sub_15F84(a1, v15, &unk_DF8690);
  sub_15F84(a1, v15, &unk_DF8690);
  sub_2F1C8(v4, v5, v6, v7);
  v9 = *(v1 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkComponent);
  v10 = *(v9 + 168);
  v15[0] = *(v9 + 152);
  v15[1] = v10;
  v15[2] = *(v9 + 184);
  v12 = a1[1];
  v11 = a1[2];
  *(v9 + 152) = *a1;
  *(v9 + 168) = v12;
  *(v9 + 184) = v11;
  sub_15F84(a1, v14, &unk_DF8690);
  sub_75948(v15);
  sub_12E1C(v15, &unk_DF8690);
  sub_12E1C(a1, &unk_DF8690);
  return sub_12E1C(a1, &unk_DF8690);
}

void (*BackgroundLockupCollectionViewCell.artworkPlaceholder.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkPlaceholder;
  *(v3 + 72) = v1;
  *(v3 + 80) = v4;
  swift_beginAccess();
  return sub_34900C;
}

void sub_34900C(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 72);
    v5 = v4 + *(v3 + 80);
    v6 = *(v4 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkComponent);
    v7 = *v5;
    v8 = *(v5 + 8);
    v9 = *(v5 + 16);
    v10 = *(v5 + 24);
    v11 = *(v5 + 32);
    v12 = *(v5 + 40);
    v13 = *(v6 + 184);
    v14 = *(v6 + 168);
    *v3 = *(v6 + 152);
    *(v3 + 16) = v14;
    *(v3 + 32) = v13;
    *(v6 + 152) = v7;
    *(v6 + 160) = v8;
    *(v6 + 168) = v9;
    *(v6 + 176) = v10;
    *(v6 + 184) = v11;
    *(v6 + 192) = v12;
    sub_80C9C(v7, v8, v9, v10);
    sub_80C9C(v7, v8, v9, v10);
    sub_75948(v3);
    sub_12E1C(v3, &unk_DF8690);
    sub_2F1C8(v7, v8, v9, v10);
  }

  free(v3);
}

void *BackgroundLockupCollectionViewCell.lockupImageArtworkCatalog.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_lockupImageArtworkCatalog;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void BackgroundLockupCollectionViewCell.lockupImageArtworkCatalog.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_lockupImageArtworkCatalog;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_74EA4(a1);
}

void (*BackgroundLockupCollectionViewCell.lockupImageArtworkCatalog.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_lockupImageArtworkCatalog;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_349260;
}

void sub_349260(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[3] + v3[4]);
    v5 = v4;
    sub_74EA4(v4);
  }

  free(v3);
}

double BackgroundLockupCollectionViewCell.artworkAspectRatio.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkAspectRatio;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t BackgroundLockupCollectionViewCell.artworkAspectRatio.setter(double a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkAspectRatio;
  swift_beginAccess();
  *(v2 + v4) = a1;
  result = sub_AB38D0();
  if (result)
  {
    return sub_34A210();
  }

  return result;
}

void (*BackgroundLockupCollectionViewCell.artworkAspectRatio.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkAspectRatio;
  *(v3 + 48) = v1;
  *(v3 + 56) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_34942C;
}

void sub_34942C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  v1[4] = v5;
  v1[5] = v2;
  if (sub_AB38D0())
  {
    sub_34A210();
  }

  free(v1);
}

uint64_t sub_3494CC(double a1, double a2)
{
  v3 = v2;
  v6 = &v2[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkSize];
  v7 = *&v2[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkSize];
  v8 = *&v2[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkSize + 8];
  *v6 = a1;
  v6[1] = a2;
  type metadata accessor for CGSize(0);
  result = sub_AB38D0();
  if (result)
  {
    v10 = *&v2[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkComponent];
    v11 = *(v10 + 80);
    v12 = *(v10 + 88);
    *(v10 + 80) = *v6;
    sub_75614(v11, v12);
    return [v3 setNeedsLayout];
  }

  return result;
}

id sub_349634(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for BackgroundLockupCollectionViewCell();
  return objc_msgSendSuper2(&v5, *a3);
}

id sub_349684(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for BackgroundLockupCollectionViewCell();
  return objc_msgSendSuper2(&v4, *a1);
}

uint64_t sub_349750(SEL *a1, SEL *a2, double a3, double a4, double a5, double a6)
{
  v9 = v6;
  v14 = type metadata accessor for BackgroundLockupCollectionViewCell();
  v25.receiver = v9;
  v25.super_class = v14;
  objc_msgSendSuper2(&v25, *a1);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24.receiver = v9;
  v24.super_class = v14;
  objc_msgSendSuper2(&v24, *a2, a3, a4, a5, a6);
  v26.origin.x = v16;
  v26.origin.y = v18;
  v26.size.width = v20;
  v26.size.height = v22;
  CGRectGetWidth(v26);
  [v9 *a1];
  CGRectGetWidth(v27);
  result = sub_AB38D0();
  if (result)
  {
    return sub_34A210();
  }

  return result;
}

Swift::Void __swiftcall BackgroundLockupCollectionViewCell.layoutSubviews()()
{
  v19.receiver = v0;
  v19.super_class = type metadata accessor for BackgroundLockupCollectionViewCell();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  [v0 effectiveUserInterfaceLayoutDirection];
  v3 = UIEdgeInsetsInsetRect_4(v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_ABA490();
  sub_76B28(v10, v11, v12, v13);
  v14 = *&v0[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_textStackView];
  [v14 sizeThatFits:{v7, v9}];
  v16 = v15;
  v20.origin.x = v3;
  v20.origin.y = v5;
  v20.size.width = v7;
  v20.size.height = v9;
  MaxX = CGRectGetMaxX(v20);
  v21.origin.x = v3;
  v21.origin.y = v5;
  v21.size.width = v16;
  v21.size.height = v9;
  v18 = MaxX - CGRectGetWidth(v21);
  v22.origin.x = v3;
  v22.origin.y = v5;
  v22.size.width = v7;
  v22.size.height = v9;
  CGRectGetMaxY(v22);
  v23.origin.x = v18;
  v23.origin.y = v5;
  v23.size.width = v16;
  v23.size.height = v9;
  CGRectGetHeight(v23);
  sub_ABA490();
  [v14 setFrame:?];
}

Swift::Void __swiftcall BackgroundLockupCollectionViewCell.clearArtworkCatalogs()()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkComponent);
  [*(v1 + 112) clearArtworkCatalogs];
  *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = 0;
  *(v1 + 200) = 0;
  *(v1 + 208) = 0;
}

Swift::Void __swiftcall BackgroundLockupCollectionViewCell.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for BackgroundLockupCollectionViewCell();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", isa);
  if (isa)
  {
    [(objc_class *)isa displayScale];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBA30);
  v4 = [v2 traitCollection];
  [v4 displayScale];
  v6 = v5;

  LOBYTE(v7) = 0;
  sub_8A2B8();
  if (sub_AB38D0())
  {
    [v2 setNeedsLayout];
  }
}

void sub_349D0C(void *a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  v9 = type metadata accessor for BackgroundLockupCollectionViewCell();
  v13.receiver = a1;
  v13.super_class = v9;
  v10 = *a4;
  v11 = a1;
  LOBYTE(v10) = objc_msgSendSuper2(&v13, v10);
  v12.receiver = v11;
  v12.super_class = v9;
  objc_msgSendSuper2(&v12, *a5, a3);
  sub_349E38(v10, a4);
}

void sub_349DB8(char a1, SEL *a2, SEL *a3)
{
  v7 = type metadata accessor for BackgroundLockupCollectionViewCell();
  v10.receiver = v3;
  v10.super_class = v7;
  v8 = objc_msgSendSuper2(&v10, *a2);
  v9.receiver = v3;
  v9.super_class = v7;
  objc_msgSendSuper2(&v9, *a3, a1 & 1);
  sub_349E38(v8, a2);
}

void sub_349E38(char a1, SEL *a2)
{
  if ([v2 *a2] != (a1 & 1))
  {
    v4 = *(*&v2[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkComponent] + 112);
    v3 = 2;
    if (([v2 isHighlighted] & 1) == 0)
    {
      if ([v2 isSelected])
      {
        v3 = 2;
      }

      else
      {
        v3 = 0;
      }
    }

    [v4 setDrawMode:v3];
  }
}

uint64_t BackgroundLockupCollectionViewCell.artworkCachingReference.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkCachingReference;
  swift_beginAccess();
  *(v1 + v3) = a1;

  *(*(v1 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkComponent) + 16) = a1;
}

void (*BackgroundLockupCollectionViewCell.artworkCachingReference.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkCachingReference;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_34A004;
}

void sub_34A004(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    *(*(v3[3] + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkComponent) + 16) = *(v3[3] + v3[4]);
  }

  free(v3);
}

uint64_t BackgroundLockupCollectionViewCell.textDrawingCache.setter(uint64_t a1)
{
  sub_34A618(a1);
}

void (*BackgroundLockupCollectionViewCell.textDrawingCache.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_textDrawingCache;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_34A13C;
}

void sub_34A13C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_textStackView);
    v6 = *(v4 + v3[4]);
    v7 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v8 = *(v5 + v7);
    *(v5 + v7) = v6;
    swift_retain_n();
    sub_2E6210(v8);
  }

  free(v3);
}

__n128 sub_34A1F4()
{
  result = *&UIEdgeInsetsZero.top;
  v1 = *&UIEdgeInsetsZero.bottom;
  xmmword_E714F0 = *&UIEdgeInsetsZero.top;
  *&qword_E71500 = v1;
  return result;
}

uint64_t sub_34A210()
{
  v1 = v0;
  [v0 bounds];
  Width = CGRectGetWidth(v11);
  v3 = [v0 traitCollection];
  v4 = &v1[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkEdgeInsets];
  swift_beginAccess();
  v5 = v4[1];
  v6 = v4[3];
  swift_beginAccess();
  [v3 displayScale];
  sub_AB3A00();
  v8 = v7;

  v9 = Width - v5 - v6;
  type metadata accessor for CGSize(0);
  result = sub_AB38D0();
  if (result)
  {
    return sub_3494CC(v9, v8);
  }

  return result;
}

id BackgroundLockupCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackgroundLockupCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_34A434(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkCachingReference;
  swift_beginAccess();
  *(v1 + v3) = a1;

  *(*(v1 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkComponent) + 16) = a1;
}

void (*sub_34A524(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = BackgroundLockupCollectionViewCell.textDrawingCache.modify(v2);
  return sub_A8F90;
}

uint64_t type metadata accessor for BackgroundLockupCollectionViewCell()
{
  result = qword_DFFCE8;
  if (!qword_DFFCE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_34A5E0()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_34A618(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_textDrawingCache;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_retain_n();

  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_textStackView);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *(v4 + v5) = a1;

  sub_2E6210(v6);
}

void _s16MusicApplication34BackgroundLockupCollectionViewCellC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkEdgeInsets;
  if (qword_DE6AB8 != -1)
  {
    swift_once();
  }

  v3 = v1 + v2;
  v4 = xmmword_E714F0;
  v5 = qword_E71500;
  v6 = unk_E71508;
  *v3 = xmmword_E714F0;
  *(v3 + 16) = v5;
  *(v3 + 24) = v6;
  v7 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkCornerTreatment;
  v8 = sub_ABA680();
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = (v1 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkPlaceholder);
  *v9 = 0u;
  v9[1] = 0u;
  v9[2] = 0u;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_lockupImageArtworkCatalog) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkAspectRatio) = 0x3FF0000000000000;
  v10 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_textStackView;
  type metadata accessor for TextStackView();
  *(v1 + v10) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkSize) = xmmword_B0A6A0;
  v11 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v13 = sub_80104(v12);

  *(v1 + v11) = v13;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkCachingReference) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_textDrawingCache) = 0;
  v14 = v1 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell__artworkEdgeInsets;
  *v14 = v4;
  *(v14 + 16) = v5;
  *(v14 + 24) = v6;
  sub_ABAFD0();
  __break(1u);
}

void sub_34A8F0()
{
  sub_7D678();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_34AB20(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_arrangedSubviews;

  v5 = sub_12D118(v4, a1);

  if (v5)
  {
    return result;
  }

  v7 = *&v1[v3];
  if (v7 >> 62)
  {
LABEL_45:
    v8 = sub_ABB060();
    v31 = v1;
    if (v8)
    {
LABEL_4:
      v32 = v7 & 0xC000000000000001;
      v28 = v7 + 32;
      v29 = v7 & 0xFFFFFFFFFFFFFF8;

      v30 = v7;

      v9 = 0;
LABEL_5:
      v7 = a1 & 0xFFFFFFFFFFFFFF8;
      v10 = a1 >> 62;
      while (1)
      {
        if (v32)
        {
          v11 = sub_3605EC(v9, v30);
        }

        else
        {
          if (v9 >= *(v29 + 16))
          {
            goto LABEL_43;
          }

          v11 = *(v28 + 8 * v9);
        }

        v12 = v11;
        if (__OFADD__(v9++, 1))
        {
          goto LABEL_42;
        }

        v1 = v8;
        if (v10)
        {
          v14 = sub_ABB060();
          if (v14)
          {
LABEL_14:
            if ((a1 & 0xC000000000000001) != 0)
            {
              v15 = 0;
              while (1)
              {
                v16 = sub_3605EC(v15, a1);
                swift_unknownObjectRelease();
                if (v12 == v16)
                {
                  break;
                }

                v17 = v15 + 1;
                if (__OFADD__(v15, 1))
                {
                  __break(1u);
                  goto LABEL_41;
                }

                ++v15;
                if (v17 == v14)
                {
                  goto LABEL_6;
                }
              }

LABEL_27:
              isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
              if (v10 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
              {
                a1 = sub_28572C(a1);
                v7 = a1 & 0xFFFFFFFFFFFFFF8;
              }

              v19 = *(v7 + 16);
              if (v15 < v19)
              {
                v20 = v19 - 1;
                v21 = v7 + 8 * v15;
                v22 = *(v21 + 32);
                memmove((v21 + 32), (v21 + 40), 8 * (v19 - 1 - v15));
                *(v7 + 16) = v20;

                v8 = v1;
                if (v9 != v1)
                {
                  goto LABEL_5;
                }

LABEL_32:

                if (a1 >> 62)
                {
                  goto LABEL_47;
                }

LABEL_33:
                v23 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
                if (v23)
                {
                  goto LABEL_34;
                }

LABEL_48:

                v27 = *&v31[OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_layoutInvalidationHandler];
                if (v27)
                {

                  v27(v31);
                  sub_17654(v27);
                }

                return [v31 setNeedsLayout];
              }
            }

            else
            {
              v15 = 0;
              while (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)) != v15)
              {
                if (v12 == *(a1 + 32 + 8 * v15))
                {
                  goto LABEL_27;
                }

                if (v14 == ++v15)
                {
                  goto LABEL_6;
                }
              }

LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
LABEL_43:
              __break(1u);
            }

            __break(1u);
            goto LABEL_45;
          }
        }

        else
        {
          v14 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
          if (v14)
          {
            goto LABEL_14;
          }
        }

LABEL_6:
        [v31 addSubview:v12];

        v8 = v1;
        if (v9 == v1)
        {
          goto LABEL_32;
        }
      }
    }
  }

  else
  {
    v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    v31 = v1;
    if (v8)
    {
      goto LABEL_4;
    }
  }

  if (!(a1 >> 62))
  {
    goto LABEL_33;
  }

LABEL_47:
  result = sub_ABB060();
  v23 = result;
  if (!result)
  {
    goto LABEL_48;
  }

LABEL_34:
  if (v23 >= 1)
  {
    for (i = 0; i != v23; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v25 = sub_3605EC(i, a1);
      }

      else
      {
        v25 = *(a1 + 8 * i + 32);
      }

      v26 = v25;
      [v25 removeFromSuperview];
    }

    goto LABEL_48;
  }

  __break(1u);
  return result;
}

id sub_34AEA0(char a1)
{
  if ((a1 & 1) == 0)
  {
    [v1 sizeThatFits:{0.0, 0.0}];
    v3 = v2;
    v4 = OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_lastKnownHeight;
    v7 = v2;
    v8 = *&v1[OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_lastKnownHeight];
    if ((sub_AB38D0() & 1) == 0)
    {
      return [v1 setNeedsLayout];
    }

    *&v1[v4] = v3;
  }

  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_layoutInvalidationHandler];
  if (v5)
  {

    v5(v1);
    sub_17654(v5);
  }

  return [v1 setNeedsLayout];
}

void sub_34AF78()
{
  v1 = v0;
  v86.receiver = v0;
  v86.super_class = type metadata accessor for PromotionalParallaxContentStackView();
  objc_msgSendSuper2(&v86, "layoutSubviews");
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v0 traitCollection];
  [v10 displayScale];

  [v1 effectiveUserInterfaceLayoutDirection];
  [v1 music_inheritedLayoutInsets];
  v12 = v11;
  v14 = v13;
  v77 = [v1 traitCollection];
  v82 = v3;
  v15 = UIEdgeInsetsInsetRect(v3, v5, v7, v9, v12, v14);
  rect = v16;
  v18 = v17;
  v20 = v19;
  v79 = *&v1[OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_interitemSpacing];
  v21 = *&v1[OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_arrangedSubviews];
  if (v21 >> 62)
  {
    v71 = v15;
    v72 = sub_ABB060();
    v15 = v71;
    v22 = v72;
    if (v72)
    {
      goto LABEL_3;
    }

LABEL_44:

    return;
  }

  v22 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
  if (!v22)
  {
    goto LABEL_44;
  }

LABEL_3:
  if (v22 >= 1)
  {
    v78 = v15;
    v81 = v9;
    v83 = v7;
    v23 = v21 & 0xC000000000000001;

    v24 = 0;
    v25 = &selRef__authenticateReturningError_;
    v80 = v18;
    v75 = v21 & 0xC000000000000001;
    v76 = v21;
    v74 = v22;
    while (1)
    {
      v84 = v20;
      if (v23)
      {
        v43 = sub_3605EC(v24, v21);
      }

      else
      {
        v43 = *(v21 + 8 * v24 + 32);
      }

      v44 = v43;
      swift_getObjectType();
      v45 = swift_conformsToProtocol2();
      if (v45 && v44)
      {
        v46 = v45;
        ObjectType = swift_getObjectType();
        v48 = (*(v46 + 16))(v1, v77, ObjectType, v46);
        v49 = (*(v46 + 8))(v1, v77, ObjectType, v46);
        if (v48 == 2)
        {
          [v44 music_layoutInsets];
          v51 = v50;
          [v44 music_layoutInsets];
          [v44 music_setLayoutInsets:{v51, 0.0}];
          v90.origin.x = v78;
          v90.size.height = v20;
          v90.origin.y = rect;
          v90.size.width = v80;
          v25 = &selRef__authenticateReturningError_;
          [v44 sizeThatFits:{CGRectGetWidth(v90), 0.0}];
          Width = v52;
          v55 = v54;
          v48 = 0;
          v22 = v74;
          v23 = v75;
          v21 = v76;
          v56 = v49;
          if (v49)
          {
            goto LABEL_38;
          }

          goto LABEL_23;
        }

        [v44 music_layoutInsets];
        v59 = v61;
        if (v48)
        {
          v60 = -1.0;
        }

        else
        {
          v60 = 0.0;
        }

        v22 = v74;
        v23 = v75;
        v21 = v76;
        v25 = &selRef__authenticateReturningError_;
      }

      else
      {
        [v44 music_layoutInsets];
        v59 = v58;
        v48 = 0;
        v60 = 0.0;
        v49 = 1;
      }

      [v44 music_layoutInsets];
      [v44 music_setLayoutInsets:{v59, v60}];
      if (v48)
      {
        v62 = v82;
      }

      else
      {
        v62 = v78;
      }

      v63 = rect;
      if (v48)
      {
        v63 = v5;
      }

      v64 = v80;
      v65 = v20;
      if (v48)
      {
        v64 = v83;
        v65 = v81;
      }

      Width = CGRectGetWidth(*&v62);
      v92.origin.x = 0.0;
      v92.origin.y = 0.0;
      v92.size.height = 0.0;
      v92.size.width = Width;
      [v44 v25[307]];
      v55 = v66;
      v56 = v49;
      if (v49)
      {
LABEL_38:
        if (v56 != 1)
        {
          if (v48)
          {
            v26 = v82;
          }

          else
          {
            v26 = v78;
          }

          v27 = v5;
          v28 = rect;
          if (v48)
          {
            v28 = v5;
          }

          v29 = v80;
          v30 = v83;
          if ((v48 & 1) == 0)
          {
            v30 = v80;
          }

          v31 = v81;
          v32 = v20;
          if ((v48 & 1) == 0)
          {
            v31 = v20;
          }

          MaxX = CGRectGetMaxX(*&v26);
          v87.origin.x = 0.0;
          v87.origin.y = 0.0;
          v87.size.width = Width;
          v87.size.height = v55;
          v34 = CGRectGetWidth(v87);
          v35 = rect;
          v36 = MaxX - v34;
          goto LABEL_15;
        }

        v73 = v55;
        v27 = v5;
        sub_ABA470();
        v35 = rect;
        v36 = v67;
        Width = v68;
        v55 = v69;
        goto LABEL_40;
      }

LABEL_23:
      if ((v48 & 1) == 0)
      {
        v93.origin.x = v78;
        v32 = v20;
        v93.origin.y = rect;
        v29 = v80;
        v93.size.width = v80;
        v93.size.height = v20;
        MinX = CGRectGetMinX(v93);
        v27 = v5;
        v35 = rect;
        v36 = MinX;
        goto LABEL_15;
      }

      v91.origin.x = v82;
      v27 = v5;
      v91.origin.y = v5;
      v91.size.width = v83;
      v91.size.height = v81;
      v57 = CGRectGetMinX(v91);
      v35 = rect;
      v36 = v57;
LABEL_40:
      v29 = v80;
      v32 = v84;
LABEL_15:
      ++v24;
      v37 = v78;
      v38 = v29;
      v39 = v32;
      MinY = CGRectGetMinY(*(&v35 - 1));
      sub_ABA490();
      [v44 setFrame:?];
      v88.origin.x = v36;
      v88.origin.y = MinY;
      v88.size.width = Width;
      v88.size.height = v55;
      v41 = v32 - (v79 + CGRectGetHeight(v88));
      v89.origin.x = v36;
      v89.origin.y = MinY;
      v89.size.width = Width;
      v89.size.height = v55;
      MaxY = CGRectGetMaxY(v89);

      rect = v79 + MaxY;
      v5 = v27;
      v20 = v41;
      if (v22 == v24)
      {

        return;
      }
    }
  }

  __break(1u);
}

uint64_t sub_34B68C(double a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_arrangedSubviews;
  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_arrangedSubviews);
  if (v4 >> 62)
  {
    v5 = sub_ABB060();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = 0.0;

  v7 = 0;
  v8 = 0.0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = sub_3605EC(v7, v4);
    }

    else
    {
      v9 = *(v4 + 8 * v7 + 32);
    }

    v10 = v9;
    ++v7;
    [v9 sizeThatFits:{a1, 0.0}];
    v12 = v11;
    v14 = v13;

    if (v8 <= v12)
    {
      v8 = v12;
    }

    v6 = v6 + v14;
  }

  while (v5 != v7);

LABEL_13:
  v5 = *(v1 + v3);
  if (v5 >> 62)
  {
    result = sub_ABB060();
    if (result)
    {
LABEL_15:
      v4 = result - 1;
      if (!__OFSUB__(result, 1))
      {
        if ((v5 & 0xC000000000000001) == 0)
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v4 < *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
          {
            v16 = *(v5 + 8 * v4 + 32);
LABEL_20:
            swift_getObjectType();
            v17 = swift_conformsToProtocol2();
            if (v17)
            {
              v18 = v16 == 0;
            }

            else
            {
              v18 = 1;
            }

            if (!v18)
            {
              v19 = v17;
              ObjectType = swift_getObjectType();
              (*(v19 + 24))(v1, ObjectType, v19);
            }

            goto LABEL_27;
          }

          __break(1u);
          return result;
        }

LABEL_32:

        v16 = sub_3605EC(v4, v5);

        goto LABEL_20;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {
    result = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_15;
    }
  }

LABEL_27:
  if (*(v1 + v3) >> 62)
  {
    sub_ABB060();
  }

  return sub_AB38D0();
}

id sub_34B944()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PromotionalParallaxContentStackView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_34B9F0()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 40);
    do
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
LABEL_18:
        result = swift_once();
        if (byte_E71A90)
        {
          return result;
        }

LABEL_13:
        if (*(v0 + 145) == 1)
        {
          v10 = *(*v0 + 776);

          return v10();
        }

        return result;
      }

      v7 = *v4;
      v8 = qword_DE6D68;
      swift_unknownObjectRetain();
      if (v8 == -1)
      {
        if (byte_E71A90)
        {
          goto LABEL_8;
        }
      }

      else
      {
        swift_once();
        if (byte_E71A90)
        {
LABEL_8:
          v5 = 0;
          goto LABEL_4;
        }
      }

      v5 = *(v0 + 145);
LABEL_4:
      ++v3;
      ObjectType = swift_getObjectType();
      (*(v7 + 16))(v5, ObjectType, v7);
      swift_unknownObjectRelease();
      v4 += 2;
    }

    while (v2 != v3);
  }

  if (qword_DE6D68 != -1)
  {
    goto LABEL_18;
  }

  if ((byte_E71A90 & 1) == 0)
  {
    goto LABEL_13;
  }

  return result;
}

id sub_34BB9C()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_mediaPickerAddController] = 0;
  v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_isHiddenBySearchController] = 0;
  v2 = &v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onDidSelectItem];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onContextMenuPresentation];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onAddKeepLocalControl];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onPageRenderFinish];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_contextActionsModelLoadingHandler];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onDragSessionStart];
  *v7 = 0;
  v7[1] = 0;
  v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_isLoading] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_resultsLoadingWatchdog] = 0;
  v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_hasMixedTypes] = 0;
  v8 = &v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults];
  type metadata accessor for Search.Item(0);
  sub_1D30D0();
  sub_35BD2C(&qword_DF4FB0, type metadata accessor for Search.Item);
  sub_AB5110();
  v9 = type metadata accessor for Search.ResultContext(0);
  v10 = &v8[v9[7]];
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *v10 = 0u;
  v11 = &v8[v9[5]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v8[v9[6]] = 1;
  *&v8[v9[8]] = 0;
  *&v8[v9[9]] = 0;
  v12 = &v8[v9[10]];
  *v12 = 0;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0x7000000000000007;
  (*(*(v9 - 1) + 56))(&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__unfrozenResults], 1, 1, v9);
  v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_areResultsFrozen] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___impressionsTracker] = 0;
  v13 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *&v1[v13] = TextDrawing.Cache.init()();
  v14 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_artworkCachingReference;
  type metadata accessor for Artwork.CachingReference();
  *&v1[v14] = swift_allocObject();
  *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_bindings] = _swiftEmptyArrayStorage;
  v15 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_jsSearchResultItemTranslator;
  type metadata accessor for SearchResultItemTranslator();
  v16 = swift_allocObject();
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v16 + 16) = UnfairLock.init()();
  *(v16 + 24) = 0;
  *&v1[v15] = v16;
  *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___dateFormatter] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___playabilityController] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___loadingView] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___noContentController] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_dataSource] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_addKeepLocalController] = 0;
  v17 = objc_allocWithZone(type metadata accessor for JSSearchResultComponentController());
  *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_componentController] = JSSearchResultComponentController.init()();
  v19.receiver = v1;
  v19.super_class = type metadata accessor for SearchResultsViewController();
  return objc_msgSendSuper2(&v19, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_34BF10()
{
  v1 = v0;
  v46.receiver = v0;
  v46.super_class = type metadata accessor for SearchResultsViewController();
  objc_msgSendSuper2(&v46, "viewDidLoad");
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_35BCB0;
  aBlock[5] = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_496F34;
  aBlock[3] = &block_descriptor_165_0;
  v4 = _Block_copy(aBlock);

  v5 = [v3 initWithSectionProvider:v4];
  _Block_release(v4);

  v6 = [v1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = v6;
  [v6 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v43 = v5;
  v16 = [objc_allocWithZone(UICollectionView) initWithFrame:v5 collectionViewLayout:{v9, v11, v13, v15}];
  [v16 setAlwaysBounceVertical:1];
  [v16 setKeyboardDismissMode:1];
  v17 = v16;
  [v17 setAutoresizingMask:18];
  [v17 setContentInsetAdjustmentBehavior:3];

  v18 = [objc_opt_self() systemBackgroundColor];
  [v17 setBackgroundColor:v18];

  [v17 setAllowsFocus:1];
  [v17 setRemembersLastFocusedIndexPath:1];
  [v17 setDelegate:v1];
  v19 = *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView];
  v44 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView;
  *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView] = v17;
  v20 = v17;

  v21 = [v1 view];
  if (!v21)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v22 = v21;
  [v21 addSubview:v20];

  type metadata accessor for SearchResultsViewController.Header();
  sub_AB92A0();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();

  type metadata accessor for SearchHintCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for SearchResultCell();
  for (i = 0; i != 15; ++i)
  {
    UICollectionView.register<A>(_:reuseIdentifier:)();
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00080));
  v24 = v20;
  v25 = sub_AB5200();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_AB5210();

  v26 = *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_dataSource];
  *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_dataSource] = v25;
  v27 = v25;

  sub_34E868(0, 0);
  v28 = [v1 traitCollection];
  v29 = UITraitCollection.isMediaPicker.getter();

  if (v29)
  {
    v30 = [v1 navigationController];
    if (v30)
    {
      v31 = v30;
      type metadata accessor for MediaPickerNavigationController();
      if (swift_dynamicCastClass())
      {
        v32 = *&v1[v44];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE318);
        v33 = swift_allocObject();
        swift_unknownObjectWeakInit();
        *(v33 + 24) = 0;
        *(v33 + 32) = 0;
        swift_unknownObjectWeakAssign();
        v34 = v32;

        v35 = *(v33 + 24);
        *(v33 + 24) = v32;

        *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_mediaPickerAddController] = v33;
      }
    }
  }

  v36 = *&v1[v44];
  if (!v36)
  {
LABEL_17:
    __break(1u);
    JUMPOUT(0x34C754);
  }

  type metadata accessor for LibraryCollectionViewAddKeepLocalController();
  swift_allocObject();
  v37 = sub_1709C(v36);

  v38 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_addKeepLocalController;
  *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_addKeepLocalController] = v37;

  *(v37 + 24) = &off_D0C440;
  swift_unknownObjectWeakAssign();

  v40 = *&v1[v38];
  if (!v40)
  {
    return result;
  }

  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = *(v40 + 32);
  *(v40 + 32) = sub_35BCC8;
  *(v40 + 40) = v41;

  sub_17654(v42);
}

uint64_t sub_34C790(unint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return 0;
  }

  v9 = result;
  v10 = *(result + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_dataSource);
  if (v10)
  {
    v11 = v10;
    sub_AB5250();

    v12 = sub_AB5100();
    result = (*(v5 + 8))(v7, v4);
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v12 + 16) > a1)
    {
      v13 = *(v12 + a1 + 32);

      v14 = sub_351734(v13, a2);

      return v14;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_34C918(uint64_t a1, char *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = Strong;
  v7 = sub_351B58(a3, a2);

  return v7;
}

unint64_t sub_34C998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35[1] = a4;
  v7 = sub_AB35C0();
  __chkstk_darwin(v7 - 8);
  v8 = sub_AB9250();
  __chkstk_darwin(v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v35 - v11;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v14 = result;
  v35[0] = a1;
  if (sub_AB92A0() == a2 && v15 == a3)
  {
  }

  else
  {
    v17 = sub_ABB3C0();

    if ((v17 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v18 = *&v14[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_dataSource];
  if (!v18)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v19 = v18;
  sub_AB5250();

  v20 = sub_AB5100();
  (*(v10 + 8))(v12, v9);
  result = IndexPath.safeSection.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (result >= *(v20 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21 = *(v20 + result + 32);

  if (v21)
  {
LABEL_13:

    return 0;
  }

  type metadata accessor for SearchResultsViewController.Header();
  static UICollectionReusableView.reuseIdentifier.getter();
  v22 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)();

  sub_AB91E0();
  sub_AB3550();
  v23 = sub_AB9320();
  v24 = (v22 + OBJC_IVAR____TtCC16MusicApplication27SearchResultsViewControllerP33_ECEB0A228643F5C5A0ED18BD126DBF576Header_title);
  *v24 = v23;
  v24[1] = v25;

  v26 = *(v22 + OBJC_IVAR____TtCC16MusicApplication27SearchResultsViewControllerP33_ECEB0A228643F5C5A0ED18BD126DBF576Header_titleLabel);

  v27 = sub_AB9260();

  [v26 setText:v27];

  sub_AB91E0();
  sub_AB3550();
  v28 = sub_AB9320();
  sub_3596A0(v28, v29);
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = (v22 + OBJC_IVAR____TtCC16MusicApplication27SearchResultsViewControllerP33_ECEB0A228643F5C5A0ED18BD126DBF576Header_buttonHandler);
  v32 = *(v22 + OBJC_IVAR____TtCC16MusicApplication27SearchResultsViewControllerP33_ECEB0A228643F5C5A0ED18BD126DBF576Header_buttonHandler);
  *v31 = sub_35BCD0;
  v31[1] = v30;
  swift_retain_n();
  sub_17654(v32);
  v33 = sub_359758();
  v34 = sub_13C80(0, &qword_DF13D0);

  ControlEventHandling<>.on(_:handler:)(64, sub_35BCD0, v30, v34);

  return v22;
}

void sub_34CE0C(void *a1)
{
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  __chkstk_darwin(v3 - 8);
  v4 = [objc_opt_self() alertControllerWithTitle:0 message:0 preferredStyle:0];
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v5 = sub_AB9260();

  aBlock[4] = sub_34D190;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1546C;
  aBlock[3] = &block_descriptor_173;
  v6 = _Block_copy(aBlock);

  v7 = objc_opt_self();
  v8 = [v7 actionWithTitle:v5 style:2 handler:v6];
  _Block_release(v6);

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v9 = sub_AB9260();

  v10 = [v7 actionWithTitle:v9 style:1 handler:0];

  [v4 addAction:v8];
  [v4 addAction:v10];
  v11 = v4;
  v12 = [v11 popoverPresentationController];
  if (v12)
  {
    v13 = v12;
    [v12 setSourceView:a1];
  }

  v14 = [v11 popoverPresentationController];

  if (v14)
  {
    [a1 bounds];
    [v14 setSourceRect:?];
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    [Strong presentViewController:v11 animated:1 completion:0];

    v8 = v10;
    v10 = v16;
  }
}

void sub_34D190()
{
  v0 = [objc_opt_self() standardUserDefaults];
  memset(v2, 0, sizeof(v2));
  v1 = 1;
  sub_35BCD8();
  sub_36A48();
  NSUserDefaults.subscript.setter(v2, &v1, &_s9SearchKeyON);
}

void sub_34D214()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4FB8);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_dataSource);
    v5 = Strong;
    v6 = v4;

    if (v4)
    {
      sub_AB5230();

      v7 = type metadata accessor for Search.Item(0);
      if ((*(*(v7 - 8) + 48))(v2, 1, v7) == 1)
      {
        sub_12E1C(v2, &qword_DF4FB8);
      }

      else
      {
        v8 = Search.Item.modelObject.getter();
        sub_35BBD4(v2, type metadata accessor for Search.Item);
        if (v8)
        {
          v9 = [v8 innermostModelObject];

          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
          }
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_34D5F4(void *a1)
{
  v2 = v1;
  v33.receiver = v1;
  v33.super_class = type metadata accessor for SearchResultsViewController();
  objc_msgSendSuper2(&v33, "traitCollectionDidChange:", a1);
  if ([v1 isViewLoaded])
  {
    v4 = [v1 traitCollection];
    v5 = UITraitCollection.isMediaPicker.getter();

    if (!a1 || UITraitCollection.isMediaPicker.getter() != v5)
    {
      v6 = [v2 traitCollection];
      v7 = UITraitCollection.isMediaPicker.getter();

      if (v7)
      {
        v8 = 0;
      }

      else
      {
        v9 = *&v2[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView];
        if (!v9)
        {
          goto LABEL_33;
        }

        type metadata accessor for LibraryCollectionViewAddKeepLocalController();
        swift_allocObject();
        v8 = sub_1709C(v9);
      }

      *&v2[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_addKeepLocalController] = v8;
    }
  }

  v10 = [v2 traitCollection];
  v11 = UITraitCollection.isMediaPicker.getter();

  if (v11)
  {
    v12 = [v2 navigationController];
    if (v12)
    {
      v13 = v12;
      type metadata accessor for MediaPickerNavigationController();
      if (swift_dynamicCastClass())
      {
        v14 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_mediaPickerAddController;
        if (!*&v2[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_mediaPickerAddController])
        {
          v29 = *&v2[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE318);
          v30 = swift_allocObject();
          swift_unknownObjectWeakInit();
          *(v30 + 24) = 0;
          *(v30 + 32) = 0;
          swift_unknownObjectWeakAssign();
          v31 = v29;

          v32 = *(v30 + 24);
          *(v30 + 24) = v29;

          *&v2[v14] = v30;
          goto LABEL_16;
        }
      }
    }
  }

  v15 = [v2 traitCollection];
  v16 = UITraitCollection.isMediaPicker.getter();

  if (v16)
  {
    goto LABEL_17;
  }

  *&v2[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_mediaPickerAddController] = 0;
LABEL_16:

LABEL_17:
  v17 = [v2 traitCollection];
  v18 = [v17 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_23:
    v25 = *&v2[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_textDrawingCache];
    [*(v25 + 64) removeAllObjects];
    [*(v25 + 80) removeAllObjects];
    if (*(v25 + 96))
    {
      *(v25 + 104) = 1;
    }

    else
    {
      v26 = [objc_opt_self() defaultCenter];
      if (qword_DE6828 != -1)
      {
        swift_once();
      }

      [v26 postNotificationName:static TextDrawing.Cache.didInvalidateNotification object:v25];
    }

    v27 = *&v2[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView];
    if (v27)
    {
      v28 = [v27 collectionViewLayout];
      [v28 invalidateLayout];

      return;
    }

    __break(1u);
LABEL_33:
    __break(1u);
    return;
  }

  v19 = [a1 preferredContentSizeCategory];
  v20 = sub_AB92A0();
  v22 = v21;
  if (v20 == sub_AB92A0() && v22 == v23)
  {

    return;
  }

  v24 = sub_ABB3C0();

  if ((v24 & 1) == 0)
  {
    goto LABEL_23;
  }
}

id sub_34DA84(char a1)
{
  v2 = v1;
  v4 = sub_AB7C10();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for Search.ResultContext(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 isViewLoaded];
  if (result && v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_isLoading] != (a1 & 1))
  {
    if (v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_isLoading])
    {
      v10 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults;
      swift_beginAccess();
      sub_35BA54(&v1[v10], &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Search.ResultContext);
      v11 = (*(v6 + 80) + 24) & ~*(v6 + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = v1;
      sub_35BB6C(v8, v12 + v11, type metadata accessor for Search.ResultContext);
      aBlock[4] = sub_35A8D8;
      aBlock[5] = v12;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = &block_descriptor_109;
      _Block_copy(aBlock);
      v19 = _swiftEmptyArrayStorage;
      sub_35BD2C(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
      v13 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
      sub_36A00(&qword_DF06D0, &unk_DE9C30);
      sub_ABABB0();
      sub_AB7CB0();
      swift_allocObject();
      v14 = sub_AB7C90();

      sub_13C80(0, &qword_DE8ED0);
      v15 = sub_ABA150();
      OS_dispatch_queue.asyncAfterUIFeedbackDeadline(_:)();

      v16 = *&v13[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_resultsLoadingWatchdog];
      *&v13[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_resultsLoadingWatchdog] = v14;
      if (v16)
      {

        sub_AB7CA0();

LABEL_8:
      }
    }

    else
    {
      v17 = sub_350C04();
      LOBYTE(aBlock[0]) = 1;
      LoadingView.style.setter(0x10000000000);

      v18 = *&v2[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_resultsLoadingWatchdog];
      *&v2[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_resultsLoadingWatchdog] = 0;
      if (v18)
      {
        sub_AB7CA0();
        goto LABEL_8;
      }
    }

    return sub_358898(1);
  }

  return result;
}

void sub_34DE3C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_isLoading) != 1)
  {
    return;
  }

  v3 = a1 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults;
  swift_beginAccess();
  v4 = *(type metadata accessor for Search.ResultContext(0) + 20);
  v5 = (v3 + v4);
  v6 = *(v3 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v7[1];
  if (!v6)
  {
    if (v8)
    {
      return;
    }

    goto LABEL_11;
  }

  if (v8)
  {
    v9 = *v5 == *v7 && v6 == v8;
    if (v9 || (sub_ABB3C0() & 1) != 0)
    {
LABEL_11:
      v10 = sub_350C04();
      LoadingView.style.setter(0x100000000);
    }
  }
}

uint64_t sub_34DF14(uint64_t a1)
{
  v3 = type metadata accessor for Search.ResultContext(0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00050);
  __chkstk_darwin(v10 - 8);
  v12 = &v17[-v11];
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_areResultsFrozen))
  {
    sub_35BB6C(a1, v12, type metadata accessor for Search.ResultContext);
    (*(v4 + 56))(v12, 0, 1, v3);
    v13 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__unfrozenResults;
    swift_beginAccess();
    sub_160B4(v12, v1 + v13, &unk_E00050);
    return swift_endAccess();
  }

  else
  {
    (*(v4 + 56))(v12, 1, 1, v3);
    v15 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__unfrozenResults;
    swift_beginAccess();
    sub_160B4(v12, v1 + v15, &unk_E00050);
    swift_endAccess();
    sub_35BA54(a1, v9, type metadata accessor for Search.ResultContext);
    v16 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults;
    swift_beginAccess();
    sub_35BA54(v1 + v16, v7, type metadata accessor for Search.ResultContext);
    swift_beginAccess();
    sub_35BC4C(v9, v1 + v16);
    swift_endAccess();
    sub_34E1E4(v7);
    sub_35BBD4(a1, type metadata accessor for Search.ResultContext);
    sub_35BBD4(v7, type metadata accessor for Search.ResultContext);
    return sub_35BBD4(v9, type metadata accessor for Search.ResultContext);
  }
}

id sub_34E1E4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Search.ResultContext(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v58 - v8;
  result = [v1 isViewLoaded];
  if (!result)
  {
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0);
  v62 = sub_AB50C0();
  v11 = (a1 + v4[5]);
  v12 = *v11;
  v13 = v11[1];
  v14 = v2 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults;
  swift_beginAccess();
  v15 = (v14 + v4[5]);
  v16 = v15[1];
  if (v13)
  {
    if (!v16)
    {
      goto LABEL_27;
    }

    v17 = v12 == *v15 && v13 == v16;
    if (!v17 && (sub_ABB3C0() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v16)
  {
    goto LABEL_27;
  }

  sub_15F84(a1 + v4[7], v66, &unk_E00070);
  if (*&v66[0])
  {
    sub_E8BA0(v66 + 8, v63);
    sub_30E500(v66);
    v18 = v64;
    v19 = v65;
    __swift_project_boxed_opaque_existential_1(v63, v64);
    v20 = (*(v19 + 8))(v18, v19);
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_0(v63);
  }

  else
  {
    sub_12E1C(v66, &unk_E00070);
    v20 = 0;
    v22 = 0;
  }

  sub_35BA54(v14, v9, type metadata accessor for Search.ResultContext);
  v23 = &v9[v4[7]];
  if (*v23)
  {
    v59 = v20;
    v24 = *(v23 + 4);
    v25 = *(v23 + 5);
    v26 = __swift_project_boxed_opaque_existential_1(v23 + 1, v24);
    v60 = &v58;
    v27 = *(v24 - 8);
    __chkstk_darwin(v26);
    v61 = v22;
    v29 = &v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v27 + 16))(v29);
    sub_35BBD4(v9, type metadata accessor for Search.ResultContext);
    v30 = (*(v25 + 8))(v24, v25);
    v32 = v31;
    v33 = v29;
    v34 = v61;
    (*(v27 + 8))(v33, v24);
    if (v34)
    {
      if (v32)
      {
        if (v59 == v30 && v34 == v32)
        {
        }

        else
        {
          v36 = sub_ABB3C0();

          if ((v36 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        goto LABEL_39;
      }

LABEL_26:

      goto LABEL_27;
    }

    if (v32)
    {
      goto LABEL_26;
    }
  }

  else
  {
    sub_35BBD4(v9, type metadata accessor for Search.ResultContext);
    if (v22)
    {
      goto LABEL_26;
    }
  }

LABEL_39:
  v55 = v4[6];
  v56 = *(a1 + v55);
  v57 = *(v14 + v55);
  if (v56)
  {
    if (v57)
    {
      goto LABEL_43;
    }
  }

  else if ((v57 & 1) == 0)
  {
LABEL_43:
    v37 = 0;
    goto LABEL_28;
  }

LABEL_27:
  v37 = 1;
LABEL_28:
  if (qword_DE6D48 != -1)
  {
    swift_once();
  }

  v38 = sub_AB4BC0();
  __swift_project_value_buffer(v38, static Logger.search);
  v39 = v2;
  v40 = sub_AB4BA0();
  v41 = sub_AB9F10();

  if (os_log_type_enabled(v40, v41))
  {
    LODWORD(v61) = v37;
    v42 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v63[0] = v60;
    *v42 = 136643331;
    v43 = (v14 + v4[5]);
    v44 = v43[1];
    *&v66[0] = *v43;
    *(&v66[0] + 1) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6F0);
    v45 = sub_AB9350();
    v47 = sub_425E68(v45, v46, v63);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2082;
    LOBYTE(v66[0]) = *(v14 + v4[6]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF5010);
    v48 = sub_AB9350();
    v50 = sub_425E68(v48, v49, v63);

    *(v42 + 14) = v50;
    *(v42 + 22) = 2082;
    sub_35BA54(v14, v7, type metadata accessor for Search.ResultContext);
    v51 = &v7[v4[7]];
    if (*v51)
    {
      sub_E8BA0((v51 + 8), v66);
      sub_35BBD4(v7, type metadata accessor for Search.ResultContext);
    }

    else
    {
      sub_35BBD4(v7, type metadata accessor for Search.ResultContext);
      memset(v66, 0, sizeof(v66));
      v67 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00060);
    v52 = sub_AB9350();
    v54 = sub_425E68(v52, v53, v63);

    *(v42 + 24) = v54;
    _os_log_impl(&dword_0, v40, v41, "Will apply results for search=%{sensitive}s, variant=%{public}s, scope=%{public}s", v42, 0x20u);
    swift_arrayDestroy();

    v37 = v61;
  }

  else
  {
  }

  return sub_34E868(v62 > 0, v37);
}

id sub_34E868(char a1, int a2)
{
  v3 = v2;
  v30 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v9 = type metadata accessor for Search.ResultContext(0);
  v10 = __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  v15 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults;
  swift_beginAccess();
  sub_35BA54(v3 + v15, v14, type metadata accessor for Search.ResultContext);
  v16 = *(v6 + 16);
  v29 = v5;
  v16(v8, v14, v5);
  sub_358898(a1);
  sub_35BA54(v3 + v15, v12, type metadata accessor for Search.ResultContext);
  v17 = &v12[*(v9 + 28)];
  if (*v17)
  {
    sub_E8BA0((v17 + 8), v34);
    sub_35BBD4(v12, type metadata accessor for Search.ResultContext);
    sub_15F84(v34, v31, &unk_E00060);
    v18 = v32;
    if (v32)
    {
      v19 = v33;
      __swift_project_boxed_opaque_existential_1(v31, v32);
      v20 = (*(v19 + 32))(v18, v19);
      __swift_destroy_boxed_opaque_existential_0(v31);
    }

    else
    {
      sub_12E1C(v31, &unk_E00060);
      v20 = 0;
    }
  }

  else
  {
    sub_35BBD4(v12, type metadata accessor for Search.ResultContext);
    memset(v34, 0, sizeof(v34));
    v35 = 0;
    v20 = 1;
  }

  *(v3 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_hasMixedTypes) = v20 & 1;
  v21 = sub_34F178();
  sub_2E4810(v21);

  if (v30)
  {
    result = *(v3 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView);
    if (!result)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    result = [result _scrollToTopIfPossible:0];
  }

  v23 = *(v3 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_dataSource);
  if (a1)
  {
    if (v23)
    {
      v24 = *(v3 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onPageRenderFinish);
      v25 = v23;
      sub_307CC(v24);
      sub_AB5220();
LABEL_14:
      sub_17654(v24);

      v26 = *&v14[*(v9 + 32)];
      v27 = *(v3 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_componentController);

      sub_3599F0(v8, v26, v27);
      sub_12E1C(v34, &unk_E00060);
      (*(v6 + 8))(v8, v29);
      sub_35BBD4(v14, type metadata accessor for Search.ResultContext);
    }

    goto LABEL_16;
  }

  if (v23)
  {
    v24 = *(v3 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onPageRenderFinish);
    v25 = v23;
    sub_307CC(v24);
    sub_AB5240();
    goto LABEL_14;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_34F178()
{
  v1 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___impressionsTracker;
  if (*&v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___impressionsTracker])
  {
    v2 = *&v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___impressionsTracker];
LABEL_5:

    return v2;
  }

  result = [v0 loadViewIfNeeded];
  v4 = *&v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView];
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFFFA8);
    swift_allocObject();
    v2 = sub_2BFEB0(v0, v4, 1, 0);
    *&v0[v1] = v2;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_34F244@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00050);
  __chkstk_darwin(v4 - 8);
  v6 = v26 - v5;
  v7 = type metadata accessor for Search.ResultContext(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0);
  v12 = *(v11 - 8);
  result = __chkstk_darwin(v11);
  v15 = v26 - v14;
  v16 = *(v1 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_dataSource);
  if (v16)
  {
    v17 = v16;
    sub_AB5250();

    v18 = sub_AB5100();
    (*(v12 + 8))(v15, v11);
    if (!*(v18 + 16))
    {

      goto LABEL_16;
    }

    v19 = *(v18 + 32);

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_16;
      }

      v20 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults;
      swift_beginAccess();
      sub_35BA54(v2 + v20, v10, type metadata accessor for Search.ResultContext);
      v21 = &v10[*(v7 + 28)];
      if (!*v21)
      {
        sub_35BBD4(v10, type metadata accessor for Search.ResultContext);
        goto LABEL_16;
      }

      sub_E8BA0((v21 + 8), v28);
      sub_35BBD4(v10, type metadata accessor for Search.ResultContext);
      sub_70DF8(v28, v26);
      sub_70DF8(v26, v29);
      v22 = 1;
    }

    else
    {
      if (!v19)
      {
        LOBYTE(v29[0]) = 0;
        v31 = 0;
LABEL_12:
        sub_15F84(v29, v26, &qword_DFE5D0);
        if (v27 != 255)
        {
          v23 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults;
          swift_beginAccess();
          sub_35BA54(v2 + v23, v6, type metadata accessor for Search.ResultContext);
          (*(v8 + 56))(v6, 0, 1, v7);
          sub_475B48(v6, 2, a1);
          sub_12E1C(v6, &unk_E00050);
          sub_12E1C(v29, &qword_DFE5D0);
          sub_30E4AC(v26);
          v24 = 0;
LABEL_17:
          v25 = type metadata accessor for MetricsPageProperties();
          return (*(*(v25 - 8) + 56))(a1, v24, 1, v25);
        }

        sub_12E1C(v29, &qword_DFE5D0);
        sub_12E1C(v26, &qword_DFE5D0);
LABEL_16:
        v24 = 1;
        goto LABEL_17;
      }

      v30 = 0;
      memset(v29, 0, sizeof(v29));
      v22 = 2;
    }

    v31 = v22;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_34F674(__int128 *a1@<X8>)
{
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE5F0);
  __chkstk_darwin(v68);
  v69 = &v67 - v3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040);
  v4 = __chkstk_darwin(v71);
  v67 = (&v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __chkstk_darwin(v4);
  v72 = &v67 - v7;
  __chkstk_darwin(v6);
  v9 = (&v67 - v8);
  v10 = type metadata accessor for Search.Recents.Result.Item(0);
  __chkstk_darwin(v10 - 8);
  v70 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Search.ResultContext(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4FB8);
  __chkstk_darwin(v15 - 8);
  v17 = &v67 - v16;
  v18 = type metadata accessor for Search.Item(0);
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v73 = v1;
  v74 = &v67 - v23;
  v24 = *(v1 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_dataSource);
  if (v24)
  {
    v25 = v24;
    sub_AB5230();

    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_12E1C(v17, &qword_DF4FB8);
LABEL_7:
      sub_465CC(&v109);
LABEL_35:
      v63 = v116;
      a1[6] = v115;
      a1[7] = v63;
      a1[8] = v117[0];
      *(a1 + 137) = *(v117 + 9);
      v64 = v112;
      a1[2] = v111;
      a1[3] = v64;
      v65 = v114;
      a1[4] = v113;
      a1[5] = v65;
      v66 = v110;
      *a1 = v109;
      a1[1] = v66;
      return;
    }

    sub_35BB6C(v17, v74, type metadata accessor for Search.Item);
    v26 = *(v73 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView);
    if (v26)
    {
      v27 = v26;
      v28 = UICollectionView.globalIndex(for:)();
      v30 = v29;

      if (v30)
      {
        sub_35BBD4(v74, type metadata accessor for Search.Item);
        goto LABEL_7;
      }

      v31 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults;
      v32 = v73;
      swift_beginAccess();
      sub_35BA54(v32 + v31, v14, type metadata accessor for Search.ResultContext);
      v33 = Search.ResultContext.source(for:)(v74);
      sub_35BBD4(v14, type metadata accessor for Search.ResultContext);
      if (v33 == 2)
      {
        goto LABEL_9;
      }

      if (v33)
      {
      }

      else
      {
        v38 = sub_ABB3C0();

        if ((v38 & 1) == 0)
        {
LABEL_9:
          sub_35BA54(v74, v22, type metadata accessor for Search.Item);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload)
          {
            if (EnumCaseMultiPayload == 1)
            {
              v35 = v72;
              sub_36B0C(v22, v72, &unk_E00040);
              v36 = v67;
              sub_15F84(v35, v67, &unk_E00040);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                v37 = *v36;
              }

              else
              {
                v44 = v36;
                v45 = v69;
                sub_36B0C(v44, v69, &qword_DFE5F0);
                v37 = SnapshotIdentifier.Lazy.object.getter(v68);
                sub_12E1C(v45, &qword_DFE5F0);
              }

              v46 = [v37 innermostModelObject];

              v73 = sub_3502B4(v46, v73);
              v71 = v47;
              sub_27A160(v46, &v118);
              v121 = v119;
              v122[0] = v118;
              v107 = v118;
              v108 = v119;
              v48 = v120;
              v49 = sub_279AC8(v120);
              v70 = v46;
              if (v49 == 0x497972617262696CLL && v50 == 0xEB000000006D6574)
              {
                v51 = 0;
              }

              else
              {
                v51 = sub_ABB3C0() ^ 1;
              }

              sub_15F84(v122, &v109, &unk_DEE6F0);
              sub_15F84(&v121, &v109, &unk_DEE6F0);

              v52 = v51 & 1;
              sub_12E1C(v72, &unk_E00040);
              sub_35BBD4(v74, type metadata accessor for Search.Item);
              sub_28D048(&v118);
              v75 = v107;
              v76 = v108;
              *&v77 = 0;
              *(&v77 + 1) = v28;
              v53 = v28;
              LOWORD(v78[0]) = 512;
              BYTE2(v78[0]) = v48;
              *(v78 + 3) = v105;
              BYTE7(v78[0]) = v106;
              *(v78 + 8) = 0u;
              *(&v78[1] + 8) = 0u;
              *(&v78[2] + 8) = 0u;
              *(&v78[3] + 8) = 0u;
              *(&v78[4] + 1) = 0;
              LOBYTE(v78[5]) = v51 & 1;
              *(&v78[5] + 1) = *v104;
              DWORD1(v78[5]) = *&v104[3];
              v54 = v73;
              v55 = v71;
              *(&v78[5] + 1) = v73;
              *&v78[6] = v71;
              BYTE8(v78[6]) = 2;
              sub_465F4(&v75, &v109);
              v56 = v70;
            }

            else
            {
              v42 = v70;
              sub_35BB6C(v22, v70, type metadata accessor for Search.Recents.Result.Item);
              sub_15F84(v42, v9, &unk_E00040);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                v43 = *v9;
              }

              else
              {
                v57 = v69;
                sub_36B0C(v9, v69, &qword_DFE5F0);
                v43 = SnapshotIdentifier.Lazy.object.getter(v68);
                v42 = v70;
                sub_12E1C(v57, &qword_DFE5F0);
              }

              v58 = [v43 innermostModelObject];

              v59 = sub_3502B4(v58, v73);
              v72 = v60;
              v73 = v59;
              v71 = v58;
              sub_27A160(v58, &v118);
              v121 = v119;
              v122[0] = v118;
              v107 = v118;
              v108 = v119;
              v48 = v120;
              if (sub_279AC8(v120) == 0x497972617262696CLL && v61 == 0xEB000000006D6574)
              {
                v62 = 0;
              }

              else
              {
                v62 = sub_ABB3C0() ^ 1;
              }

              sub_15F84(v122, &v109, &unk_DEE6F0);
              sub_15F84(&v121, &v109, &unk_DEE6F0);

              v52 = v62 & 1;
              sub_35BBD4(v42, type metadata accessor for Search.Recents.Result.Item);
              sub_35BBD4(v74, type metadata accessor for Search.Item);
              sub_28D048(&v118);
              v75 = v107;
              v76 = v108;
              *&v77 = 0;
              *(&v77 + 1) = v28;
              v53 = v28;
              LOWORD(v78[0]) = 512;
              BYTE2(v78[0]) = v48;
              *(v78 + 3) = v105;
              BYTE7(v78[0]) = v106;
              *(v78 + 8) = 0u;
              *(&v78[1] + 8) = 0u;
              *(&v78[2] + 8) = 0u;
              *(&v78[3] + 8) = 0u;
              *(&v78[4] + 1) = 0;
              LOBYTE(v78[5]) = v62 & 1;
              *(&v78[5] + 1) = *v104;
              DWORD1(v78[5]) = *&v104[3];
              v55 = v72;
              v54 = v73;
              *(&v78[5] + 1) = v73;
              *&v78[6] = v72;
              BYTE8(v78[6]) = 2;
              sub_465F4(&v75, &v109);
              v56 = v71;
            }

            v79 = v107;
            v80 = v108;
            v81 = 0;
            v82 = v53;
            v83 = 512;
            v84 = v48;
            v85 = v105;
            v86 = v106;
            v87 = 0u;
            v88 = 0u;
            v89 = 0u;
            memset(v90, 0, 24);
            v90[24] = v52;
            *v91 = *v104;
            *&v91[3] = *&v104[3];
            v92 = v54;
            v93 = v55;
            v94 = 2;
            sub_46650(&v79);
            v101 = v78[3];
            v102 = v78[4];
            v103[0] = v78[5];
            *(v103 + 9) = *(&v78[5] + 9);
            v97 = v77;
            v98 = v78[0];
            v99 = v78[1];
            v100 = v78[2];
            v95 = v75;
            v96 = v76;
            UIScreen.Dimensions.size.getter(*&v75);
            v115 = v101;
            v116 = v102;
            v117[0] = v103[0];
            v41 = *(v103 + 9);
            goto LABEL_34;
          }

          v39 = *(v22 + 2);
          v40 = *(v22 + 3);

          sub_35BBD4(v74, type metadata accessor for Search.Item);
          v75 = xmmword_B0A7F0;
          *&v76 = v39;
          *(&v76 + 1) = v40;
          *&v77 = 1;
          *(&v77 + 1) = v28;
          LOWORD(v78[0]) = 512;
          BYTE2(v78[0]) = 12;
          *(v78 + 8) = 0u;
          *(&v78[1] + 8) = 0u;
          *(&v78[2] + 8) = 0u;
          *(&v78[3] + 8) = 0u;
          *(&v78[4] + 1) = 0u;
          *(&v78[5] + 1) = 0;
          *&v78[6] = 0;
          BYTE8(v78[6]) = 2;
          v79 = xmmword_B0A7F0;
          *&v80 = v39;
          *(&v80 + 1) = v40;
          v81 = 1;
          v82 = v28;
          v83 = 512;
          v84 = 12;
          memset(v90, 0, sizeof(v90));
          v89 = 0u;
          v88 = 0u;
          v87 = 0u;
          v92 = 0;
          v93 = 0;
          v94 = 2;
          sub_465F4(&v75, &v109);
          sub_46650(&v79);

LABEL_18:
          v101 = v78[3];
          v102 = v78[4];
          v103[0] = v78[5];
          *(v103 + 9) = *(&v78[5] + 9);
          v97 = v77;
          v98 = v78[0];
          v99 = v78[1];
          v100 = v78[2];
          v95 = v75;
          v96 = v76;
          UIScreen.Dimensions.size.getter(*&v75);
          v115 = v101;
          v116 = v102;
          v117[0] = v103[0];
          v41 = *(v103 + 9);
LABEL_34:
          *(v117 + 9) = v41;
          v111 = v97;
          v112 = v98;
          v113 = v99;
          v114 = v100;
          v109 = v95;
          v110 = v96;
          goto LABEL_35;
        }
      }

      sub_35BBD4(v74, type metadata accessor for Search.Item);
      v75 = xmmword_B071B0;
      v76 = xmmword_B071B0;
      *&v77 = 0;
      *(&v77 + 1) = v28;
      LOWORD(v78[0]) = 512;
      BYTE2(v78[0]) = 17;
      *(v78 + 8) = 0u;
      *(&v78[1] + 8) = 0u;
      *(&v78[2] + 8) = 0u;
      *(&v78[3] + 8) = 0u;
      *(&v78[4] + 1) = 0u;
      *(&v78[5] + 1) = 0;
      *&v78[6] = 0;
      BYTE8(v78[6]) = 2;
      v79 = xmmword_B071B0;
      v80 = xmmword_B071B0;
      v81 = 0;
      v82 = v28;
      v83 = 512;
      v84 = 17;
      memset(v90, 0, sizeof(v90));
      v89 = 0u;
      v88 = 0u;
      v87 = 0u;
      v92 = 0;
      v93 = 0;
      v94 = 2;
      sub_465F4(&v75, &v109);
      sub_46650(&v79);
      goto LABEL_18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_3502B4(uint64_t a1, uint64_t a2)
{
  v3 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
  v4 = MPModelObject.bestIdentifier(for:)(*v3, 0);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = v4;
  v8 = a2 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults;
  swift_beginAccess();
  v9 = *(v8 + *(type metadata accessor for Search.ResultContext(0) + 32));
  if (!v9)
  {

    v18 = 0;
    v16 = 0u;
    v17 = 0u;
LABEL_15:
    sub_12E1C(&v16, &qword_DF2BD0);
    return 0;
  }

  if (*(v9 + 16) && (v10 = sub_2EBF88(v7, v6), (v11 & 1) != 0))
  {
    sub_9ACA0(*(v9 + 56) + 40 * v10, &v16);
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
  }

  if (!*(&v17 + 1))
  {
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
  if (swift_dynamicCast())
  {
    if (*(v15 + 16))
    {
      v13 = sub_2EBF88(0x73636972796CLL, 0xE600000000000000);
      if (v14)
      {
        sub_808B0(*(v15 + 56) + 32 * v13, &v16);
        if (swift_dynamicCast())
        {

          return v15;
        }
      }
    }
  }

  return 0;
}

id sub_350474()
{
  v1 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___dateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___dateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___dateFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(NSDateFormatter) init];
    [v4 setDateStyle:2];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_35051C(uint64_t a1)
{
  if (qword_DE6838 != -1)
  {
    swift_once();
  }

  v2 = qword_E70E48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAA80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  v4 = qword_DE6830;
  v5 = v2;
  if (v4 != -1)
  {
    swift_once();
  }

  v7 = qword_E70E40;
  UIScreen.Dimensions.size.getter(v6);
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = v8;
  *(inited + 40) = v9;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();
  v11 = v5;
  v12 = v7;

  Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, sub_35BC44, v10);

  v13 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_bindings;
  swift_beginAccess();
  sub_AB9730();
  if (*(&dword_10 + (*(a1 + v13) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(a1 + v13) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  swift_endAccess();
  return v11;
}

void sub_350718()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4FB8);
  __chkstk_darwin(v0 - 8);
  v42 = &v31 - v1;
  v39 = type metadata accessor for Search.Item(0);
  v2 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = (&v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = sub_AB3820();
  v4 = *(v43 - 8);
  v5 = __chkstk_darwin(v43);
  v40 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v31 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if ([Strong isViewLoaded])
    {
      v11 = *&v10[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView];
      if (v11)
      {
        v41 = v11;
        v12 = [v41 visibleCells];
        sub_13C80(0, &qword_DFE230);
        v13 = sub_AB9760();

        v36 = v10;
        v37 = v8;
        if (v13 >> 62)
        {
LABEL_23:
          v14 = sub_ABB060();
          if (v14)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v14 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
          if (v14)
          {
LABEL_6:
            v15 = 0;
            v16 = v13 & 0xC000000000000001;
            v34 = (v4 + 32);
            v35 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_dataSource;
            v33 = v2 + 6;
            v31 = v13 & 0xFFFFFFFFFFFFFF8;
            v32 = (v4 + 8);
            v17 = v37;
            do
            {
              if (v16)
              {
                v18 = sub_360438(v15, v13);
              }

              else
              {
                if (v15 >= *(v31 + 16))
                {
                  goto LABEL_22;
                }

                v18 = *(v13 + 8 * v15 + 32);
              }

              v4 = v18;
              v19 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
                __break(1u);
LABEL_22:
                __break(1u);
                goto LABEL_23;
              }

              type metadata accessor for SearchResultCell();
              v20 = swift_dynamicCastClass();
              if (v20)
              {
                v21 = v20;
                v22 = [v41 indexPathForCell:v20];
                if (v22)
                {
                  v23 = v13;
                  v24 = v40;
                  v25 = v22;
                  sub_AB3790();

                  (*v34)(v17, v24, v43);
                  v26 = *&v36[v35];
                  if (!v26)
                  {
                    __break(1u);
                    return;
                  }

                  v2 = v26;
                  v27 = v42;
                  sub_AB5230();

                  v28 = (*v33)(v27, 1, v39);
                  v13 = v23;
                  if (v28 == 1)
                  {
                    (*v32)(v17, v43);
                    sub_12E1C(v42, &qword_DF4FB8);
                  }

                  else
                  {
                    v2 = v38;
                    sub_35BB6C(v42, v38, type metadata accessor for Search.Item);
                    v29 = Search.Item.modelObject.getter();
                    if (v29)
                    {
                      v2 = v29;
                      v30 = [v29 innermostModelObject];

                      sub_35AE40(v21, v30);
                      sub_35BBD4(v38, type metadata accessor for Search.Item);
                      (*v32)(v37, v43);

                      v4 = v30;
                      v13 = v23;
                    }

                    else
                    {
                      sub_35BBD4(v38, type metadata accessor for Search.Item);
                      (*v32)(v37, v43);
                    }
                  }
                }
              }

              ++v15;
            }

            while (v19 != v14);
          }
        }

        v10 = v36;
      }
    }
  }
}

char *sub_350C04()
{
  v1 = v0;
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  __chkstk_darwin(v3 - 8);
  v4 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___loadingView;
  v5 = *(v0 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___loadingView);
  if (v5)
  {
    v6 = *(v0 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___loadingView);
  }

  else
  {
    sub_AB91E0();
    sub_AB3550();
    v7 = sub_AB9320();
    v9 = v8;
    v10 = objc_allocWithZone(type metadata accessor for LoadingView());
    v11 = LoadingView.init(title:style:usesSubtitleTextColor:)(v7, v9, 0x10000000000, 1);
    v12 = *(v1 + v4);
    *(v1 + v4) = v11;
    v6 = v11;

    v5 = 0;
  }

  v13 = v5;
  return v6;
}

void *sub_350D7C()
{
  v1 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___noContentController;
  if (*&v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___noContentController])
  {
    v2 = *&v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___noContentController];
  }

  else
  {
    v2 = sub_350DE4(v0);
    *&v0[v1] = v2;
  }

  return v2;
}

void *sub_350DE4(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v2 = result;
    type metadata accessor for NoContentController();
    swift_allocObject();
    v3 = sub_3B04BC(v2);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = v3[6];
    v3[6] = sub_35BC34;
    v3[7] = v4;

    sub_17654(v5);

    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = *(*v3 + 248);

    v7(sub_35BC3C, v6);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_OWORD *sub_350F28()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!(_swiftEmptyArrayStorage >> 62) || !sub_ABB060())
    {
      return &_swiftEmptySetSingleton;
    }

    sub_118B4(_swiftEmptyArrayStorage);
    return v8;
  }

  v1 = Strong;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  result = swift_initStackObject();
  result[1] = xmmword_AF82B0;
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView];
  if (v3)
  {
    v4 = result;
    *(result + 4) = v3;
    v5 = v3;
    sub_118B4(v4);
    v7 = v6;
    swift_setDeallocating();
    swift_arrayDestroy();

    return v7;
  }

  __break(1u);
  return result;
}

void sub_35103C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_AB9250();
  __chkstk_darwin(v5 - 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (*(Strong + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_isLoading))
    {
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = sub_350C04();
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = v29;
    }

    else
    {
      sub_AB91E0();
      sub_AB3550();
      v15 = sub_AB9320();
      v17 = v16;
      sub_AB91E0();
      sub_AB3550();
      *&v24 = v15;
      *(&v24 + 1) = v17;
      *&v25 = sub_AB9320();
      *(&v25 + 1) = v18;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0;
      *&v30 = v15;
      *(&v30 + 1) = v17;
      *&v31 = v25;
      *(&v31 + 1) = v18;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0;
    }

    sub_576EC(&v24, &v23);
    sub_57748(&v30);

    v9 = *(&v28 + 1);
    v8 = v29;
    v10 = v28;
    v14 = v26;
    v13 = v27;
    v12 = v24;
    v11 = v25;
  }

  else
  {
    v9 = *(a1 + 72);
    v8 = *(a1 + 80);
    v10 = *(a1 + 64);
    v21 = *(a1 + 32);
    v22 = *(a1 + 48);
    v19 = *a1;
    v20 = *(a1 + 16);
    sub_576EC(a1, &v30);
    v12 = v19;
    v11 = v20;
    v14 = v21;
    v13 = v22;
  }

  *a2 = v12;
  *(a2 + 16) = v11;
  *(a2 + 32) = v14;
  *(a2 + 48) = v13;
  *(a2 + 64) = v10;
  *(a2 + 72) = v9;
  *(a2 + 80) = v8;
}

void *sub_3512A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330);
  __chkstk_darwin(v0 - 8);
  v26 = &v27[-v1 - 8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v2 - 8);
  v4 = &v27[-v3 - 8];
  v5 = sub_AB3430();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_34F178();
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  sub_AB3420();
  sub_15F84(v28, v27, &qword_DF2BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BD0);
  v9 = sub_AB3820();
  v10 = swift_dynamicCast();
  (*(*(v9 - 8) + 56))(v4, v10 ^ 1u, 1, v9);
  v11 = sub_2CC5DC(2u, v8, v4);
  (*(v6 + 8))(v8, v5);
  sub_12E1C(v28, &qword_DF2BD0);
  sub_12E1C(v4, &unk_DE8E20);

  if (!v11)
  {
    goto LABEL_19;
  }

  if (!(v11 >> 62))
  {
    v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_17:

    v14 = _swiftEmptyArrayStorage;
LABEL_18:
    v23 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v24 = v26;
    sub_34F244(v26);
    (*(&stru_68.flags + (swift_isaMask & *v23)))(v14, v24, 0, 0, 0, 0, 0);
    sub_12E1C(v24, &unk_DF1330);

LABEL_19:

    sub_2E4810(v25);
  }

  v12 = sub_ABB060();
  if (!v12)
  {
    goto LABEL_17;
  }

LABEL_4:
  *&v28[0] = _swiftEmptyArrayStorage;
  result = sub_6D410(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v14 = *&v28[0];
    if ((v11 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v12; ++i)
      {
        v16 = *(sub_35FC58(i, v11) + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);

        swift_unknownObjectRelease();
        *&v28[0] = v14;
        v18 = v14[2];
        v17 = v14[3];
        if (v18 >= v17 >> 1)
        {
          sub_6D410((v17 > 1), v18 + 1, 1);
          v14 = *&v28[0];
        }

        v14[2] = v18 + 1;
        v14[v18 + 4] = v16;
      }
    }

    else
    {
      v19 = (v11 + 32);
      do
      {
        v20 = *(*v19 + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);
        *&v28[0] = v14;
        v22 = v14[2];
        v21 = v14[3];

        if (v22 >= v21 >> 1)
        {
          sub_6D410((v21 > 1), v22 + 1, 1);
          v14 = *&v28[0];
        }

        v14[2] = v22 + 1;
        v14[v22 + 4] = v20;
        ++v19;
        --v12;
      }

      while (v12);
    }

    goto LABEL_18;
  }

  __break(1u);
  return result;
}

id sub_351734(char a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30[-v7];
  v9 = [a2 traitCollection];
  [objc_msgSend(a2 "container")];
  swift_unknownObjectRelease();
  v10 = [objc_allocWithZone(_UICollectionViewListLayoutSectionConfiguration) initWithAppearanceStyle:0 layoutEnvironment:a2];
  v31 = _swiftEmptyArrayStorage;
  result = [v2 view];
  if (result)
  {
    v12 = result;
    [result music_inheritedLayoutInsets];
    v14 = v13;
    v16 = v15;

    sub_3ECF40(v9);
    if (a1)
    {
      if (a1 == 1)
      {
        [v10 setEstimatedRowHeight:v17];
      }

      else
      {
        [v10 setRowHeight:v17];
      }

LABEL_11:
      [v10 setSeparatorInset:{0.0, v14, 0.0, 0.0}];
      v27 = [objc_allocWithZone(_UICollectionViewListLayoutSection) initWithConfiguration:v10 layoutEnvironment:a2];
      sub_13C80(0, &qword_DF9290);
      v28 = v27;
      isa = sub_AB9740().super.isa;
      [v28 setBoundarySupplementaryItems:isa];

      return v28;
    }

    result = [v10 setRowHeight:v17];
    v18 = *&v2[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_dataSource];
    if (v18)
    {
      v19 = v18;
      sub_AB5250();

      v30[7] = 0;
      v20 = sub_AB50B0();
      (*(v6 + 8))(v8, v5);
      if (v20 >= 1)
      {
        v21 = objc_opt_self();
        v22 = [v21 fractionalWidthDimension:1.0];
        v23 = [v21 estimatedDimension:42.0];
        v24 = [objc_opt_self() sizeWithWidthDimension:v22 heightDimension:v23];

        v25 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v24 elementKind:UICollectionElementKindSectionHeader alignment:1];
        [v25 setContentInsets:{0.0, v14, 0.0, v16}];
        v26 = v25;
        sub_AB9730();
        if (*(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v31 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_AB97A0();
        }

        sub_AB97F0();
      }

      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_351B58(uint64_t a1, char *a2)
{
  v39 = a2;
  v3 = type metadata accessor for Search.Recents.Result.Item(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE5F0);
  __chkstk_darwin(v6);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040);
  v10 = __chkstk_darwin(v9);
  v12 = (&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v10);
  v15 = (&v38 - v14);
  __chkstk_darwin(v13);
  v17 = &v38 - v16;
  v18 = type metadata accessor for Search.Item(0);
  __chkstk_darwin(v18);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_35BA54(a1, v20, type metadata accessor for Search.Item);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      sub_36B0C(v20, v17, &unk_E00040);
      sub_15F84(v17, v15, &unk_E00040);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v22 = *v15;
      }

      else
      {
        sub_36B0C(v15, v8, &qword_DFE5F0);
        v22 = SnapshotIdentifier.Lazy.object.getter(v6);
        sub_12E1C(v8, &qword_DFE5F0);
      }

      v34 = v39;
      v35 = [v22 innermostModelObject];

      sub_352000(v35, v34);
      v28 = v36;
      sub_12E1C(v17, &unk_E00040);
    }

    else
    {
      sub_35BB6C(v20, v5, type metadata accessor for Search.Recents.Result.Item);
      sub_15F84(v5, v12, &unk_E00040);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v33 = *v12;
      }

      else
      {
        sub_36B0C(v12, v8, &qword_DFE5F0);
        v33 = SnapshotIdentifier.Lazy.object.getter(v6);
        sub_12E1C(v8, &qword_DFE5F0);
      }

      v35 = [v33 innermostModelObject];

      sub_352000(v35, v39);
      v28 = v37;
      sub_35BBD4(v5, type metadata accessor for Search.Recents.Result.Item);
    }

    return v28;
  }

  v23 = v40;
  v24 = *(v40 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView);
  if (v24)
  {
    v26 = *(v20 + 2);
    v25 = *(v20 + 3);
    type metadata accessor for SearchHintCell();
    v27 = v24;
    static UICollectionReusableView.reuseIdentifier.getter();
    v28 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();

    v29 = v23 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults;
    swift_beginAccess();
    v30 = (v29 + *(type metadata accessor for Search.ResultContext(0) + 20));
    v31 = *v30;
    v32 = v30[1];

    sub_2289C8(v26, v25, v31, v32);

    return v28;
  }

  __break(1u);
  return result;
}

void sub_352000(_BYTE *a1, char *a2)
{
  v3 = v2;
  v497 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  __chkstk_darwin(v5 - 8);
  v496 = &v477 - v6;
  v488 = type metadata accessor for Search.ResultContext(0);
  __chkstk_darwin(v488);
  v479 = &v477 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4FB8);
  __chkstk_darwin(v8 - 8);
  v491 = &v477 - v9;
  v492 = type metadata accessor for Search.Item(0);
  v490 = *(v492 - 8);
  v10 = __chkstk_darwin(v492);
  v481 = &v477 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v493 = &v477 - v12;
  v13 = sub_AB3430();
  v502 = *(v13 - 1);
  v503 = v13;
  v14 = __chkstk_darwin(v13);
  v484 = &v477 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v485 = &v477 - v16;
  v17 = sub_AB9230();
  __chkstk_darwin(v17 - 8);
  v489 = &v477 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v506 = sub_AB35C0();
  v504 = *(v506 - 8);
  __chkstk_darwin(v506);
  v20 = &v477 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_AB9250();
  __chkstk_darwin(v21 - 8);
  v23 = &v477 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v480 = 0;
  v24 = sub_ABA680();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v505 = &v477 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v477 - v28;
  v30 = UIView.Corner.small.unsafeMutableAddressor();
  v31 = *(v25 + 16);
  v507 = v29;
  v494 = v31;
  v495 = (v25 + 16);
  v31(v29, v30, v24);
  LODWORD(v498) = *(v3 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_hasMixedTypes);
  v516 = _swiftEmptyArrayStorage;
  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  v500 = v25;
  v501 = v24;
  v508 = v3;
  v509 = a1;
  v482 = v20;
  v499 = v23;
  if (v32)
  {
    v33 = v32;
    v34 = qword_DE6D48;
    v35 = a1;
    if (v34 != -1)
    {
      swift_once();
    }

    v36 = sub_AB4BC0();
    __swift_project_value_buffer(v36, static Logger.search);
    v37 = v35;
    v38 = sub_AB4BA0();
    v39 = sub_AB9F30();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v526 = swift_slowAlloc();
      *v40 = 138543874;
      *(v40 + 4) = v33;
      *v41 = v33;
      *(v40 + 12) = 2082;
      v487 = v37;
      v517 = [v33 type];
      type metadata accessor for MPModelGenericObjectType(0);
      v42 = sub_AB9350();
      v44 = sub_425E68(v42, v43, &v526);

      *(v40 + 14) = v44;
      *(v40 + 22) = 2082;
      v45 = [v33 innermostModelObject];
      v46 = [v45 description];
      v47 = sub_AB92A0();
      v49 = v48;

      v50 = sub_425E68(v47, v49, &v526);

      *(v40 + 24) = v50;
      _os_log_impl(&dword_0, v38, v39, "    Unexpected MPModelGenericObject=%{public}@\n    with type=%{public}s\n    innermostModelObject=%{public}s", v40, 0x20u);
      sub_12E1C(v41, &qword_DF9B20);

      swift_arrayDestroy();

      v20 = v482;
      v25 = v500;
      v24 = v501;
    }

    else
    {
    }
  }

  v51 = &v526;
  objc_opt_self();
  v52 = swift_dynamicCastObjCClass();
  if (v52)
  {
    v53 = v52;
    sub_AB91E0();
    sub_AB3550();
    v54 = sub_AB9320();
    v56 = v55;
    v57 = [v53 name];
    if (v57)
    {
      v58 = v57;
      v59 = sub_AB92A0();
      v486 = v60;
      v487 = v59;
    }

    else
    {
      v486 = 0;
      v487 = 0;
    }

    v67 = v505;
    sub_ABA670();
    v68 = v507;
    (*(v25 + 8))(v507, v24);
    (*(v25 + 32))(v68, v67, v24);
    v485 = [v53 artworkCatalog];
    LODWORD(v505) = 0;
    v503 = 0;
    v504 = 0;
    v502 = 0;
    LODWORD(v506) = 0;
    v488 = 0;
    v489 = 0;
    LODWORD(v484) = 1;
LABEL_44:
    v51 = &v526;
    goto LABEL_45;
  }

  objc_opt_self();
  v61 = swift_dynamicCastObjCClass();
  if (v61)
  {
    v62 = v61;
    v63 = [v61 name];
    if (v63)
    {
      v64 = v63;
      v65 = sub_AB92A0();
      v486 = v66;
      v487 = v65;
    }

    else
    {
      v486 = 0;
      v487 = 0;
    }

    sub_AB91E0();
    sub_AB3550();
    v76 = sub_AB9320();
    v78 = v77;
    v79 = sub_272E00();
    if (v80)
    {
      v81 = v79;
      v82 = v80;
      v83 = sub_6B0F0(0, 1, 1, _swiftEmptyArrayStorage);
      v85 = *(v83 + 2);
      v84 = *(v83 + 3);
      if (v85 >= v84 >> 1)
      {
        v83 = sub_6B0F0((v84 > 1), v85 + 1, 1, v83);
      }

      *(v83 + 2) = v85 + 1;
      v86 = &v83[16 * v85];
      *(v86 + 4) = v81;
      *(v86 + 5) = v82;
      v516 = v83;
    }

    v483 = v78;
    v478 = v76;
    v87 = sub_272C0C();
    v89 = v88;
    v91 = v90;
    v93 = v92;
    *&v526 = v87;
    *(&v526 + 1) = v88;
    *&v527 = v90;
    BYTE8(v527) = v92;
    __chkstk_darwin(v87);
    *(&v477 - 2) = &v526;
    v94 = v480;
    v95 = sub_1B3B10(sub_273A5C, (&v477 - 4), &off_CF14F8);
    v480 = v94;
    if (v95)
    {
      sub_7FCC4(v87);
      v503 = 0;
      v504 = 0;
      v502 = 0;
      LODWORD(v506) = 0;
    }

    else
    {
      LODWORD(v506) = v93;
      v502 = v91;
      v503 = v89;
      v504 = v87;
    }

    v96 = v505;
    sub_ABA670();
    v97 = v507;
    (*(v25 + 8))(v507, v24);
    (*(v25 + 32))(v97, v96, v24);
    v98 = [v62 artworkCatalog];
    v54 = v478;
    v56 = v483;
    if (!v98)
    {
      v98 = MPModelPerson.monogramArtworkCatalog.getter();
    }

    v485 = v98;
    v488 = 0;
    v489 = 0;
    LODWORD(v484) = 1;
    LODWORD(v505) = 1;
    goto LABEL_44;
  }

  objc_opt_self();
  v69 = swift_dynamicCastObjCClass();
  if (v69)
  {
    v70 = v69;
    sub_AB91E0();
    sub_AB3550();
    v54 = sub_AB9320();
    v56 = v71;
    v72 = [v70 title];
    if (v72)
    {
      v73 = v72;
      v74 = sub_AB92A0();
      v486 = v75;
      v487 = v74;
    }

    else
    {
      v486 = 0;
      v487 = 0;
    }

    v106 = [v70 artist];
    if (v106)
    {
      v107 = v106;
      v108 = [v106 name];
      if (v108)
      {
        v109 = v56;
        v110 = v108;
        v111 = sub_AB92A0();
        v113 = v112;

        v114 = sub_6B0F0(0, 1, 1, _swiftEmptyArrayStorage);
        v116 = *(v114 + 2);
        v115 = *(v114 + 3);
        if (v116 >= v115 >> 1)
        {
          v114 = sub_6B0F0((v115 > 1), v116 + 1, 1, v114);
        }

        *(v114 + 2) = v116 + 1;
        v117 = &v114[16 * v116];
        *(v117 + 4) = v111;
        *(v117 + 5) = v113;
        v516 = v114;
        v56 = v109;
        if ((v498 & 1) == 0)
        {
          v118 = [v70 year];
          sub_AB34F0();
          v119 = sub_45BF9C(v118);
          v121 = v120;
          (v504)[1](v20, v506);
          if (v121)
          {
            v123 = *(v114 + 2);
            v122 = *(v114 + 3);
            if (v123 >= v122 >> 1)
            {
              v114 = sub_6B0F0((v122 > 1), v123 + 1, 1, v114);
            }

            *(v114 + 2) = v123 + 1;
            v124 = &v114[16 * v123];
            *(v124 + 4) = v119;
            *(v124 + 5) = v121;
            v516 = v114;
            v56 = v109;
          }
        }
      }

      else
      {
      }
    }

    v485 = [v70 artworkCatalog];
    v503 = 0;
    v504 = 0;
    v502 = 0;
    LODWORD(v506) = 0;
    v488 = 0;
    v489 = 0;
    LODWORD(v505) = 2;
    LODWORD(v484) = 1;
    goto LABEL_44;
  }

  objc_opt_self();
  v99 = swift_dynamicCastObjCClass();
  if (v99)
  {
    v100 = v99;
    sub_AB91E0();
    sub_AB3550();
    v54 = sub_AB9320();
    v56 = v101;
    v102 = [v100 name];
    if (v102)
    {
      v103 = v102;
      v104 = sub_AB92A0();
      v486 = v105;
      v487 = v104;
    }

    else
    {
      v486 = 0;
      v487 = 0;
    }

    v503 = 0;
    v504 = 0;
    v502 = 0;
    LODWORD(v506) = 0;
    v485 = 0;
    v488 = 0;
    v489 = 0;
    v248 = 3;
    goto LABEL_139;
  }

  objc_opt_self();
  v243 = swift_dynamicCastObjCClass();
  if (v243)
  {
    v244 = v243;
    if ([v243 curatorKind] == &dword_0 + 2)
    {
      sub_AB91E0();
      sub_AB3550();
      v54 = sub_AB9320();
      v56 = v245;
      v246 = v505;
      sub_ABA670();
      v247 = v507;
      (*(v25 + 8))(v507, v24);
      (*(v25 + 32))(v247, v246, v24);
    }

    else
    {
      [v244 curatorSubKind];
      sub_AB91E0();
      sub_AB3550();
      v54 = sub_AB9320();
      v56 = v256;
    }

    v257 = [v244 name];
    if (v257)
    {
      v258 = v257;
      v259 = sub_AB92A0();
      v486 = v260;
      v487 = v259;
    }

    else
    {
      v486 = 0;
      v487 = 0;
    }

    v51 = &v526;
    v485 = [v244 brandLogoArtworkCatalog];
    v503 = 0;
    v504 = 0;
    v502 = 0;
    LODWORD(v506) = 0;
    v488 = 0;
    v489 = 0;
    v248 = 4;
    goto LABEL_139;
  }

  objc_opt_self();
  v249 = swift_dynamicCastObjCClass();
  if (v249)
  {
    v250 = v249;
    sub_AB91E0();
    sub_AB3550();
    v54 = sub_AB9320();
    v483 = v251;
    v252 = [v250 name];
    if (v252)
    {
      v253 = v252;
      v254 = sub_AB92A0();
      v486 = v255;
      v487 = v254;
    }

    else
    {
      v486 = 0;
      v487 = 0;
    }

    v263 = [v250 curator];
    if (v263)
    {
      v264 = v263;
      v265 = [v263 handle];
      if (v265)
      {
        v266 = v265;
        v267 = sub_AB92A0();
        v269 = v268;

        v270 = [v250 curator];
        if (v270)
        {
          v271 = v270;
          v272 = [v270 name];
          if (v272)
          {
            v273 = v272;
            v274 = sub_AB92A0();
            v276 = v275;

            sub_AB9220();
            v529._countAndFlagsBits = 64;
            v529._object = 0xE100000000000000;
            sub_AB9210(v529);
            v530._countAndFlagsBits = v267;
            v530._object = v269;
            sub_AB9200(v530);
            v531._countAndFlagsBits = 10272;
            v531._object = 0xE200000000000000;
            sub_AB9210(v531);
            v532._countAndFlagsBits = v274;
            v532._object = v276;
            sub_AB9200(v532);
            v533._countAndFlagsBits = 41;
            v533._object = 0xE100000000000000;
            sub_AB9210(v533);
            sub_AB9240();
            sub_AB3550();
            v277 = sub_AB9320();
            v279 = v278;
            v280 = sub_6B0F0(0, 1, 1, _swiftEmptyArrayStorage);
            v282 = *(v280 + 2);
            v281 = *(v280 + 3);
            if (v282 >= v281 >> 1)
            {
              v280 = sub_6B0F0((v281 > 1), v282 + 1, 1, v280);
            }

            *(v280 + 2) = v282 + 1;
            v283 = &v280[16 * v282];
            *(v283 + 4) = v277;
            *(v283 + 5) = v279;

            v516 = v280;
            goto LABEL_174;
          }
        }

        else
        {
        }

        v51 = &v526;
      }

      else
      {
      }
    }

    v302 = [v250 curator];
    if (!v302)
    {
LABEL_176:
      v485 = MPModelPlaylist.preferredArtworkCatalog.getter();
      v503 = 0;
      v504 = 0;
      v502 = 0;
      LODWORD(v506) = 0;
      v488 = 0;
      v489 = 0;
      LODWORD(v505) = 6;
      LODWORD(v484) = 1;
      goto LABEL_177;
    }

    v303 = v302;
    v304 = [v302 name];
    if (!v304)
    {

      goto LABEL_176;
    }

    v305 = v304;
    v306 = sub_AB92A0();
    v308 = v307;

    v309 = sub_6B0F0(0, 1, 1, _swiftEmptyArrayStorage);
    v311 = *(v309 + 2);
    v310 = *(v309 + 3);
    if (v311 >= v310 >> 1)
    {
      v309 = sub_6B0F0((v310 > 1), v311 + 1, 1, v309);
    }

    *(v309 + 2) = v311 + 1;
    v312 = &v309[16 * v311];
    *(v312 + 4) = v306;
    *(v312 + 5) = v308;
    v516 = v309;
LABEL_174:
    v51 = &v526;
    goto LABEL_176;
  }

  objc_opt_self();
  v261 = swift_dynamicCastObjCClass();
  if (v261)
  {
    v54 = v261;
    v262 = [v261 subtype];
    sub_AB91E0();
    sub_AB3550();
    v125 = sub_AB9320();
    v56 = v286;
    v287 = [v54 name];
    if (v287)
    {
      v288 = v287;
      v289 = sub_AB92A0();
      v486 = v290;
      v487 = v289;
    }

    else
    {
      v486 = 0;
      v487 = 0;
    }

    v291 = [v54 providerName];
    if (!v291 && (v262 == &dword_0 + 1 || (v291 = [v54 shortEditorNotes]) == 0))
    {
      v291 = [v54 editorNotes];
      if (!v291)
      {
        goto LABEL_163;
      }
    }

    v292 = v291;
    v133 = sub_AB92A0();
    v51 = v293;

    v130 = sub_6B0F0(0, 1, 1, _swiftEmptyArrayStorage);
    v132 = *(v130 + 2);
    v131 = *(v130 + 3);
    v127 = v132 + 1;
    if (v132 < v131 >> 1)
    {
      goto LABEL_162;
    }

    goto LABEL_270;
  }

  objc_opt_self();
  v284 = swift_dynamicCastObjCClass();
  if (v284)
  {
    v285 = v284;
    [v284 hasVideo];
    sub_AB91E0();
    sub_AB3550();
    v54 = sub_AB9320();
    v56 = v322;
    v323 = [v285 title];
    if (v323)
    {
      v324 = v323;
      v325 = sub_AB92A0();
      v486 = v326;
      v487 = v325;
    }

    else
    {
      v486 = 0;
      v487 = 0;
    }

    v327 = [v285 artist];
    if (v327)
    {
      v328 = v327;
      v329 = [v327 name];
      if (v329)
      {
        v330 = v56;
        v331 = v329;
        v332 = sub_AB92A0();
        v334 = v333;

        v335 = sub_6B0F0(0, 1, 1, _swiftEmptyArrayStorage);
        v337 = *(v335 + 2);
        v336 = *(v335 + 3);
        if (v337 >= v336 >> 1)
        {
          v335 = sub_6B0F0((v336 > 1), v337 + 1, 1, v335);
        }

        *(v335 + 2) = v337 + 1;
        v338 = &v335[16 * v337];
        *(v338 + 4) = v332;
        *(v338 + 5) = v334;
        v516 = v335;
        v56 = v330;
      }

      else
      {
      }
    }

    v339 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
    v340 = MPModelObject.bestIdentifier(for:)(*v339, 0);
    if (!v341)
    {
      v488 = 0;
      v489 = 0;
LABEL_201:
      v51 = &v526;
      goto LABEL_202;
    }

    v342 = v341;
    v343 = v340;
    v344 = v508 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults;
    swift_beginAccess();
    v345 = *(v344 + v488[8]);
    if (v345)
    {
      sub_D1224(v343, v342, v345, &v526);

      if (*(&v527 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
        if (swift_dynamicCast())
        {
          sub_D11C0(0x73636972796CLL, 0xE600000000000000, v517, &v526);
          if (*(&v527 + 1))
          {
            if (swift_dynamicCast())
            {
              v488 = v517;
              v489 = v518;

LABEL_225:
              v51 = &v526;
LABEL_202:
              v485 = [v285 artworkCatalog];
              v346 = [v285 hasVideo];
              v503 = 0;
              v504 = 0;
              v502 = 0;
              LODWORD(v506) = 0;
              if (v346)
              {
                v248 = 9;
              }

              else
              {
                v248 = 8;
              }

LABEL_139:
              LODWORD(v505) = v248;
              LODWORD(v484) = 1;
              goto LABEL_45;
            }
          }

          else
          {
            sub_12E1C(&v526, &unk_DE8E40);
          }

          v488 = 0;
          v489 = 0;
          goto LABEL_225;
        }

        goto LABEL_200;
      }
    }

    else
    {

      *&v528 = 0;
      v527 = 0u;
      v526 = 0u;
    }

    sub_12E1C(&v526, &qword_DF2BD0);
LABEL_200:
    v488 = 0;
    v489 = 0;
    goto LABEL_201;
  }

  objc_opt_self();
  v313 = swift_dynamicCastObjCClass();
  if (v313)
  {
    v314 = v313;
    sub_AB91E0();
    sub_AB3550();
    v54 = sub_AB9320();
    v316 = v315;
    v317 = [v314 title];
    v318 = v316;
    if (v317)
    {
      v319 = v317;
      v320 = sub_AB92A0();
      v486 = v321;
      v487 = v320;
    }

    else
    {
      sub_AB91E0();
      sub_AB3550();
      v353 = sub_AB9320();
      v486 = v354;
      v487 = v353;
    }

    v355 = MPModelTVShow.localizedEpisodeCount.getter();
    v357 = v356;
    v358 = sub_6B0F0(0, 1, 1, _swiftEmptyArrayStorage);
    v360 = *(v358 + 2);
    v359 = *(v358 + 3);
    if (v360 >= v359 >> 1)
    {
      v358 = sub_6B0F0((v359 > 1), v360 + 1, 1, v358);
    }

    *(v358 + 2) = v360 + 1;
    v361 = &v358[16 * v360];
    *(v361 + 4) = v355;
    *(v361 + 5) = v357;
    v516 = v358;
    v485 = [v314 artworkCatalog];
    v503 = 0;
    v504 = 0;
    v502 = 0;
    LODWORD(v506) = 0;
    v488 = 0;
    v489 = 0;
    LODWORD(v505) = 10;
    LODWORD(v484) = 1;
    v56 = v318;
    goto LABEL_44;
  }

  objc_opt_self();
  v347 = swift_dynamicCastObjCClass();
  if (v347)
  {
    v227 = v347;
    sub_AB91E0();
    sub_AB3550();
    v54 = sub_AB9320();
    v483 = v348;
    v349 = [v227 title];
    if (v349)
    {
      v350 = v349;
      v351 = sub_AB92A0();
      v486 = v352;
      v487 = v351;
    }

    else
    {
      v486 = 0;
      v487 = 0;
    }

    v370 = [v227 show];
    if (!v370)
    {
      goto LABEL_228;
    }

    v222 = v370;
    v371 = [v370 title];
    if (v371)
    {
      v372 = v371;
      v373 = sub_AB92A0();
      v375 = v374;

      v376 = sub_6B0F0(0, 1, 1, _swiftEmptyArrayStorage);
      v378 = *(v376 + 2);
      v377 = *(v376 + 3);
      if (v378 >= v377 >> 1)
      {
        v376 = sub_6B0F0((v377 > 1), v378 + 1, 1, v376);
      }

      *(v376 + 2) = v378 + 1;
      v379 = &v376[16 * v378];
      *(v379 + 4) = v373;
      *(v379 + 5) = v375;
      v516 = v376;
      goto LABEL_229;
    }

    goto LABEL_227;
  }

  objc_opt_self();
  v362 = swift_dynamicCastObjCClass();
  if (v362)
  {
    v363 = v362;
    sub_AB91E0();
    sub_AB3550();
    v54 = sub_AB9320();
    v365 = v364;
    v366 = [v363 title];
    if (v366)
    {
      v367 = v366;
      v368 = sub_AB92A0();
      v486 = v369;
      v487 = v368;
    }

    else
    {
      v486 = 0;
      v487 = 0;
    }

    v398 = [v363 releaseDate];
    if (v398)
    {
      v399 = v398;
      v400 = v484;
      sub_AB33F0();

      v401 = v482;
      sub_AB34F0();
      v402 = sub_45B7DC(v400, v401);
      v404 = v403;
      v504[1](v401, v506);
      if (v404)
      {
        v405 = sub_6B0F0(0, 1, 1, _swiftEmptyArrayStorage);
        v407 = *(v405 + 2);
        v406 = *(v405 + 3);
        if (v407 >= v406 >> 1)
        {
          v405 = sub_6B0F0((v406 > 1), v407 + 1, 1, v405);
        }

        (v502)[1](v484, v503);
        *(v405 + 2) = v407 + 1;
        v408 = &v405[16 * v407];
        *(v408 + 4) = v402;
        *(v408 + 5) = v404;
        v516 = v405;
      }

      else
      {
        (v502)[1](v484, v503);
      }
    }

    v485 = [v363 artworkCatalog];
    v503 = 0;
    v504 = 0;
    v502 = 0;
    LODWORD(v506) = 0;
    v488 = 0;
    v489 = 0;
    LODWORD(v505) = 12;
    LODWORD(v484) = 1;
    v51 = &v526;
    v56 = v365;
    while (1)
    {
LABEL_45:
      if (v498)
      {

        sub_1AFB78(0, 0, v54, v56);
      }

      v125 = v56;
      sub_AB91E0();
      sub_AB3550();
      sub_AB9320();
      v56 = v126;
      v127 = v516;
      *&v526 = v516;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70);
      sub_36A00(&qword_E00020, &unk_DFDE70);
      v483 = v56;
      v128 = sub_AB9140();
      v498 = v129;

      v131 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView;
      v132 = v508;
      v133 = *(v508 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView);
      if (!v133)
      {
        break;
      }

      v51 = type metadata accessor for SearchResultCell();
      sub_3E9B10(v505);
      v56 = v134;
      v133 = v133;
      v54 = v497;
      v135 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();

      v131 = *(v132 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_dataSource);
      if (v131)
      {
        v136 = v131;

        v137 = v491;
        sub_AB5230();

        v138 = (*(v490 + 48))(v137, 1, v492);
        v139 = v493;
        if (v138 == 1)
        {
          sub_12E1C(v137, &qword_DF4FB8);
          v140 = v487;
          v141 = v488;
          v142 = v502;
          v143 = v489;
          goto LABEL_61;
        }

        sub_35BB6C(v137, v493, type metadata accessor for Search.Item);
        v144 = v481;
        sub_35BA54(v139, v481, type metadata accessor for Search.Item);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v142 = v502;
        v141 = v488;
        v143 = v489;
        if (EnumCaseMultiPayload != 2)
        {
          sub_35BBD4(v139, type metadata accessor for Search.Item);
          v150 = v144;
          goto LABEL_55;
        }

        sub_35BBD4(v144, type metadata accessor for Search.Item);
        v146 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults;
        v147 = v508;
        swift_beginAccess();
        v148 = v479;
        sub_35BA54(v147 + v146, v479, type metadata accessor for Search.ResultContext);
        v149 = Search.ResultContext.source(for:)(v139);
        sub_35BBD4(v148, type metadata accessor for Search.ResultContext);
        if (v149 == 2)
        {
          v150 = v139;
LABEL_55:
          sub_35BBD4(v150, type metadata accessor for Search.Item);
          v140 = v487;
          goto LABEL_61;
        }

        v140 = v487;
        if (v149)
        {

LABEL_59:

          sub_AB91E0();
          sub_AB3550();
          v141 = sub_AB9320();
          v143 = v152;
          goto LABEL_60;
        }

        v151 = sub_ABB3C0();

        if (v151)
        {
          goto LABEL_59;
        }

LABEL_60:
        sub_35BBD4(v139, type metadata accessor for Search.Item);
LABEL_61:
        v153 = v486;
        if (v486)
        {
          v154 = v140;
        }

        else
        {
          v154 = 0;
        }

        if (!v486)
        {
          v153 = 0xE000000000000000;
        }

        v155 = &v135[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_title];
        v156 = *&v135[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_title];
        v157 = *&v135[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_title + 8];
        *v155 = v154;
        *(v155 + 1) = v153;
        sub_3EA330(v156, v157);

        v158 = &v135[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_subtitle];
        v159 = *&v135[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_subtitle];
        v160 = *&v135[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_subtitle + 8];
        v161 = v498;
        *v158 = v128;
        v158[1] = v161;
        sub_3EA450(v159, v160);

        if (v143)
        {
          v162 = v141;
        }

        else
        {
          v162 = 0;
        }

        if (v143)
        {
          v163 = v143;
        }

        else
        {
          v163 = 0xE000000000000000;
        }

        sub_3EA86C(v162, v163, v484);

        v164 = v135;
        v166 = v503;
        v165 = v504;
        v167 = v506;
        sub_7FCB4(v504);
        sub_206880(v165, v166, v142, v167);
        sub_7FCC4(v165);
        MPModelObject.artworkPlaceholder.getter(&v517);
        v169 = v517;
        v168 = v518;
        v170 = v519;
        v171 = v520;
        v498 = v519;
        v499 = v518;
        v497 = v520;
        v172 = v521;
        v173 = v522;
        v492 = v522;
        v493 = v521;
        v174 = &v164[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
        v175 = *&v164[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
        v176 = *&v164[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 8];
        v177 = *&v164[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 16];
        v178 = *&v164[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 24];
        *v174 = v517;
        *(v174 + 1) = v168;
        *(v174 + 2) = v170;
        *(v174 + 3) = v171;
        *(v174 + 4) = v172;
        *(v174 + 5) = v173;
        sub_35BABC(&v517, &v526);
        sub_35BABC(&v517, &v526);
        sub_2F1C8(v175, v176, v177, v178);
        v179 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent;
        v180 = *&v164[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
        v181 = *(v180 + 168);
        v526 = *(v180 + 152);
        v527 = v181;
        v528 = *(v180 + 184);
        v183 = v498;
        v182 = v499;
        *(v180 + 152) = v169;
        *(v180 + 160) = v182;
        v184 = v497;
        *(v180 + 168) = v183;
        *(v180 + 176) = v184;
        v185 = v492;
        *(v180 + 184) = v493;
        *(v180 + 192) = v185;
        sub_35BABC(&v517, v514);
        sub_75948(&v526);
        sub_12E1C(&v526, &unk_DF8690);
        sub_35BB18(&v517);
        v525 = v517;
        sub_12E1C(&v525, &unk_DFDE40);
        v524 = v518;
        sub_12E1C(&v524, &unk_DFDE40);
        v523 = v519;
        sub_12E1C(&v523, &unk_E00030);

        v186 = v496;
        v187 = v501;
        v494(v496, v507, v501);
        v188 = v500;
        (*(v500 + 56))(v186, 0, 1, v187);
        sub_200394(v186);
        v189 = v164[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_kind];
        v164[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_kind] = v505;
        sub_3EA548(v189);
        v190 = *&v164[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog];
        v191 = v485;
        *&v164[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog] = v485;
        v505 = v191;

        sub_74EA4(v191);
        v192 = v508;
        v193 = *(v508 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_textDrawingCache);
        v194 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
        swift_beginAccess();
        *&v164[v194] = v193;
        swift_retain_n();

        v498 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView;
        v195 = *&v164[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
        v196 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
        swift_beginAccess();
        v197 = *&v195[v196];
        *&v195[v196] = v193;

        v198 = v195;
        sub_2E6210(v197);

        v199 = *(v192 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_artworkCachingReference);
        *&v164[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkCachingReference] = v199;

        *(*&v164[v179] + 16) = v199;

        v200 = v509;
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          v201 = v200 == 0;
        }

        else
        {
          v201 = 1;
        }

        v202 = !v201;
        v203 = OBJC_IVAR____TtC16MusicApplication16SearchResultCell_isPlayable;
        v164[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_isPlayable] = v202;
        v204 = sub_3EB850();
        [v204 setHidden:v164[v203]];

        v499 = v164;
        v54 = v164;
        [v54 setNeedsLayout];
        if (MPModelObject.favoriteStatus.getter())
        {
          v207 = sub_ABB3C0();

          v205 = &v54[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite];
          v208 = v54[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite];
          v54[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite] = v207 & 1;
          if ((v207 & 1) == v208)
          {
            goto LABEL_83;
          }

LABEL_82:
          sub_201644();
          v209 = sub_200954();
          [v209 setHidden:(*v205 & 1) == 0];

          goto LABEL_83;
        }

        v205 = &v54[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite];
        v206 = v54[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite];
        v54[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite] = 1;
        if ((v206 & 1) == 0)
        {
          goto LABEL_82;
        }

LABEL_83:
        v210 = v509;
        v510 = v509;
        sub_13C80(0, &qword_DEDE20);
        v211 = v210;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9D20);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v515 = 0;
          memset(v514, 0, sizeof(v514));
        }

        sub_15F84(v514, v511, &unk_DE9C60);
        v212 = v512;
        if (v512)
        {
          v213 = v513;
          __swift_project_boxed_opaque_existential_1(v511, v512);
          v214 = sub_4CAA30(&off_CEF8C8, v212, v213);
          __swift_destroy_boxed_opaque_existential_0(v511);
        }

        else
        {
          sub_12E1C(v511, &unk_DE9C60);
          v214 = _swiftEmptyArrayStorage;
        }

        sub_1783D4(v214);

        sub_12E1C(v514, &unk_DE9C60);
        if (!*(v508 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_mediaPickerAddController))
        {
          v217 = v54[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton];
          v54[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton] = 0;
          sub_203DB8(v217);

          sub_35AE40(v54, v211);
          v218 = 1;
          goto LABEL_124;
        }

        if (sub_2FBDBC(v211))
        {
          v215 = [v211 pickableObjectFor:2];

          v216 = v215 == 0;
        }

        else
        {
          v216 = 0;
        }

        v219 = v54[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton];
        v54[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton] = v216;
        sub_203DB8(v219);
        v220 = sub_304104();
        v221 = v54[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isMediaPickerAddButtonSelected];
        v54[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isMediaPickerAddButtonSelected] = v220 & 1;
        if ((v220 & 1) != v221 && *&v54[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_mediaPickerAddButton])
        {
          [*&v54[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_mediaPickerAddButton] setSelected:v220 & 1];
        }

        if (sub_2FC35C(v211))
        {

          v218 = 1;
          goto LABEL_124;
        }

        v222 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled;
        v54[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled] = 1;
        if (v54[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_shouldDisableTextStackView] != 1)
        {
          goto LABEL_120;
        }

        v223 = *(v499 + v498);
        v498 = v222;
        v224 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
        swift_beginAccess();
        v223[v224] = 1;
        v222 = v498;
        v508 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
        v509 = v223;
        if (v223[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled])
        {
          goto LABEL_120;
        }

        v225 = v509;
        v509[v508] = 1;
        v226 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
        swift_beginAccess();
        v227 = *&v225[v226];
        if (v227 >> 62)
        {
          v228 = sub_ABB060();
          if (!v228)
          {
LABEL_120:
            if (*(v222 + v54))
            {
              v242 = 0;
            }

            else
            {
              v242 = 3;
            }

            [v54 setSelectionStyle:v242];

            v218 = 0;
LABEL_124:
            [v54 setUserInteractionEnabled:v218];

            sub_7FCC4(v504);
            (*(v188 + 8))(v507, v187);
LABEL_125:

            return;
          }
        }

        else
        {
          v228 = *(&dword_10 + (v227 & 0xFFFFFFFFFFFFFF8));
          if (!v228)
          {
            goto LABEL_120;
          }
        }

        v229 = v228 - 1;
        if (v228 >= 1)
        {
          v230 = v227 & 0xC000000000000001;
          v497 = v509;

          v231 = 0;
          p_name = &JSDateDescriptor.name;
          v499 = v227 & 0xC000000000000001;
          while (1)
          {
            if (v230)
            {
              v233 = *(sub_36003C(v231, v227) + 256);
              if (!v233)
              {
                goto LABEL_104;
              }
            }

            else
            {
              v234 = *(v227 + 8 * v231 + 32);

              v233 = *(v234 + 256);
              if (!v233)
              {
LABEL_104:

                goto LABEL_105;
              }
            }

            v235 = v233;
            if ([v235 p_name[409]])
            {
              break;
            }

            v236 = v227;
            v237 = v229;
            v238 = v509[v508];
            v239 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
            swift_beginAccess();
            v240 = v235[v239];
            v235[v239] = v238;
            if (v238 == v240)
            {

              v229 = v237;
              v227 = v236;
              v230 = v499;
              p_name = (&JSDateDescriptor + 24);
LABEL_105:
              if (v229 == v231)
              {
                goto LABEL_119;
              }

              goto LABEL_106;
            }

            v241 = 1.0;
            v229 = v237;
            if (v238)
            {
              UIInterfaceGetContentDisabledAlpha();
            }

            [v235 setAlpha:v241];

            v227 = v236;
            v230 = v499;
            p_name = (&JSDateDescriptor + 24);
            if (v229 == v231)
            {
LABEL_119:

              v188 = v500;
              v187 = v501;
              v222 = v498;
              goto LABEL_120;
            }

LABEL_106:
            ++v231;
          }

          goto LABEL_105;
        }

        __break(1u);
LABEL_227:

LABEL_228:
        v376 = _swiftEmptyArrayStorage;
LABEL_229:
        [v227 duration];
        v381 = v380;
        v382 = *Double.epsilon.unsafeMutableAddressor();
        if (v382 < v381)
        {
          if (qword_DE6CB0 != -1)
          {
            swift_once();
          }

          v383 = qword_E718F0;
          [v227 duration];
          v384 = [v383 stringFromSeconds:?];
          v385 = sub_AB92A0();
          v387 = v386;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v376 = sub_6B0F0(0, *(v376 + 2) + 1, 1, v376);
          }

          v389 = *(v376 + 2);
          v388 = *(v376 + 3);
          if (v389 >= v388 >> 1)
          {
            v376 = sub_6B0F0((v388 > 1), v389 + 1, 1, v376);
          }

          *(v376 + 2) = v389 + 1;
          v390 = &v376[16 * v389];
          *(v390 + 4) = v385;
          *(v390 + 5) = v387;

          v516 = v376;
        }

        v485 = [v227 artworkCatalog];
        v503 = 0;
        v504 = 0;
        v502 = 0;
        LODWORD(v506) = 0;
        v488 = 0;
        v489 = 0;
        LODWORD(v505) = 11;
        LODWORD(v484) = 1;
        v51 = &v526;
LABEL_177:
        v56 = v483;
      }

      else
      {
LABEL_269:
        __break(1u);
LABEL_270:
        v130 = sub_6B0F0((v131 > 1), v127, 1, v130);
LABEL_162:
        *(v130 + 2) = v127;
        v294 = &v130[16 * v132];
        *(v294 + 4) = v133;
        *(v294 + 5) = v51;
        v516 = v130;
LABEL_163:
        v295 = [v54 startingAirDate];
        if (v295)
        {
          v296 = v485;
          v297 = v295;
          sub_AB33F0();

          v298 = sub_350474();
          isa = sub_AB3370().super.isa;
          v300 = [v298 stringFromDate:isa];

          v488 = sub_AB92A0();
          v489 = v301;
          (v502)[1](v296, v503);

          LODWORD(v484) = 0;
        }

        else
        {
          v488 = 0;
          v489 = 0;
          LODWORD(v484) = 1;
        }

        v485 = [v54 artworkCatalog];
        v503 = 0;
        v504 = 0;
        v502 = 0;
        LODWORD(v506) = 0;
        LODWORD(v505) = 7;
        v51 = &v526;
        v54 = v125;
      }
    }

    __break(1u);
    goto LABEL_269;
  }

  objc_opt_self();
  v391 = swift_dynamicCastObjCClass();
  if (v391)
  {
    v392 = v391;
    sub_AB91E0();
    sub_AB3550();
    v54 = sub_AB9320();
    v56 = v393;
    v394 = [v392 name];
    if (v394)
    {
      v395 = v394;
      v396 = sub_AB92A0();
      v486 = v397;
      v487 = v396;
    }

    else
    {
      v486 = 0;
      v487 = 0;
    }

    v473 = v505;
    sub_ABA670();
    v475 = v500;
    v474 = v501;
    v476 = v507;
    (*(v500 + 8))(v507, v501);
    (*(v475 + 32))(v476, v473, v474);
    v485 = [v392 artworkCatalog];
    v503 = 0;
    v504 = 0;
    v502 = 0;
    LODWORD(v506) = 0;
    v488 = 0;
    v489 = 0;
    LODWORD(v505) = 13;
    LODWORD(v484) = 1;
    v51 = &v526;
    goto LABEL_45;
  }

  if (qword_DE6D48 != -1)
  {
    swift_once();
  }

  v409 = sub_AB4BC0();
  __swift_project_value_buffer(v409, static Logger.search);
  v410 = v509;
  v411 = sub_AB4BA0();
  v412 = sub_AB9F40();

  if (os_log_type_enabled(v411, v412))
  {
    v413 = swift_slowAlloc();
    v414 = swift_slowAlloc();
    *&v526 = v414;
    *v413 = 136446210;
    v415 = sub_27ECD0(&off_CF1538);
    v416 = MPModelObject.humanDescription(including:)(v415);
    v418 = v417;

    v419 = sub_425E68(v416, v418, &v526);

    *(v413 + 4) = v419;
    _os_log_impl(&dword_0, v411, v412, "Unexpected model object=%{public}s", v413, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v414);
  }

  v420 = *(v508 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView);
  if (v420)
  {
    type metadata accessor for SearchResultCell();
    v421 = v420;
    v422 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();

    v423 = v422;
    v424 = Artwork.Placeholder.music.unsafeMutableAddressor();
    v425 = *v424;
    v426 = v424[1];
    v427 = v424[2];
    v428 = v424[3];
    v430 = v424[5];
    v509 = v424[4];
    v429 = v509;
    v506 = v430;
    v431 = &v423[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
    v432 = *&v423[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
    v504 = *&v423[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 8];
    v505 = v432;
    v433 = *&v423[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 16];
    v502 = *&v423[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 24];
    v503 = v433;
    v434 = *&v423[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 32];
    v498 = *&v423[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 40];
    v499 = v434;
    *v431 = v425;
    *(v431 + 1) = v426;
    v435 = v425;
    v496 = v426;
    v497 = v425;
    v436 = v426;
    *(v431 + 2) = v427;
    *(v431 + 3) = v428;
    *(v431 + 4) = v429;
    *(v431 + 5) = v430;
    v437 = v427;
    v438 = v428;
    v439 = v435;
    v440 = v436;
    v441 = v437;
    v442 = v438;
    v443 = v439;
    v444 = v440;
    v495 = v441;
    v445 = v442;
    v446 = v443;
    v447 = v444;
    sub_2F1C8(v505, v504, v503, v502);
    v448 = *&v423[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
    v526 = *(v448 + 152);
    v527 = *(v448 + 168);
    v528 = *(v448 + 184);
    v449 = v496;
    *(v448 + 152) = v497;
    *(v448 + 160) = v449;
    *(v448 + 168) = v427;
    *(v448 + 176) = v428;
    v450 = v506;
    *(v448 + 184) = v509;
    *(v448 + 192) = v450;
    v451 = v446;
    v452 = v447;
    v453 = v495;
    v454 = v445;
    sub_75948(&v526);
    sub_12E1C(&v526, &unk_DF8690);

    v455 = *(v508 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_textDrawingCache);
    v456 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
    swift_beginAccess();
    *&v423[v456] = v455;
    swift_retain_n();

    v457 = *&v423[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
    v458 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v459 = *&v457[v458];
    *&v457[v458] = v455;

    v460 = v457;
    sub_2E6210(v459);

    v461 = DeviceCapabilities.isInternalInstall.unsafeMutableAddressor();
    v462 = 0x8000000000B60040;
    v463 = *v461 == 0;
    v464 = 0x1000000000000021;
    if (!*v461)
    {
      v464 = 0;
    }

    v465 = &v423[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_title];
    v466 = *&v423[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_title];
    v467 = *&v423[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_title + 8];
    if (v463)
    {
      v462 = 0xE000000000000000;
    }

    *v465 = v464;
    v465[1] = v462;
    if (v463)
    {
      v468 = 0;
    }

    else
    {
      v468 = 0xD00000000000001FLL;
    }

    if (v463)
    {
      v469 = 0xE000000000000000;
    }

    else
    {
      v469 = 0x8000000000B60020;
    }

    sub_3EA330(v466, v467);

    v470 = &v423[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_subtitle];
    v471 = *&v423[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_subtitle];
    v472 = *&v423[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_subtitle + 8];
    *v470 = v468;
    v470[1] = v469;
    sub_3EA450(v471, v472);
    (*(v500 + 8))(v507, v501);
    goto LABEL_125;
  }

  __break(1u);
}

void sub_355380(void *a1, uint64_t a2)
{
  v3 = v2;
  v78 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v74 - v9;
  v11 = type metadata accessor for PlaybackIntentDescriptor(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v2 traitCollection];
  v16 = UITraitCollection.mediaPickerConfiguration.getter();

  if (!v16)
  {
LABEL_19:
    v39 = v78;
    swift_getObjectType();
    if (swift_conformsToProtocol2() && v39 || (v40 = sub_355CA8(a2)) == 0)
    {
      v42 = swift_allocBox();
      v44 = v43;
      v45 = [v3 traitCollection];
      v46 = UITraitCollection.mediaLibrary.getter();

      sub_264648(static MPMediaLibraryFilteringOptions.none.getter, 0, v46, v8);
      if ((*(v12 + 48))(v8, 1, v11) == 1)
      {
        sub_12E1C(v8, &unk_DEA510);
        swift_deallocBox();
      }

      else
      {
        sub_35BB6C(v8, v44, type metadata accessor for PlaybackIntentDescriptor);
        v47 = v3;
        v48 = UIViewController.playActivityInformation.getter();
        v50 = v49;
        v52 = v51;
        v54 = v53;
        v55 = PlaybackIntentDescriptor.IntentType.underlyingIntent.getter();
        v56 = HIBYTE(v50) & 0xF;
        if ((v50 & 0x2000000000000000) == 0)
        {
          v56 = v48 & 0xFFFFFFFFFFFFLL;
        }

        if (v56)
        {

          v57 = sub_AB9260();
        }

        else
        {
          v57 = 0;
        }

        [v55 setPlayActivityFeatureName:v57];

        if (v54 >> 60 == 15)
        {
          isa = 0;
        }

        else
        {
          isa = sub_AB3250().super.isa;
        }

        [v55 setPlayActivityRecommendationData:isa];

        sub_466A4(v52, v54);
        v59 = *&v47[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView];
        if (!v59)
        {
          goto LABEL_51;
        }

        v60 = v59;
        v61 = sub_AB3770().super.isa;
        v62 = [v60 cellForItemAtIndexPath:v61];

        if (v62)
        {
          sub_D5958(v80);
          v77 = v80[0];
          v76 = v80[1];
          v63 = v81;
          v64 = v82;
          v65 = v83;

          v66 = v76;
          v67 = v77;
        }

        else
        {
          v63 = 0;
          v65 = 0;
          v67 = 0uLL;
          v64 = 255;
          v66 = 0uLL;
        }

        v84[0] = v67;
        v84[1] = v66;
        v85 = v63;
        v86 = v64;
        v87 = v65;
        PresentationSource.init(viewController:position:)(v47, v84, v79);
        v68 = sub_3504FC();

        sub_1109D4(v78, 0, 0, 1, v79, sub_35BA4C, v42);
        sub_1611C(v79);
      }
    }

    else
    {
      v41 = v40;
      v40();
      sub_17654(v41);
    }

    v69 = *&v3[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView];
    if (v69)
    {
LABEL_39:
      v70 = v69;
      v71 = sub_AB3770().super.isa;
      [v70 deselectItemAtIndexPath:v71 animated:1];

      return;
    }

    goto LABEL_49;
  }

  *&v76 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView;
  v17 = *&v3[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView];
  if (v17)
  {
    v18 = v17;
    *&v77 = a2;
    v19 = sub_AB3770().super.isa;
    v20 = [v18 cellForItemAtIndexPath:v19];

    if (v20)
    {
      type metadata accessor for SearchResultCell();
      v21 = swift_dynamicCastClass();
      if (!v21)
      {

LABEL_18:
        a2 = v77;
        goto LABEL_19;
      }

      v75 = v21;
      v22 = [objc_opt_self() deviceMediaLibrary];
      v23 = v78;
      sub_264648(static MPMediaLibraryFilteringOptions.none.getter, 0, v22, v10);

      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {

        sub_12E1C(v10, &unk_DEA510);
      }

      else
      {
        sub_35BB6C(v10, v14, type metadata accessor for PlaybackIntentDescriptor);
        v24 = [v23 pickableObjectFor:{objc_msgSend(v16, "selectionMode")}];
        if (v24)
        {
          v25 = v24;
          v26 = [v24 musicTypeIdentifier];
          if (v26)
          {
            v27 = v26;

            v28 = v3;
            v29 = UIViewController.playActivityInformation.getter();
            v31 = v30;
            v33 = v32;
            v35 = v34;
            v36 = PlaybackIntentDescriptor.IntentType.underlyingIntent.getter();
            v37 = HIBYTE(v31) & 0xF;
            if ((v31 & 0x2000000000000000) == 0)
            {
              v37 = v29 & 0xFFFFFFFFFFFFLL;
            }

            if (v37)
            {

              v38 = sub_AB9260();
            }

            else
            {
              v38 = 0;
            }

            [v36 setPlayActivityFeatureName:v38];

            if (v35 >> 60 == 15)
            {
              v72 = 0;
            }

            else
            {
              v72 = sub_AB3250().super.isa;
            }

            [v36 setPlayActivityRecommendationData:v72];

            sub_466A4(v33, v35);
            if (*&v28[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_mediaPickerAddController])
            {

              v73 = v20;
              sub_3B8FA0(v14, v78, v75, &off_D02738);

              sub_35BBD4(v14, type metadata accessor for PlaybackIntentDescriptor);
            }

            else
            {
              sub_35BBD4(v14, type metadata accessor for PlaybackIntentDescriptor);
            }

            v69 = *&v3[v76];
            if (v69)
            {
              goto LABEL_39;
            }

            __break(1u);
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }
        }

        else
        {
          v25 = v20;
        }

        sub_35BBD4(v14, type metadata accessor for PlaybackIntentDescriptor);
      }
    }

    goto LABEL_18;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
}

uint64_t sub_355BC4(unsigned __int8 a1)
{
  v1 = a1;
  v2 = type metadata accessor for PlaybackIntentDescriptor(0);
  result = __chkstk_darwin(v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1 == 1)
  {
    v6 = swift_projectBox();
    swift_beginAccess();
    sub_35BA54(v6, v5, type metadata accessor for PlaybackIntentDescriptor);
    sub_37D3DC(0);
    return sub_35BBD4(v5, type metadata accessor for PlaybackIntentDescriptor);
  }

  return result;
}

uint64_t (*sub_355CA8(uint64_t a1))()
{
  v2 = v1;
  v4 = sub_AB3820();
  v206 = *(v4 - 1);
  v207 = v4;
  v5 = v206[8];
  __chkstk_darwin(v4);
  v6 = type metadata accessor for Search.ResultContext(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v201 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4FB8);
  __chkstk_darwin(v9 - 8);
  v11 = &v201 - v10;
  v12 = type metadata accessor for Search.Item(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v208 = &v201 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_dataSource];
  if (!v15)
  {
    __break(1u);
LABEL_95:

    goto LABEL_96;
  }

  v16 = v15;
  sub_AB5230();

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_12E1C(v11, &qword_DF4FB8);
    return 0;
  }

  v17 = v208;
  sub_35BB6C(v11, v208, type metadata accessor for Search.Item);
  v18 = Search.Item.modelObject.getter();
  if (!v18)
  {
    sub_35BBD4(v17, type metadata accessor for Search.Item);
    return 0;
  }

  v19 = v18;
  v20 = [v18 innermostModelObject];

  v21 = swift_allocObject();
  *(v21 + 16) = v2;
  v22 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults;
  swift_beginAccess();
  sub_35BA54(v2 + v22, v8, type metadata accessor for Search.ResultContext);
  v23 = v2;
  v24 = v17;
  v25 = v23;
  v26 = Search.ResultContext.source(for:)(v24);
  sub_35BBD4(v8, type metadata accessor for Search.ResultContext);
  if (v26 == 2)
  {
    goto LABEL_24;
  }

  if (v26)
  {
    v27 = sub_ABB3C0();

    if ((v27 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  v29 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
  MPModelObject.bestIdentifier(for:)(*v29, 0);
  if (!v30)
  {
LABEL_24:
    v205 = v21;
    v59 = [v25 traitCollection];
    objc_opt_self();
    v60 = swift_dynamicCastObjCClass();
    if (v60)
    {
      v61 = v60;
      v62 = [objc_allocWithZone(MPModelLibraryRequest) init];
      v63 = UITraitCollection.mediaLibrary.getter();
      [v62 setMediaLibrary:v63];

      v64 = v62;
      v65 = sub_AB9260();
      [v64 setLabel:v65];

      sub_13C80(0, &qword_DE8E90);
      v66 = static MPModelAlbum.defaultMusicKind.getter();
      [v64 setSectionKind:v66];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_AF82B0;
      *(v67 + 32) = v61;
      sub_13C80(0, &qword_DEDE20);
      v68 = v20;
      isa = sub_AB9740().super.isa;

      [v64 setScopedContainers:isa];

      UITraitCollection.configure<A, B>(libraryRequest:)(v64);
      type metadata accessor for JSContainerDetailComponentController();
      v70 = v68;
      v71 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v61, 0, 1, UIScreen.Dimensions.size.getter, 0);
      if (v71)
      {
        v72 = v71;
        v73 = *&v71[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];
LABEL_27:
        v74 = JSViewModel.playActivityRecommendationData.getter();
        v76 = v75;
LABEL_50:
        sub_466A4(0, 0xF000000000000000);
        *v232 = v209[0];
        *&v232[3] = *(v209 + 3);
        v224 = v64;
        v225 = v73;
        v226 = v61;
        v227 = 0;
        v229 = 0;
        v230 = 0;
        v228 = v72;
        v231 = 0;
        v233 = v74;
        v234 = v76;
        v213 = v64;
        v214 = v73;
        v215 = v61;
        v216 = 0;
        v218 = 0;
        v219 = 0;
        v217 = v72;
        v220 = 0;
        *v221 = v209[0];
        *&v221[3] = *(v209 + 3);
        v222 = v74;
        v223 = v76;
        sub_70EB0(&v224, v212);
        sub_70F0C(&v213);
        v109 = objc_allocWithZone(type metadata accessor for AlbumDetailViewController());
        v110 = sub_2D72DC(&v224);

        sub_35BBD4(v208, type metadata accessor for Search.Item);

        v111 = swift_allocObject();
        *(v111 + 16) = v25;
        *(v111 + 24) = v110;
        v112 = v25;

        return sub_35BD88;
      }

      objc_opt_self();
      v72 = swift_dynamicCastObjCClass();
      if (!v72)
      {
        v73 = 0;
        v74 = 0;
        v76 = 0xF000000000000000;
        goto LABEL_50;
      }

      v207 = v59;
      v84 = v25;
      v85 = MPModelPropertyPlaylistType;
      v86 = v70;
      if ([v72 hasLoadedValueForKey:v85])
      {
        v25 = v84;
        if ([v72 type] == &dword_8 + 1)
        {
          v72 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0);
          v73 = *&v72[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];

          v59 = v207;
          goto LABEL_27;
        }

        v72 = 0;
        v73 = 0;
        v74 = 0;
        v76 = 0xF000000000000000;
      }

      else
      {

        v72 = 0;
        v73 = 0;
        v74 = 0;
        v76 = 0xF000000000000000;
        v25 = v84;
      }

      v59 = v207;
      goto LABEL_50;
    }

    objc_opt_self();
    v77 = swift_dynamicCastObjCClass();
    if (v77)
    {
      v78 = v77;
      v79 = objc_allocWithZone(type metadata accessor for ArtistViewController());
      v80 = v20;
      v81 = sub_1E2F78(v78);
      sub_35BBD4(v208, type metadata accessor for Search.Item);

      v82 = swift_allocObject();
      *(v82 + 16) = v25;
      *(v82 + 24) = v81;
      v83 = v25;

      return sub_35BD88;
    }

    objc_opt_self();
    v87 = swift_dynamicCastObjCClass();
    if (v87)
    {
      v88 = v87;
      v89 = v25;
      v90 = [v87 name];
      if (v90)
      {
        v91 = v90;
        v92 = sub_AB92A0();
        v94 = v93;
      }

      else
      {
        v92 = 0;
        v94 = 0;
      }

      objc_allocWithZone(type metadata accessor for AlbumsViewController());
      v113 = v20;
      v114 = sub_13B3E0(3, v88, 1, v92, v94);
      sub_35BBD4(v208, type metadata accessor for Search.Item);

      v115 = swift_allocObject();
      *(v115 + 16) = v89;
      *(v115 + 24) = v114;
      v116 = v89;

      return sub_35BD88;
    }

    v204 = v25;
    objc_opt_self();
    v100 = swift_dynamicCastObjCClass();
    if (v100)
    {
      v101 = v100;
      if ([v100 type] == &dword_0 + 3)
      {
        v102 = v20;
        v103 = [v101 name];
        if (v103)
        {
          v104 = v103;
          v105 = sub_AB92A0();
          v107 = v106;
        }

        else
        {
          v105 = 0;
          v107 = 0;
        }

        v166 = objc_allocWithZone(type metadata accessor for PlaylistsViewController());
        v167 = sub_48DDCC(v101, 0, v105, v107, 0);
        sub_35BBD4(v208, type metadata accessor for Search.Item);

        v168 = swift_allocObject();
        v169 = v204;
        *(v168 + 16) = v204;
        *(v168 + 24) = v167;
        v170 = v169;

        return sub_35BD88;
      }

      v140 = [objc_allocWithZone(MPModelLibraryRequest) init];
      v141 = UITraitCollection.mediaLibrary.getter();
      [v140 setMediaLibrary:v141];

      v142 = v140;
      v143 = sub_AB9260();
      [v142 setLabel:v143];

      sub_13C80(0, &qword_DE9C10);
      v144 = static MPModelPlaylistEntry.defaultMusicKind.getter();
      v145 = objc_opt_self();
      v146 = static MPModelPlaylistVariants.allPlaylists.getter();
      v207 = v144;
      v147 = [v145 kindWithVariants:v146 playlistEntryKind:v144 options:0];
      [v142 setSectionKind:v147];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
      v148 = swift_allocObject();
      *(v148 + 16) = xmmword_AF82B0;
      *(v148 + 32) = v101;
      sub_13C80(0, &qword_DEDE20);
      v149 = v20;
      v150 = sub_AB9740().super.isa;

      [v142 setScopedContainers:v150];

      UITraitCollection.configure<A, B>(libraryRequest:)(v142);
      type metadata accessor for JSContainerDetailComponentController();
      v151 = v149;
      v152 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v101, 0, 1, UIScreen.Dimensions.size.getter, 0);
      if (v152)
      {
        v153 = v152;
        v154 = *&v152[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];
        v155 = v204;
      }

      else
      {
        v171 = MPModelPropertyPlaylistType;
        v172 = v151;
        v173 = [v101 hasLoadedValueForKey:v171];
        v155 = v204;
        if (!v173 || [v101 type] != &dword_8 + 1)
        {

          v154 = 0;
          v153 = 0;
          v156 = 0;
          v158 = 0xF000000000000000;
          goto LABEL_83;
        }

        v153 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0);
        v154 = *(v153 + OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail);
      }

      v156 = JSViewModel.playActivityRecommendationData.getter();
      v158 = v157;
LABEL_83:
      sub_466A4(0, 0xF000000000000000);
      *v232 = v209[0];
      *&v232[3] = *(v209 + 3);
      v224 = v142;
      v225 = v154;
      v226 = v101;
      v227 = 0;
      v229 = 0;
      v230 = 0;
      v228 = v153;
      v231 = 0;
      v233 = v156;
      v234 = v158;
      v213 = v142;
      v214 = v154;
      v215 = v101;
      v216 = 0;
      v218 = 0;
      v219 = 0;
      v217 = v153;
      v220 = 0;
      *v221 = v209[0];
      *&v221[3] = *(v209 + 3);
      v222 = v156;
      v223 = v158;
      sub_70EB0(&v224, v212);
      sub_70F0C(&v213);
      v190 = objc_allocWithZone(type metadata accessor for PlaylistDetailViewController());
      v191 = sub_39891C(&v224, 0);

      sub_35BBD4(v208, type metadata accessor for Search.Item);

      v192 = swift_allocObject();
      *(v192 + 16) = v155;
      *(v192 + 24) = v191;
      v193 = v155;

      return sub_35BD88;
    }

    objc_opt_self();
    v125 = swift_dynamicCastObjCClass();
    if (!v125)
    {
      sub_35BBD4(v208, type metadata accessor for Search.Item);
      objc_opt_self();
      v159 = swift_dynamicCastObjCClass();
      if (v159)
      {
        v160 = v159;
        v161 = swift_allocObject();
        v161[2] = v160;
        v161[3] = v59;
        v162 = v205;
        v161[4] = sub_35B754;
        v161[5] = v162;
        return sub_35B7A4;
      }

      return 0;
    }

    v126 = v125;
    v127 = [v125 album];
    if (v127)
    {
      v128 = v127;
      if ([v126 trackCount] <= 1 && (objc_msgSend(v126, "hasVideo") & 1) != 0)
      {
        sub_35BBD4(v208, type metadata accessor for Search.Item);

        return 0;
      }

      v174 = [objc_allocWithZone(MPModelLibraryRequest) init];
      v175 = UITraitCollection.mediaLibrary.getter();
      [v174 setMediaLibrary:v175];

      v176 = v174;
      v177 = sub_AB9260();
      [v176 setLabel:v177];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
      v178 = swift_allocObject();
      *(v178 + 16) = xmmword_AF82B0;
      *(v178 + 32) = v128;
      sub_13C80(0, &qword_DEDE20);
      v207 = v128;
      v179 = sub_AB9740().super.isa;

      [v176 setScopedContainers:v179];

      sub_13C80(0, &qword_DE8E90);
      v180 = static MPModelAlbum.defaultMusicKind.getter();
      [v176 setSectionKind:v180];

      v181 = [objc_opt_self() kindWithVariants:3];
      [v176 setItemKind:v181];

      UITraitCollection.configure<A, B>(libraryRequest:)(v176);
      v206 = [v126 identifiers];
      type metadata accessor for JSContainerDetailComponentController();
      v182 = v207;
      v183 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v182, 0, 1, UIScreen.Dimensions.size.getter, 0);
      v207 = v182;
      if (v183)
      {
        v184 = v183;
        v185 = *&v183[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];
        v186 = v204;
LABEL_80:
        v187 = JSViewModel.playActivityRecommendationData.getter();
        v189 = v188;
LABEL_92:
        sub_466A4(0, 0xF000000000000000);
        *v232 = v209[0];
        *&v232[3] = *(v209 + 3);
        v224 = v176;
        v225 = v185;
        v226 = v128;
        v227 = 0;
        v228 = v184;
        v229 = 0;
        v230 = v206;
        v231 = 0;
        v233 = v187;
        v234 = v189;
        v213 = v176;
        v214 = v185;
        v215 = v128;
        v216 = 0;
        v217 = v184;
        v218 = 0;
        v219 = v206;
        v220 = 0;
        *v221 = v209[0];
        *&v221[3] = *(v209 + 3);
        v222 = v187;
        v223 = v189;
        sub_70EB0(&v224, v212);
        sub_70F0C(&v213);
        v197 = objc_allocWithZone(type metadata accessor for AlbumDetailViewController());
        v198 = sub_2D72DC(&v224);

        sub_35BBD4(v208, type metadata accessor for Search.Item);

        v199 = swift_allocObject();
        *(v199 + 16) = v186;
        *(v199 + 24) = v198;
        v200 = v186;

        return sub_35B7F0;
      }

      objc_opt_self();
      v184 = swift_dynamicCastObjCClass();
      if (v184)
      {
        v194 = MPModelPropertyPlaylistType;
        v195 = v182;
        if ([v184 hasLoadedValueForKey:v194])
        {
          v196 = [v184 type];
          v186 = v204;
          if (v196 != &dword_8 + 1)
          {

            v185 = 0;
            v184 = 0;
            v187 = 0;
            v189 = 0xF000000000000000;
            goto LABEL_92;
          }

          v184 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0);
          v185 = *&v184[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];

          goto LABEL_80;
        }

        v185 = 0;
        v184 = 0;
      }

      else
      {
        v185 = 0;
      }

      v187 = 0;
      v189 = 0xF000000000000000;
      v186 = v204;
      goto LABEL_92;
    }

    sub_35BBD4(v208, type metadata accessor for Search.Item);

LABEL_47:

    return 0;
  }

  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (!v31)
  {
    v203 = v20;
    sub_35BBD4(v208, type metadata accessor for Search.Item);

LABEL_41:
    v95 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v96 = v206;
    v97 = v207;
    (v206[2])(&v201 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v207);
    v98 = (*(v96 + 80) + 24) & ~*(v96 + 80);
    v99 = swift_allocObject();
    *(v99 + 16) = v95;
    (v96[4])(v99 + v98, &v201 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v97);
    *(v99 + ((v5 + v98 + 7) & 0xFFFFFFFFFFFFFFF8)) = v203;
    return sub_35B910;
  }

  v32 = v31;
  v204 = v25;
  v33 = v20;
  v34 = [v32 album];
  if (!v34)
  {
    v203 = v20;
    sub_35BBD4(v208, type metadata accessor for Search.Item);

    goto LABEL_41;
  }

  v207 = v33;
  v35 = *v29;
  v20 = v34;
  MPModelObject.bestIdentifier(for:)(v35, 0);
  if (!v36)
  {

    v108 = v207;
    sub_35BBD4(v208, type metadata accessor for Search.Item);
    goto LABEL_47;
  }

  v37 = objc_allocWithZone(type metadata accessor for ModelObjectBackedStoreItemMetadata());
  v38 = ModelObjectBackedStoreItemMetadata.init(modelObject:)(v20);
  if (!v38)
  {
    sub_35BBD4(v208, type metadata accessor for Search.Item);

    v117 = v207;
    return 0;
  }

  v39 = v38;
  v40 = [v32 album];
  v41 = [v32 identifiers];
  type metadata accessor for JSContainerDetailComponentController();
  v42 = v39;
  v43 = JSContainerDetailComponentController.__allocating_init(containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v42, 0, 1, UIScreen.Dimensions.size.getter, 0);
  v205 = v21;
  v206 = v41;
  v202 = v40;
  v203 = v42;
  if (v43)
  {
    goto LABEL_21;
  }

  if (!v40)
  {
    goto LABEL_96;
  }

  v44 = v40;
  v43 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v44, 0, 1, UIScreen.Dimensions.size.getter, 0);
  if (!v43)
  {
    objc_opt_self();
    v163 = swift_dynamicCastObjCClass();
    if (v163)
    {
      v164 = v163;
      v165 = MPModelPropertyPlaylistType;
      v2 = v44;
      if ([v164 hasLoadedValueForKey:v165] && objc_msgSend(v164, "type") == &dword_8 + 1)
      {
        v45 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0);
        v46 = *&v45[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];

        goto LABEL_22;
      }

      goto LABEL_95;
    }

LABEL_96:
    result = sub_ABAFD0();
    __break(1u);
    return result;
  }

LABEL_21:
  v45 = v43;
  v46 = *(v43 + OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail);
LABEL_22:
  v47 = type metadata accessor for JSContainerDetailModelRequest();
  v48 = objc_allocWithZone(v47);
  v49 = &v48[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText];
  *v49 = 0;
  v49[1] = 0;
  v48[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption] = 13;
  swift_unknownObjectWeakInit();
  v50 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel;
  *&v48[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel] = 0;
  v48[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_isCancelled] = 0;
  *&v48[v50] = v46;
  v210.receiver = v48;
  v210.super_class = v47;
  v51 = v46;
  v52 = v206;
  v53 = v45;
  v54 = objc_msgSendSuper2(&v210, "init");
  v55 = v51[OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_itemKind] & 0xFE;
  v201 = v46;
  if (v55 == 2)
  {
    sub_13C80(0, &qword_DE8E90);
    v56 = v54;
    v57 = static MPModelAlbum.defaultMusicKind.getter();
    [v56 setSectionKind:v57];

    v58 = [objc_opt_self() kindWithVariants:3];
    [v56 setItemKind:v58];
  }

  else
  {
    sub_13C80(0, &qword_DE9C10);
    v118 = static MPModelPlaylistEntry.defaultMusicKind.getter();
    v119 = objc_opt_self();
    v120 = v54;
    v121 = [v119 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v118 options:0];
    [v120 setSectionKind:v121];

    [v120 setItemKind:v118];
  }

  v122 = v204;
  v123 = v52;
  if (v52)
  {
    v124 = v206;
  }

  else
  {
    v129 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_prominentItemIdentifiers;
    swift_beginAccess();
    v124 = *&v51[v129];
    v130 = v124;
  }

  v131 = v203;
  v132 = JSViewModel.playActivityRecommendationData.getter();
  v134 = v133;
  sub_466A4(0, 0xF000000000000000);
  *v232 = *v211;
  *&v232[3] = *&v211[3];
  v224 = v54;
  v225 = v201;
  v226 = v202;
  v227 = 0;
  v228 = v45;
  v229 = 0;
  v230 = v124;
  v231 = 0;
  v233 = v132;
  v234 = v134;
  v213 = v54;
  v214 = v201;
  v215 = v202;
  v216 = 0;
  v217 = v45;
  v218 = 0;
  v219 = v124;
  v220 = 0;
  *&v221[3] = *&v211[3];
  *v221 = *v211;
  v222 = v132;
  v223 = v134;
  sub_70EB0(&v224, v212);
  sub_70F0C(&v213);
  v135 = objc_allocWithZone(type metadata accessor for AlbumDetailViewController());
  v136 = sub_2D72DC(&v224);

  v137 = v207;
  sub_35BBD4(v208, type metadata accessor for Search.Item);

  v138 = swift_allocObject();
  *(v138 + 16) = v122;
  *(v138 + 24) = v136;
  v139 = v122;
  return sub_35BD88;
}