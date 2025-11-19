_OWORD *sub_1B67EC@<X0>(_OWORD *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v11 = sub_1977EC(a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_292B84(v16, isUniquelyReferenced_nonNull_native);
    v11 = sub_1977EC(a2);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    type metadata accessor for Key(0);
    v11 = sub_30D778();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v20 = v11;
    sub_296B84();
    v11 = v20;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_29676C(v11, a2, a1, v10);
    *a3 = 0u;
    a3[1] = 0u;
    result = a2;
    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v18 = 32 * v11;
  sub_1DA94((v10[7] + 32 * v11), a3);
  result = sub_1DA94(a1, (v10[7] + v18));
LABEL_11:
  *v5 = v10;
  return result;
}

id sub_1B6924(void *a1)
{
  v2 = sub_303658();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = [objc_allocWithZone(NSMutableAttributedString) init];
  v23 = a1;
  v6 = objc_opt_self();

  v7 = [v6 secondaryLabelColor];
  v21 = sub_124C4(0, &qword_3FFD48);
  *&v20 = v7;
  sub_1B67EC(&v20, NSForegroundColorAttributeName, v22);
  sub_EB68(v22, &unk_3FBB70);
  if (a1[2])
  {
    v8 = sub_1977EC(NSFontAttributeName);
    if (v9)
    {
      sub_1DA1C(a1[7] + 32 * v8, v22);
      v10 = sub_124C4(0, &qword_408100);
      if (swift_dynamicCast())
      {
        v11 = v20;
        v12 = [v20 fontDescriptor];
        v13 = [v12 fontDescriptorWithSymbolicTraits:1];

        if (!v13)
        {
          goto LABEL_12;
        }

        v14 = [objc_opt_self() fontWithDescriptor:v13 size:0.0];

        v21 = v10;
        *&v20 = v14;
        sub_1B67EC(&v20, NSFontAttributeName, v22);

        sub_EB68(v22, &unk_3FBB70);
      }
    }
  }

  v15 = sub_303668();
  v16 = *(v15 + 16);
  if (!v16)
  {
LABEL_10:

    return v19[0];
  }

  v17 = 0;
  v13 = (v3 + 8);
  while (v17 < *(v15 + 16))
  {
    (*(v3 + 16))(v5, v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v17, v2);
    sub_1B59A0(v5, &v23, a1, v19[0], v19[1]);
    ++v17;
    (*v13)(v5, v2);
    if (v16 == v17)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);

  result = (*v13)(v5, v2);
  __break(1u);
  return result;
}

uint64_t sub_1B6C8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6CFC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B6D44()
{
  v0 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v0 setParagraphSpacing:2.0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_32A8F0;
  *(inited + 32) = NSFontAttributeName;
  v2 = sub_124C4(0, &qword_408100);
  v3 = NSFontAttributeName;
  *(inited + 40) = sub_30CD58();
  *(inited + 64) = v2;
  *(inited + 72) = NSForegroundColorAttributeName;
  v4 = objc_opt_self();
  v5 = NSForegroundColorAttributeName;
  v6 = [v4 secondaryLabelColor];
  v7 = sub_124C4(0, &qword_3FFD48);
  *(inited + 80) = v6;
  *(inited + 104) = v7;
  *(inited + 112) = NSParagraphStyleAttributeName;
  *(inited + 144) = sub_124C4(0, &qword_4079D0);
  *(inited + 120) = v0;
  v8 = NSParagraphStyleAttributeName;
  v9 = v0;
  *(inited + 152) = sub_30CAC8();
  v10 = sub_304048();
  *(inited + 184) = v10;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((inited + 160));
  (*(*(v10 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for TranscriptSelectionContentType.speaker(_:), v10);
  v12 = sub_2D6CB0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FFD50);
  swift_arrayDestroy();

  return v12;
}

id sub_1B6F74(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407C20);
  __chkstk_darwin(v4 - 8);
  v6 = v20 - v5;
  v7 = [objc_allocWithZone(NSMutableAttributedString) init];
  v8 = type metadata accessor for ParagraphViewModel();
  sub_1B71C8(v2 + *(v8 + 20), v6);
  v9 = sub_303628();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    sub_1B7238(v6);
  }

  else
  {
    v11 = sub_303618();
    v13 = v12;
    (*(v10 + 8))(v6, v9);
    if (v13)
    {
      v20[0] = v11;
      v20[1] = v13;

      v21._countAndFlagsBits = 10;
      v21._object = 0xE100000000000000;
      sub_30C238(v21);

      sub_1B6D44();
      v14 = objc_allocWithZone(NSAttributedString);
      v15 = sub_30C098();

      type metadata accessor for Key(0);
      sub_CFA40();
      isa = sub_30BF88().super.isa;

      v17 = [v14 initWithString:v15 attributes:isa];

      [v7 appendAttributedString:v17];
    }
  }

  v18 = sub_1B6924(a1);
  [v7 appendAttributedString:v18];

  return v7;
}

uint64_t sub_1B71C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7238(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1B72A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v26 = a2;
  v22 = a1;
  v25 = sub_304048();
  v3 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_30A238();
  v6 = *(v21 - 8);
  __chkstk_darwin(v21);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_308B18();
  __chkstk_darwin(v9 - 8);
  v10 = sub_309998();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [objc_allocWithZone(NSMutableAttributedString) init];
  type metadata accessor for TextAttachmentViewProvider();
  sub_309368();
  (*(v6 + 104))(v8, enum case for ReferenceLinkViewStyle.static(_:), v21);
  sub_3099A8();
  v14 = sub_1B7A1C(v13, v22, v24);
  (*(v11 + 8))(v13, v10);
  v15 = v25;
  (*(v3 + 104))(v5, enum case for TranscriptSelectionContentType.link(_:), v25);
  v16 = v14;
  sub_30BFB8();
  (*(v3 + 8))(v5, v15);
  type metadata accessor for Key(0);
  sub_1B7E30(&qword_3FB410, type metadata accessor for Key);
  isa = sub_30BF88().super.isa;

  v18 = [objc_opt_self() attributedStringWithAttachment:v16 attributes:isa];

  v19 = v23;
  [v23 appendAttributedString:v18];

  return v19;
}

uint64_t sub_1B7670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_301DF8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26[3] = type metadata accessor for ChapterArtworkView();
  v26[4] = sub_1B7E30(&qword_407C30, type metadata accessor for ChapterArtworkView);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v26);
  sub_1B7E78(a1, boxed_opaque_existential_0Tm);
  if (qword_3FAC20 != -1)
  {
    swift_once();
  }

  sub_304118();

  if ((v25[23] & 1) == 0)
  {
    v11 = objc_opt_self();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (qword_3FAC08 != -1)
    {
      swift_once();
    }

    v13 = sub_30C098();
    [v11 registerTextAttachmentViewProviderClass:ObjCClassFromMetadata forFileType:v13];

    v14 = off_407B68;

    os_unfair_lock_lock(v14 + 5);
    *(&dword_10 + v14) = 1;
    os_unfair_lock_unlock(v14 + 5);
  }

  sub_301DE8();
  v15 = sub_301DD8();
  v17 = v16;
  v18 = (*(v7 + 8))(v9, v6);
  if (qword_3FAC10 != -1)
  {
    v18 = swift_once();
  }

  v19 = qword_407B58;
  __chkstk_darwin(v18);
  *&v25[-32] = v15;
  *&v25[-24] = v17;
  *&v25[-16] = v26;
  *&v25[-8] = a3;

  os_unfair_lock_lock(v19 + 6);
  sub_1B7EE0(&v19[4]);
  os_unfair_lock_unlock(v19 + 6);

  if (qword_3FAC18 != -1)
  {
    v20 = swift_once();
  }

  v21 = qword_407B60;
  __chkstk_darwin(v20);
  *&v25[-32] = a2;
  *&v25[-24] = v15;
  *&v25[-16] = v17;

  os_unfair_lock_lock(v21 + 6);
  sub_1B7EF8(&v21[4]);
  os_unfair_lock_unlock(v21 + 6);

  v22 = objc_allocWithZone(type metadata accessor for ViewTextAttachment());
  v23 = sub_1B35A8(v15, v17);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v23;
}

uint64_t sub_1B7A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_301DF8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_309998();
  v27[3] = v10;
  v27[4] = sub_1B7E30(&qword_407C28, &type metadata accessor for AnyReferenceLinkView);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v27);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_0Tm, a1, v10);
  if (qword_3FAC20 != -1)
  {
    swift_once();
  }

  sub_304118();

  if ((v26[23] & 1) == 0)
  {
    v12 = objc_opt_self();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (qword_3FAC08 != -1)
    {
      swift_once();
    }

    v14 = sub_30C098();
    [v12 registerTextAttachmentViewProviderClass:ObjCClassFromMetadata forFileType:v14];

    v15 = off_407B68;

    os_unfair_lock_lock(v15 + 5);
    *(&dword_10 + v15) = 1;
    os_unfair_lock_unlock(v15 + 5);
  }

  sub_301DE8();
  v16 = sub_301DD8();
  v18 = v17;
  v19 = (*(v7 + 8))(v9, v6);
  if (qword_3FAC10 != -1)
  {
    v19 = swift_once();
  }

  v20 = qword_407B58;
  __chkstk_darwin(v19);
  *&v26[-32] = v16;
  *&v26[-24] = v18;
  *&v26[-16] = v27;
  *&v26[-8] = a3;

  os_unfair_lock_lock(v20 + 6);
  sub_1B7DF0(&v20[4]);
  os_unfair_lock_unlock(v20 + 6);

  if (qword_3FAC18 != -1)
  {
    v21 = swift_once();
  }

  v22 = qword_407B60;
  __chkstk_darwin(v21);
  *&v26[-32] = a2;
  *&v26[-24] = v16;
  *&v26[-16] = v18;

  os_unfair_lock_lock(v22 + 6);
  sub_1B7E10(&v22[4]);
  os_unfair_lock_unlock(v22 + 6);

  v23 = objc_allocWithZone(type metadata accessor for ViewTextAttachment());
  v24 = sub_1B35A8(v16, v18);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v24;
}

uint64_t sub_1B7E30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7E78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChapterArtworkView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7FB0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_303698();
  v21 = *(v4 - 8);
  v22 = v4;
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_303DE8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 - 8);
  __chkstk_darwin(v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v17 = *(v11 + 16);
  v17(&v21 - v18, v2, a1, v16);
  if (swift_dynamicCast())
  {
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  else
  {
    (v17)(v14, v2, a1);
    v20 = v22;
    if (swift_dynamicCast())
    {
      (*(v21 + 8))(v6, v20);
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1B824C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3058F8();
  *a1 = result;
  return result;
}

uint64_t sub_1B82A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407D40);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407D48);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  KeyPath = swift_getKeyPath();
  v13 = *(a1 + 24);
  v14 = sub_1BC7A8(&qword_4078F0, type metadata accessor for BridgeActionRunner);
  sub_1BBE40(v2, v8, type metadata accessor for ManageCategoriesView);
  v15 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_407D50) + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  v15[2] = v14;
  v16 = swift_getKeyPath();
  sub_30A6F8();
  swift_allocObject();

  v17 = sub_30A708();
  v18 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_407D58) + 36)];
  *v18 = v16;
  v18[1] = v17;
  v19 = swift_getKeyPath();
  v20 = *(a1 + 16);
  sub_308EE8();
  sub_30B8C8();
  v21 = v33[0];
  v22 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_407D60) + 36)];
  *v22 = v19;
  v22[1] = v21;
  v23 = swift_getKeyPath();
  v24 = &v8[*(v6 + 44)];
  *v24 = v23;
  v24[1] = v20;
  v25 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4078F8);

  sub_30B8C8();
  if (v32)
  {
    sub_12658(&v31, v33);
  }

  else
  {
    v33[3] = sub_303C38();
    v33[4] = &protocol witness table for UniformBucketingStrategy;
    __swift_allocate_boxed_opaque_existential_0Tm(v33);
    sub_303C28();
    if (v32)
    {
      sub_EB68(&v31, &qword_407900);
    }
  }

  v26 = &v11[*(v9 + 36)];
  sub_12670(v33, (v26 + 1));
  *v26 = v25;
  sub_34804(v8, v11, &qword_407D40);
  __swift_destroy_boxed_opaque_existential_1(v33);
  v27 = swift_getKeyPath();
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_34804(v11, a2, &qword_407D48);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407D30);
  v30 = (a2 + *(result + 36));
  *v30 = v27;
  v30[1] = Strong;
  return result;
}

uint64_t sub_1B8630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407D08);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407D10);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  KeyPath = swift_getKeyPath();
  v13 = *(a1 + 24);
  v14 = sub_1BC7A8(&qword_4078F0, type metadata accessor for BridgeActionRunner);
  sub_1BBE40(v2, v8, type metadata accessor for MultipleSubscriptionConfirmationView);
  v15 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_407D18) + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  v15[2] = v14;
  v16 = swift_getKeyPath();
  sub_30A6F8();
  swift_allocObject();

  v17 = sub_30A708();
  v18 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_407D20) + 36)];
  *v18 = v16;
  v18[1] = v17;
  v19 = swift_getKeyPath();
  v20 = *(a1 + 16);
  sub_308EE8();
  sub_30B8C8();
  v21 = v33[0];
  v22 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_407D28) + 36)];
  *v22 = v19;
  v22[1] = v21;
  v23 = swift_getKeyPath();
  v24 = &v8[*(v6 + 44)];
  *v24 = v23;
  v24[1] = v20;
  v25 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4078F8);

  sub_30B8C8();
  if (v32)
  {
    sub_12658(&v31, v33);
  }

  else
  {
    v33[3] = sub_303C38();
    v33[4] = &protocol witness table for UniformBucketingStrategy;
    __swift_allocate_boxed_opaque_existential_0Tm(v33);
    sub_303C28();
    if (v32)
    {
      sub_EB68(&v31, &qword_407900);
    }
  }

  v26 = &v11[*(v9 + 36)];
  sub_12670(v33, (v26 + 1));
  *v26 = v25;
  sub_34804(v8, v11, &qword_407D08);
  __swift_destroy_boxed_opaque_existential_1(v33);
  v27 = swift_getKeyPath();
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_34804(v11, a2, &qword_407D10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407CF8);
  v30 = (a2 + *(result + 36));
  *v30 = v27;
  v30[1] = Strong;
  return result;
}

__n128 sub_1B89BC@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = *(a1 + 24);
  v21 = sub_1BC7A8(&qword_4078F0, type metadata accessor for BridgeActionRunner);
  v9 = swift_getKeyPath();
  sub_30A6F8();
  swift_allocObject();

  v10 = sub_30A708();
  v11 = swift_getKeyPath();
  v12 = *(a1 + 16);
  sub_308EE8();
  sub_30B8C8();
  v23 = swift_getKeyPath();
  v51.n128_u64[0] = a2;
  v51.n128_u64[1] = a3;
  v52.n128_u64[0] = KeyPath;
  v52.n128_u64[1] = v8;
  v53.n128_u64[0] = v21;
  v53.n128_u64[1] = v9;
  v54.n128_u64[0] = v10;
  v54.n128_u64[1] = v11;
  v55 = v43.n128_u64[0];
  v56[0] = a2;
  v42 = v43.n128_u64[0];
  v40 = v53;
  v41 = v54;
  v38 = v51;
  v39 = v52;
  v56[1] = a3;
  v56[2] = KeyPath;
  v56[3] = v8;
  v56[4] = v21;
  v56[5] = v9;
  v56[6] = v10;
  v56[7] = v11;
  v56[8] = v43.n128_u64[0];
  sub_EB00(&v51, &v43, &qword_407CE8);

  sub_EB68(v56, &qword_407CE8);
  v13 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4078F8);
  sub_30B8C8();
  if (v36)
  {
    sub_12658(&v35, v37);
  }

  else
  {
    v37[3] = sub_303C38();
    v37[4] = &protocol witness table for UniformBucketingStrategy;
    __swift_allocate_boxed_opaque_existential_0Tm(v37);
    sub_303C28();
  }

  v28 = v41;
  v26 = v39;
  v27 = v40;
  v25 = v38;
  *&v29 = v42;
  *(&v29 + 1) = v23;
  v30 = v12;
  sub_12670(v37, v49);
  v45 = v27;
  v46 = v28;
  v47 = v29;
  *(&v48 + 1) = v13;
  *&v48 = v12;
  v43 = v25;
  v44 = v26;
  v31[2] = v40;
  v31[3] = v41;
  v31[0] = v38;
  v31[1] = v39;
  v32 = v42;
  v33 = v23;
  v34 = v12;
  sub_EB00(&v25, v24, &qword_407CF0);
  sub_EB68(v31, &qword_407CF0);
  __swift_destroy_boxed_opaque_existential_1(v37);
  v14 = swift_getKeyPath();
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = v49[1];
  *(a4 + 96) = v49[0];
  *(a4 + 112) = v16;
  v17 = v50;
  v18 = v46;
  *(a4 + 32) = v45;
  *(a4 + 48) = v18;
  v19 = v48;
  *(a4 + 64) = v47;
  *(a4 + 80) = v19;
  result = v44;
  *a4 = v43;
  *(a4 + 16) = result;
  *(a4 + 128) = v17;
  *(a4 + 136) = v14;
  *(a4 + 144) = Strong;
  return result;
}

uint64_t sub_1B8D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407CB0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407CB8);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  KeyPath = swift_getKeyPath();
  v13 = *(a1 + 24);
  v14 = sub_1BC7A8(&qword_4078F0, type metadata accessor for BridgeActionRunner);
  v15 = sub_309998();
  (*(*(v15 - 8) + 16))(v8, v2, v15);
  v16 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_407CC0) + 36)];
  *v16 = KeyPath;
  v16[1] = v13;
  v16[2] = v14;
  v17 = swift_getKeyPath();
  sub_30A6F8();
  swift_allocObject();

  v18 = sub_30A708();
  v19 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_407CC8) + 36)];
  *v19 = v17;
  v19[1] = v18;
  v20 = swift_getKeyPath();
  v21 = *(a1 + 16);
  sub_308EE8();
  sub_30B8C8();
  v22 = v34[0];
  v23 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_407CD0) + 36)];
  *v23 = v20;
  v23[1] = v22;
  v24 = swift_getKeyPath();
  v25 = &v8[*(v6 + 44)];
  *v25 = v24;
  v25[1] = v21;
  v26 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4078F8);

  sub_30B8C8();
  if (v33)
  {
    sub_12658(&v32, v34);
  }

  else
  {
    v34[3] = sub_303C38();
    v34[4] = &protocol witness table for UniformBucketingStrategy;
    __swift_allocate_boxed_opaque_existential_0Tm(v34);
    sub_303C28();
    if (v33)
    {
      sub_EB68(&v32, &qword_407900);
    }
  }

  v27 = &v11[*(v9 + 36)];
  sub_12670(v34, (v27 + 1));
  *v27 = v26;
  sub_34804(v8, v11, &qword_407CB0);
  __swift_destroy_boxed_opaque_existential_1(v34);
  v28 = swift_getKeyPath();
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_34804(v11, a2, &qword_407CB8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4079F0);
  v31 = (a2 + *(result + 36));
  *v31 = v28;
  v31[1] = Strong;
  return result;
}

double sub_1B90AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = *(a1 + 24);
  v8 = sub_1BC7A8(&qword_4078F0, type metadata accessor for BridgeActionRunner);
  v9 = swift_getKeyPath();
  sub_30A6F8();
  swift_allocObject();

  v10 = sub_30A708();
  v11 = swift_getKeyPath();
  v12 = *(a1 + 16);
  sub_308EE8();
  sub_30B8C8();
  v21 = swift_getKeyPath();
  *&v44 = a2;
  *(&v44 + 1) = KeyPath;
  *&v45 = v7;
  *(&v45 + 1) = v8;
  *&v46 = v9;
  *(&v46 + 1) = v10;
  *&v47 = v11;
  *(&v47 + 1) = v38;
  v34 = v44;
  v35 = v45;
  v36 = v46;
  v37 = v47;
  v48[0] = a2;
  v48[1] = KeyPath;
  v48[2] = v7;
  v48[3] = v8;
  v48[4] = v9;
  v48[5] = v10;
  v48[6] = v11;
  v48[7] = v38;
  sub_EB00(&v44, &v38, &qword_407CA0);

  sub_EB68(v48, &qword_407CA0);
  v13 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4078F8);
  sub_30B8C8();
  if (v32)
  {
    sub_12658(&v31, v33);
  }

  else
  {
    v33[3] = sub_303C38();
    v33[4] = &protocol witness table for UniformBucketingStrategy;
    __swift_allocate_boxed_opaque_existential_0Tm(v33);
    sub_303C28();
  }

  v23 = v34;
  v24 = v35;
  v25 = v36;
  v26 = v37;
  *&v27 = v21;
  *(&v27 + 1) = v12;
  sub_12670(v33, v43 + 8);
  *&v43[0] = v13;
  v40 = v25;
  v41 = v26;
  v42 = v27;
  v38 = v23;
  v39 = v24;
  v28[0] = v34;
  v28[1] = v35;
  v28[2] = v36;
  v28[3] = v37;
  v29 = v21;
  v30 = v12;
  sub_EB00(&v23, v22, &qword_407CA8);
  sub_EB68(v28, &qword_407CA8);
  __swift_destroy_boxed_opaque_existential_1(v33);
  v14 = swift_getKeyPath();
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = v43[0];
  *(a3 + 64) = v42;
  *(a3 + 80) = v16;
  v17 = v43[2];
  *(a3 + 96) = v43[1];
  *(a3 + 112) = v17;
  v18 = v39;
  *a3 = v38;
  *(a3 + 16) = v18;
  result = *&v40;
  v20 = v41;
  *(a3 + 32) = v40;
  *(a3 + 48) = v20;
  *(a3 + 128) = v14;
  *(a3 + 136) = Strong;
  return result;
}

uint64_t sub_1B93BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407C78);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407C80);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  KeyPath = swift_getKeyPath();
  v13 = *(a1 + 24);
  v14 = sub_1BC7A8(&qword_4078F0, type metadata accessor for BridgeActionRunner);
  sub_1BBE40(v2, v8, type metadata accessor for EpisodePaletteHeaderView);
  v15 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_407C88) + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  v15[2] = v14;
  v16 = swift_getKeyPath();
  sub_30A6F8();
  swift_allocObject();

  v17 = sub_30A708();
  v18 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_407C90) + 36)];
  *v18 = v16;
  v18[1] = v17;
  v19 = swift_getKeyPath();
  v20 = *(a1 + 16);
  sub_308EE8();
  sub_30B8C8();
  v21 = v33[0];
  v22 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_407C98) + 36)];
  *v22 = v19;
  v22[1] = v21;
  v23 = swift_getKeyPath();
  v24 = &v8[*(v6 + 44)];
  *v24 = v23;
  v24[1] = v20;
  v25 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4078F8);

  sub_30B8C8();
  if (v32)
  {
    sub_12658(&v31, v33);
  }

  else
  {
    v33[3] = sub_303C38();
    v33[4] = &protocol witness table for UniformBucketingStrategy;
    __swift_allocate_boxed_opaque_existential_0Tm(v33);
    sub_303C28();
    if (v32)
    {
      sub_EB68(&v31, &qword_407900);
    }
  }

  v26 = &v11[*(v9 + 36)];
  sub_12670(v33, (v26 + 1));
  *v26 = v25;
  sub_34804(v8, v11, &qword_407C78);
  __swift_destroy_boxed_opaque_existential_1(v33);
  v27 = swift_getKeyPath();
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_34804(v11, a2, &qword_407C80);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407C68);
  v30 = (a2 + *(result + 36));
  *v30 = v27;
  v30[1] = Strong;
  return result;
}

void *sub_1B9748(uint64_t a1, void *a2, unint64_t a3, unint64_t a4)
{
  type metadata accessor for PodcastsUIKitSwiftUIBridge();
  swift_allocObject();

  v8 = sub_1AAE00(v7, 0, 0);
  sub_1B89BC(v8, a3, a4, v17);
  sub_EB00(v17, &v16, &qword_407CD8);
  v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_407CE0));
  v10 = sub_305C58();
  v11 = v10;
  v12 = a2;
  if (!a2)
  {
    v12 = v10;
  }

  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  v14 = a2;

  sub_EB68(v17, &qword_407CD8);
  swift_unknownObjectWeakAssign();

  return v11;
}

void *sub_1B9884(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407CF8);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  type metadata accessor for PodcastsUIKitSwiftUIBridge();
  swift_allocObject();

  v10 = sub_1AAE00(v9, 0, 0);
  sub_1B8630(v10, v8);
  sub_EB00(v8, v5, &qword_407CF8);
  v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_407D00));
  v12 = sub_305C58();
  v13 = v12;
  v14 = a2;
  if (!a2)
  {
    v14 = v12;
  }

  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = a2;

  sub_EB68(v8, &qword_407CF8);
  swift_unknownObjectWeakAssign();

  return v13;
}

void *sub_1B9A24(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407D30);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  type metadata accessor for PodcastsUIKitSwiftUIBridge();
  swift_allocObject();

  v10 = sub_1AAE00(v9, 0, 0);
  sub_1B82A4(v10, v8);
  sub_EB00(v8, v5, &qword_407D30);
  v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_407D38));
  v12 = sub_305C58();
  v13 = v12;
  v14 = a2;
  if (!a2)
  {
    v14 = v12;
  }

  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = a2;

  sub_EB68(v8, &qword_407D30);
  swift_unknownObjectWeakAssign();

  return v13;
}

void *sub_1B9BC4(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407C68);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  type metadata accessor for PodcastsUIKitSwiftUIBridge();
  swift_allocObject();

  v10 = sub_1AAE00(v9, 0, 0);
  sub_1B93BC(v10, v8);
  sub_EB00(v8, v5, &qword_407C68);
  v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_407C70));
  v12 = sub_305C58();
  v13 = v12;
  v14 = a2;
  if (!a2)
  {
    v14 = v12;
  }

  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = a2;

  sub_EB68(v8, &qword_407C68);
  swift_unknownObjectWeakAssign();

  return v13;
}

uint64_t sub_1B9DC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v3 = type metadata accessor for EpisodePaletteHeaderView();
  v44 = *(v3 - 8);
  v43 = *(v44 + 64);
  __chkstk_darwin(v3 - 8);
  v42 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_305BA8();
  v36 = *(v41 - 8);
  __chkstk_darwin(v41);
  v39 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_306008();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407E08);
  __chkstk_darwin(v32);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407E10);
  v12 = *(v11 - 8);
  v37 = v11;
  v38 = v12;
  __chkstk_darwin(v11);
  v14 = &v32 - v13;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407E18);
  __chkstk_darwin(v40);
  v33 = &v32 - v15;
  *v10 = sub_305AA8();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407E20);
  sub_1BA470(v2, &v10[*(v16 + 44)]);
  sub_305FE8();
  v17 = sub_EC8C(&qword_407E28, &qword_407E08);
  sub_306738();
  (*(v6 + 8))(v8, v34);
  sub_EB68(v10, &qword_407E08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC9E8);
  v18 = v36;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_315420;
  sub_305B88();
  sub_305B98();
  v46 = v19;
  sub_1BC7A8(&qword_3FC9F0, &type metadata accessor for AccessibilityTraits);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC9F8);
  sub_EC8C(&qword_3FCA00, &qword_3FC9F8);
  v20 = v39;
  v21 = v41;
  sub_30D488();
  v46 = v32;
  v47 = v17;
  swift_getOpaqueTypeConformance2();
  v22 = v33;
  v23 = v37;
  sub_306758();
  (*(v18 + 8))(v20, v21);
  (*(v38 + 8))(v14, v23);
  v24 = v42;
  sub_1BBE40(v35, v42, type metadata accessor for EpisodePaletteHeaderView);
  v25 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v26 = swift_allocObject();
  sub_1BC338(v24, v26 + v25);
  sub_1BC3FC();
  v27 = v45;
  sub_306588();

  sub_EB68(v22, &qword_407E18);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_304E18();

  v28 = v47;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_304E18();

  v29 = v48;
  LOBYTE(v23) = sub_3060C8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407E38);
  v31 = v27 + *(result + 36);
  *v31 = v23;
  *(v31 + 8) = 0x401C000000000000;
  *(v31 + 16) = v28;
  *(v31 + 24) = 0x4024000000000000;
  *(v31 + 32) = v29;
  *(v31 + 40) = 0;
  return result;
}

uint64_t sub_1BA470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401DC8);
  __chkstk_darwin(v3 - 8);
  v52 = &v51 - v4;
  v59 = sub_3055F8();
  __chkstk_darwin(v59);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v7 - 8);
  v9 = &v51 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v10 - 8);
  v12 = &v51 - v11;
  v13 = sub_30B198();
  v53 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402B98);
  v54 = *(v57 - 8);
  __chkstk_darwin(v57);
  v17 = &v51 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407E40);
  __chkstk_darwin(v18 - 8);
  v58 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v56 = &v51 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407E48);
  __chkstk_darwin(v22 - 8);
  v55 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v51 - v25;
  *v26 = sub_305BE8();
  *(v26 + 1) = 0x4000000000000000;
  v26[16] = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407E50);
  sub_1BABEC(a1, &v26[*(v27 + 44)]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_304E18();

  if (v61)
  {
    sub_307DA8();
  }

  else
  {
    v28 = sub_3031C8();
    (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
  }

  v29 = sub_303DF8();
  (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_306C38();
  sub_30B178();
  v30 = v59;
  v31 = *(v59 + 20);
  v32 = enum case for RoundedCornerStyle.continuous(_:);
  v33 = sub_305B68();
  (*(*(v33 - 8) + 104))(&v6[v31], v32, v33);
  __asm { FMOV            V0.2D, #4.0 }

  *v6 = _Q0;
  v39 = sub_307F38();
  v40 = v52;
  (*(*(v39 - 8) + 56))(v52, 1, 1, v39);
  v41 = sub_1BC7A8(&qword_401F00, &type metadata accessor for Artwork);
  v42 = sub_1BC7A8(&qword_401E78, &type metadata accessor for RoundedRectangle);
  sub_306458();
  sub_EB68(v40, &qword_401DC8);
  sub_1BC538(v6, &type metadata accessor for RoundedRectangle);
  (*(v53 + 8))(v15, v13);
  *&v61 = v13;
  *(&v61 + 1) = v30;
  *&v62 = v41;
  *(&v62 + 1) = v42;
  swift_getOpaqueTypeConformance2();
  v44 = v56;
  v43 = v57;
  sub_3066F8();
  (*(v54 + 8))(v17, v43);
  v45 = v55;
  sub_EB00(v26, v55, &qword_407E48);
  v46 = v58;
  sub_1BC598(v44, v58);
  v47 = v60;
  sub_EB00(v45, v60, &qword_407E48);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407E58);
  v49 = v47 + *(v48 + 48);
  *v49 = 0x4020000000000000;
  *(v49 + 8) = 0;
  sub_1BC598(v46, v47 + *(v48 + 64));
  sub_EB68(v44, &qword_407E40);
  sub_EB68(v26, &qword_407E48);
  sub_EB68(v46, &qword_407E40);
  return sub_EB68(v45, &qword_407E48);
}

uint64_t sub_1BABEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v97 = a2;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407E60);
  __chkstk_darwin(v95);
  v96 = (&v80 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF2B8);
  __chkstk_darwin(v4 - 8);
  v88 = &v80 - v5;
  v6 = sub_3054E8();
  v85 = *(v6 - 8);
  v86 = v6;
  __chkstk_darwin(v6);
  v84 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v83 = &v80 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEC50);
  __chkstk_darwin(v10 - 8);
  v87 = &v80 - v11;
  v82 = sub_305A08();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407E68);
  __chkstk_darwin(v92);
  v14 = &v80 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407E70);
  __chkstk_darwin(v15 - 8);
  v94 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v93 = &v80 - v18;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_304E18();

  if (!v98 || (v19 = sub_307D88(), v21 = v20, , !v21))
  {
    v19 = 9732322;

    v21 = 0xA300000000000000;
  }

  v98 = v19;
  v99 = v21;
  sub_E504();
  v22 = sub_3063C8();
  v24 = v23;
  v26 = v25;
  sub_306168();
  sub_3061A8();
  sub_306218();

  v27 = sub_306388();
  v90 = v28;
  v91 = v27;
  v89 = v29;
  v31 = v30;

  sub_EBC8(v22, v24, v26 & 1);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_304E18();

  if (v98)
  {
    v32 = *(a1 + 8);

    if ((v32 & 1) == 0)
    {
      sub_30C7A8();
      v33 = sub_306088();
      sub_304108();

      v34 = v80;
      sub_3059F8();
      swift_getAtKeyPath();

      (*(v81 + 8))(v34, v82);
    }

    type metadata accessor for EpisodePaletteHeaderView();

    v35 = v83;
    sub_33CF4(v83);
    v37 = v84;
    v36 = v85;
    v38 = v86;
    (*(v85 + 104))(v84, enum case for LayoutDirection.rightToLeft(_:), v86);
    sub_3054D8();
    v39 = *(v36 + 8);
    v39(v37, v38);
    v39(v35, v38);
    v40 = v87;
    sub_3033F8();
    v41 = enum case for EyebrowBuilder.ListContext.episodeHeaderSubtitle(_:);
    v42 = sub_3033A8();
    v43 = *(v42 - 8);
    (*(v43 + 104))(v40, v41, v42);
    (*(v43 + 56))(v40, 0, 1, v42);
    v44 = sub_306358();
    (*(*(v44 - 8) + 56))(v88, 1, 1, v44);
    sub_3091D8();
    sub_306238();
    sub_3061A8();
    v45 = sub_306218();

    KeyPath = swift_getKeyPath();
    v47 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4029D0) + 36)];
    *v47 = KeyPath;
    v47[1] = v45;
    v48 = sub_3068A8();
    v49 = swift_getKeyPath();
    v50 = &v14[*(v92 + 36)];
    *v50 = v49;
    v50[1] = v48;
    sub_EB00(v14, v96, &qword_407E68);
    swift_storeEnumTagMultiPayload();
    sub_1BC608();
    v51 = v93;
    sub_305D48();

    sub_EB68(v14, &qword_407E68);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_304E18();

    if (!v98 || (v52 = sub_3094D8(), v54 = v53, , !v54))
    {
      v52 = 9732322;

      v54 = 0xA300000000000000;
    }

    v98 = v52;
    v99 = v54;
    v55 = sub_3063C8();
    v57 = v56;
    v59 = v58;
    sub_306238();
    sub_3061A8();
    sub_306218();

    v60 = sub_306388();
    v62 = v61;
    v64 = v63;

    sub_EBC8(v55, v57, v59 & 1);

    sub_3068A8();
    v65 = sub_306338();
    v67 = v66;
    v69 = v68;
    v71 = v70;

    sub_EBC8(v60, v62, v64 & 1);

    v72 = v96;
    *v96 = v65;
    v72[1] = v67;
    *(v72 + 16) = v69 & 1;
    v72[3] = v71;
    swift_storeEnumTagMultiPayload();
    sub_1BC608();
    v51 = v93;
    sub_305D48();
  }

  v73 = v94;
  sub_EB00(v51, v94, &qword_407E70);
  v74 = v97;
  v76 = v90;
  v75 = v91;
  *v97 = v91;
  v74[1] = v76;
  v77 = v89 & 1;
  *(v74 + 16) = v89 & 1;
  v74[3] = v31;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407E88);
  sub_EB00(v73, v74 + *(v78 + 48), &qword_407E70);
  sub_EBD8(v75, v76, v77);

  sub_EB68(v51, &qword_407E70);
  sub_EB68(v73, &qword_407E70);
  sub_EBC8(v75, v76, v77);
}

uint64_t sub_1BB618(uint64_t *a1)
{
  v2 = sub_302558();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_305A08();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_304E18();

  if (!v22[0])
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    return sub_EB68(&v19, &unk_3FBB40);
  }

  sub_307D28();

  if (!*(&v20 + 1))
  {
    return sub_EB68(&v19, &unk_3FBB40);
  }

  sub_12658(&v19, v22);
  v10 = *a1;
  v11 = *(a1 + 8);

  if ((v11 & 1) == 0)
  {
    sub_30C7A8();
    v12 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F60);
  sub_30B8E8();

  v13 = *(&v19 + 1);
  (*(v3 + 104))(v5, enum case for ActionMetricsBehavior.notProcessed(_:), v2);
  if (v11)
  {
    *&v19 = v10;
  }

  else
  {

    sub_30C7A8();
    v15 = sub_306088();
    v18[1] = v13;
    v16 = v7;
    v17 = v15;
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v16 + 8))(v9, v6);
  }

  swift_getObjectType();
  sub_307C38();
  swift_unknownObjectRelease();

  (*(v3 + 8))(v5, v2);
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

id sub_1BB9D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for EpisodePaletteHeaderView();
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  _s9ViewModelCMa(0);
  sub_1BC7A8(&qword_407C60, _s9ViewModelCMa);

  *(v11 + 2) = sub_3053C8();
  *(v11 + 3) = v12;
  v13 = *(v9 + 32);
  *&v11[v13] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC568);
  swift_storeEnumTagMultiPayload();
  v14 = a3;
  v15 = sub_1B9BC4(a2, a3);

  sub_1BC538(v11, type metadata accessor for EpisodePaletteHeaderView);
  result = [v15 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v17 = result;
  v18 = [objc_allocWithZone(_UIScrollPocketInteraction) initWithStyle:0];
  [v17 addInteraction:v18];

  result = [v15 view];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v19 = result;
  v20 = [objc_opt_self() clearColor];
  [v19 setBackgroundColor:v20];

  result = [v15 view];
  if (result)
  {
    v21 = result;
    v24.receiver = v4;
    v24.super_class = ObjectType;
    v22 = objc_msgSendSuper2(&v24, "initWithContentView:", result);

    v23 = v22;
    [v23 setPreferredHeight:57.0];
    [v23 setMinimumHeight:57.0];

    return v23;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for EpisodePaletteHeaderView()
{
  result = qword_407DC0;
  if (!qword_407DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BBD7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3058F8();
  *a1 = result;
  return result;
}

uint64_t sub_1BBE40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BBEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402790);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BBF8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402790);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1BC03C()
{
  sub_1BC1A4(319, &qword_3FB778, &type metadata accessor for BaseObjectGraph);
  if (v0 <= 0x3F)
  {
    sub_1BC110();
    if (v1 <= 0x3F)
    {
      sub_1BC1A4(319, &unk_402808, &type metadata accessor for LayoutDirection);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BC110()
{
  if (!qword_407DD0)
  {
    _s9ViewModelCMa(255);
    sub_1BC7A8(&qword_407C60, _s9ViewModelCMa);
    v0 = sub_3053D8();
    if (!v1)
    {
      atomic_store(v0, &qword_407DD0);
    }
  }
}

void sub_1BC1A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3050B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BC214()
{
  v1 = (type metadata accessor for EpisodePaletteHeaderView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC568);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_3054E8();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodePaletteHeaderView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC39C()
{
  v1 = *(type metadata accessor for EpisodePaletteHeaderView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1BB618(v2);
}

unint64_t sub_1BC3FC()
{
  result = qword_407E30;
  if (!qword_407E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407E18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407E08);
    sub_EC8C(&qword_407E28, &qword_407E08);
    swift_getOpaqueTypeConformance2();
    sub_1BC7A8(&qword_3FC7C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_407E30);
  }

  return result;
}

uint64_t sub_1BC538(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BC598(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407E40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BC608()
{
  result = qword_407E78;
  if (!qword_407E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407E68);
    sub_1BC6C0();
    sub_EC8C(&qword_3FC788, &qword_3FC790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_407E78);
  }

  return result;
}

unint64_t sub_1BC6C0()
{
  result = qword_407E80;
  if (!qword_407E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4029D0);
    sub_1BC7A8(&qword_403C68, &type metadata accessor for EpisodeEyebrowView);
    sub_EC8C(&qword_3FC778, &qword_3FC780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_407E80);
  }

  return result;
}

uint64_t sub_1BC7A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BC804()
{
  result = qword_407E90;
  if (!qword_407E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407E38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407E18);
    sub_1BC3FC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_407E90);
  }

  return result;
}

id sub_1BC8D0()
{
  v1 = sub_303FD8();
  v3 = __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___timestampView;
  v7 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___timestampView);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___timestampView);
  }

  else
  {
    (*(v2 + 104))(v5, enum case for TranscriptTimestampView.Constants.ViewType.episodeDetails(_:), v3);
    v9 = v0;
    sub_1BC9F4();
    v10 = objc_allocWithZone(sub_303FE8());
    v11 = sub_303FB8();
    v12 = *(v0 + v6);
    *(v9 + v6) = v11;
    v8 = v11;

    v7 = 0;
  }

  v13 = v7;
  return v8;
}

id sub_1BC9F4()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView;
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView];
  }

  else
  {
    v4 = sub_1BCA58(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BCA58(void *a1)
{
  v2 = objc_allocWithZone(sub_303F88());
  v3 = a1;
  v4 = sub_303F78();
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = v4;
  [v5 setDelegate:v3];
  [v5 setTextDragDelegate:v3];
  v6 = [v5 layoutManager];

  [v6 setAllowsNonContiguousLayout:0];
  v7 = sub_1BCB44();
  [v5 addGestureRecognizer:v7];

  return v5;
}

id sub_1BCB44()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textViewTapGesture;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textViewTapGesture);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textViewTapGesture);
  }

  else
  {
    v4 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"highlightParagraph:"];
    [v4 setDelegate:v0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BCBDC()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___footerText;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___footerText);
  v3 = v2;
  if (v2 == &dword_0 + 1)
  {
    v3 = sub_1BCC4C(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_1C8C24(v4);
  }

  sub_1C8C34(v2);
  return v3;
}

id sub_1BCC4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408E60);
  __chkstk_darwin(v2 - 8);
  v4 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v36 - v6;
  sub_EB00(*(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_viewModel) + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_transcriptSource, v36 - v6, &qword_408E60);
  v8 = sub_303468();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    goto LABEL_7;
  }

  sub_EB00(v7, v4, &qword_408E60);
  if ((*(v9 + 88))(v4, v8) != enum case for MetadataSource.provider(_:))
  {
    (*(v9 + 8))(v4, v8);
LABEL_7:
    v19 = [objc_opt_self() mainBundle];
    v35._countAndFlagsBits = 0xE000000000000000;
    v38._object = 0x800000000033F7B0;
    v38._countAndFlagsBits = 0xD000000000000017;
    v41.value._countAndFlagsBits = 0;
    v41.value._object = 0;
    v20.super.isa = v19;
    v43._countAndFlagsBits = 0;
    v43._object = 0xE000000000000000;
    v16 = sub_301AB8(v38, v41, v20, v43, v35);
    v18 = v21;

    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_304E18();

  if (!v36[0] || (v10 = sub_309528(), v12 = v11, , !v12))
  {
    sub_EB68(v7, &qword_408E60);
    return 0;
  }

  v13 = [objc_opt_self() mainBundle];
  v35._countAndFlagsBits = 0xE000000000000000;
  v37._countAndFlagsBits = 0xD00000000000001ALL;
  v37._object = 0x800000000033F7D0;
  v40.value._countAndFlagsBits = 0;
  v40.value._object = 0;
  v14.super.isa = v13;
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  sub_301AB8(v37, v40, v14, v42, v35);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408110);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_315430;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_DC9AC();
  *(v15 + 32) = v10;
  *(v15 + 40) = v12;
  v16 = sub_30C0A8();
  v18 = v17;

LABEL_8:
  sub_EB68(v7, &qword_408E60);
  v22 = sub_124C4(0, &qword_408100);
  v23 = sub_30CD58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_315420;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 40) = v23;
  *(inited + 64) = v22;
  *(inited + 72) = NSForegroundColorAttributeName;
  v25 = objc_opt_self();
  v26 = NSFontAttributeName;
  v27 = v23;
  v28 = NSForegroundColorAttributeName;
  v29 = [v25 secondaryLabelColor];
  *(inited + 104) = sub_124C4(0, &qword_3FFD48);
  *(inited + 80) = v29;
  sub_2D6CB0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FFD50);
  swift_arrayDestroy();
  v36[0] = 10;
  v36[1] = 0xE100000000000000;
  v39._countAndFlagsBits = v16;
  v39._object = v18;
  sub_30C238(v39);

  v30 = objc_allocWithZone(NSMutableAttributedString);
  v31 = sub_30C098();

  type metadata accessor for Key(0);
  sub_1C8AD8(&qword_3FB410, 255, type metadata accessor for Key);
  isa = sub_30BF88().super.isa;

  v33 = [v30 initWithString:v31 attributes:isa];

  return v33;
}

id sub_1BD200(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___timestampView] = 0;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_subscriptions] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_lastSelectionStart] = 0;
  v6 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_manuallySelectedRange];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView] = 0;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_isSearchingObservation] = 0;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___footerText] = 1;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textViewTapGesture] = 0;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_highlightedParagraphView] = 0;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___representedFlowDestinations] = 0;
  v7 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_rebuildMenuBar];
  *v7 = UINavigationBar.overrideBackButtonStyle.setter;
  *(v7 + 1) = 0;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_objectGraph] = a1;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_viewModel] = a2;
  sub_302FA8();

  sub_30B8E8();
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_playbackController] = v15;
  sub_308EE8();
  swift_allocObject();

  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_metricsController] = sub_308ED8();
  v14.receiver = v2;
  v14.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", 0, 0);
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 defaultCenter];
  [v11 addObserver:v10 selector:"keyboardWillShow:" name:UIKeyboardPrivateWillShowNotification object:0];

  v12 = [v9 defaultCenter];
  [v12 addObserver:v10 selector:"keyboardWillHide" name:UIKeyboardPrivateWillHideNotification object:0];

  return v10;
}

id sub_1BD494()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1BC8D0();
  [v2 removeFromSuperview];

  v3 = objc_opt_self();
  v4 = [v3 defaultCenter];
  [v4 removeObserver:v0 name:UIKeyboardPrivateWillShowNotification object:0];

  v5 = [v3 defaultCenter];
  [v5 removeObserver:v0 name:UIKeyboardPrivateWillHideNotification object:0];

  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "dealloc");
}

id sub_1BD6BC()
{
  v1 = v0;
  v33.receiver = v0;
  v33.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v33, "viewDidLoad");
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  v4 = sub_1BC9F4();
  [v3 addSubview:v4];

  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView;
  v6 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView];
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = v6;
  v8 = sub_301B88();

  v9 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_isSearchingObservation];
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_isSearchingObservation] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_31D480;
  v11 = [*&v1[v5] topAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = result;
  v13 = [result topAnchor];

  v14 = [v11 constraintEqualToAnchor:v13];
  *(v10 + 32) = v14;
  v15 = [*&v1[v5] leadingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = result;
  v17 = [result safeAreaLayoutGuide];

  v18 = [v17 leadingAnchor];
  v19 = [v15 constraintEqualToAnchor:v18];

  *(v10 + 40) = v19;
  v20 = [*&v1[v5] trailingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v21 = result;
  v22 = [result safeAreaLayoutGuide];

  v23 = [v22 trailingAnchor];
  v24 = [v20 constraintEqualToAnchor:v23];

  *(v10 + 48) = v24;
  v25 = [*&v1[v5] bottomAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v26 = result;
  v27 = objc_opt_self();
  v28 = [v26 bottomAnchor];

  v29 = [v25 constraintEqualToAnchor:v28];
  *(v10 + 56) = v29;
  sub_124C4(0, &qword_403000);
  isa = sub_30C358().super.isa;

  [v27 activateConstraints:isa];

  result = [v1 view];
  if (result)
  {
    v31 = result;
    v32 = [objc_opt_self() systemBackgroundColor];
    [v31 setBackgroundColor:v32];

    return sub_1BE55C();
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_1BDB38()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408148);
    sub_301B58();
    if (v2 != 2)
    {
      sub_1BDBC0(v2 & 1);
    }
  }
}

void sub_1BDBC0(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4080B0);
  __chkstk_darwin(v4 - 8);
  v86 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v75 - v7;
  v9 = sub_302AB8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v75 - v14;
  __chkstk_darwin(v16);
  v18 = &v75 - v17;
  if (sub_303098())
  {
    if (a1)
    {
      v19 = OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_highlightedParagraphView;
      v20 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_highlightedParagraphView];
      if (v20)
      {
        [v20 removeFromSuperview];
        v21 = *&v2[v19];
      }

      else
      {
        v21 = 0;
      }

      *&v2[v19] = 0;
    }

    sub_12670(*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_viewModel] + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_episodeController, v87);
    __swift_project_boxed_opaque_existential_1Tm(v87, v87[3]);
    sub_30A918();
    __swift_destroy_boxed_opaque_existential_1(v87);
    sub_1C18B0(a1 & 1);
    return;
  }

  sub_3029D8();
  v22 = *(v10 + 16);
  v78 = v18;
  v22(v15, v18, v9);
  v79 = v22;
  v81 = sub_3029E8();
  v23 = *(v81 - 8);
  v80 = *(v23 + 56);
  v82 = v23 + 56;
  v80(v8, 1, 1, v81);
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v76 = v15;
  v22(v12, v15, v9);
  v77 = v8;
  sub_EB00(v8, v86, &unk_4080B0);
  v83 = type metadata accessor for GlyphButton();
  v25 = objc_allocWithZone(v83);
  v26 = &v25[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customTitle];
  *v26 = 0;
  v26[1] = 0;
  *&v25[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillMask] = 0;
  v84 = v10;
  v27 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_platterFillColor;
  sub_124C4(0, &qword_3FFD48);
  v28 = objc_opt_self();

  v29 = [v28 systemGray6Color];
  v75 = v2;
  v30 = v29;
  v31 = [v28 systemGray5Color];
  v85 = v9;
  v32 = v31;
  v33 = sub_30CFB8();

  *&v25[v27] = v33;
  v34 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyphView;
  *&v25[v34] = [objc_allocWithZone(UIImageView) init];
  v35 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillView;
  v36 = [objc_allocWithZone(UIView) init];
  [v36 setClipsToBounds:1];
  [v36 setUserInteractionEnabled:0];
  *&v25[v35] = v36;
  v37 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView;
  v38 = [objc_opt_self() effectWithStyle:16];
  v39 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v38];

  v40 = v39;
  [v40 setUserInteractionEnabled:0];
  v41 = v85;
  [v40 setClipsToBounds:1];

  *&v25[v37] = v40;
  *&v25[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_previousPlatterFillColor] = 0;
  *&v25[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay] = 0;
  v25[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlayHidesBackground] = 1;
  v42 = &v25[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeUpdateBlock];
  *v42 = 0;
  v42[1] = 0;
  v25[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeOutInProgress] = 0;
  v43 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color;
  v80(&v25[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color], 1, 1, v81);
  v79(&v25[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyph], v12, v41);
  swift_beginAccess();
  sub_A8088(v86, &v25[v43]);
  swift_endAccess();
  v25[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style] = 0;
  v25[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_active] = 0;
  v44 = *&v25[v34];
  v45 = &v25[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout];
  *(v45 + 1) = 0;
  *(v45 + 2) = 0;
  *v45 = v44;
  v45[24] = 0;
  v88.receiver = v25;
  v88.super_class = v83;
  v46 = v44;
  v47 = objc_msgSendSuper2(&v88, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_24DE30();
  if (v47[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 24])
  {
    __break(1u);
    return;
  }

  v48 = objc_opt_self();
  sub_124C4(0, &qword_403000);
  isa = sub_30C358().super.isa;
  [v48 activateConstraints:isa];

  sub_EB68(v86, &unk_4080B0);
  v50 = v84 + 8;
  v51 = v12;
  v52 = *(v84 + 8);
  v52(v51, v41);
  sub_124C4(0, &qword_408080);
  v53 = swift_allocObject();
  *(v53 + 16) = sub_1C8B60;
  *(v53 + 24) = v24;
  v54 = v47;

  v55 = v85;
  v56 = sub_30D0C8();
  [v54 addAction:v56 forControlEvents:64];

  sub_EB68(v77, &unk_4080B0);
  v52(v76, v55);

  v57 = [v75 navigationController];
  if (!v57)
  {
LABEL_13:
    v52(v78, v55);

    return;
  }

  v58 = v57;
  ObjectType = swift_getObjectType();
  v60 = swift_conformsToProtocol2();
  if (!v60)
  {

    goto LABEL_13;
  }

  v61 = v60;
  v84 = v50;
  v62 = *(v60 + 8);
  v63 = v58;
  v64 = v62(ObjectType, v61);
  v66 = v65;

  if (v64)
  {
    v86 = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v67 = v52;
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_31BF90;
    *(v68 + 32) = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v54];
    v69 = v68;
    v52 = v67;
    (*(v66 + 112))(v69, v86, v66);
    swift_unknownObjectRelease();
  }

  v70 = v63;
  v71 = v62(ObjectType, v61);
  v73 = v72;

  if (v71)
  {
    v74 = swift_getObjectType();
    (*(v73 + 40))(v74, v73, 1.0);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v52(v78, v85);
}

uint64_t sub_1BE55C()
{
  v18 = sub_30BA28();
  v1 = *(v18 - 8);
  __chkstk_darwin(v18);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v17 - v5;
  v20 = sub_308F18();
  v7 = *(v20 - 8);
  __chkstk_darwin(v20);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v10 - 8);
  v12 = &v17 - v11;
  v19 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_metricsController);
  v13 = *(*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_viewModel) + 32);
  sub_3034E8();
  *&v21 = v13;
  sub_1D770();
  sub_30D438();
  sub_308F08();
  sub_30BA18();
  sub_302718();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408128);
  sub_30B828();
  *(swift_allocObject() + 16) = xmmword_315420;
  sub_30B818();
  sub_30B808();
  sub_308EF8();
  v14 = v18;
  (*(v1 + 16))(v3, v6, v18);
  sub_30B838();
  v27 = v21;
  sub_EB68(&v27, &unk_408130);
  v26 = v22;
  sub_EB68(&v26, &qword_3FC878);
  v25 = v23;
  sub_EB68(&v25, &qword_408140);
  sub_1EBD0(v24);
  (*(v1 + 8))(v6, v14);
  (*(v7 + 8))(v9, v20);
  v15 = sub_30B858();
  (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  return sub_308E98();
}

void sub_1BE99C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F30);
  __chkstk_darwin(v5 - 8);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4080C0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4080C8);
  v30 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v28 - v14;
  v32.receiver = v2;
  v32.super_class = ObjectType;
  objc_msgSendSuper2(&v32, "viewIsAppearing:", a1 & 1, v13);
  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = sub_1BC9F4();

  if (!Strong || (Strong, Strong != v17))
  {
    v29 = v12;
    v18 = OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView;
    v19 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView];
    swift_unknownObjectWeakAssign();
    v20 = v19;
    sub_1CA808();

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4080D0);
    sub_304E08();
    swift_endAccess();
    sub_124C4(0, &qword_3FBF20);
    v21 = sub_30C8F8();
    v31 = v21;
    v22 = sub_30C8E8();
    (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
    sub_EC8C(&unk_4080E0, &qword_4080C0);
    sub_CF4A8();
    sub_304F28();
    sub_EB68(v7, &unk_408F30);

    (*(v9 + 8))(v11, v8);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = *&v2[v18];
    v25 = sub_1BCBDC();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = v24;
    v26[4] = v23;
    sub_EC8C(&unk_4080F0, &qword_4080C8);
    v27 = v29;
    sub_304F58();

    (*(v30 + 8))(v15, v27);
    swift_beginAccess();
    sub_304CE8();
    swift_endAccess();
  }
}

void sub_1BEE10(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(a1 + 8))
  {
    v5 = *a1;
    v6 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:*a1];
    v7 = v6;
    if (a2)
    {
      [v6 appendAttributedString:a2];
    }

    [a3 setAttributedText:v7];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = *(Strong + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_viewModel);
      v10 = Strong;

      v11 = *(v9 + 56);
      v12 = *(v9 + 64);
      v13 = *(v9 + 72);

      if ((v13 & 1) == 0)
      {
        swift_beginAccess();
        v14 = swift_unknownObjectWeakLoadStrong();
        if (v14)
        {
          v15 = v14;
          sub_1BF034(v11, v12, 0);
        }
      }
    }

    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16 && (v17 = *(v16 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_viewModel), v18 = v16, , v18, v19 = *(v17 + 80), LOBYTE(v18) = *(v17 + 88), , (v18 & 1) == 0))
    {
      swift_beginAccess();
      v20 = swift_unknownObjectWeakLoadStrong();
      if (v20)
      {
        v21 = v20;
        sub_1BF664(v19);
        sub_1C86D8(v5, 0);
      }

      else
      {
        sub_1C86D8(v5, 0);
      }
    }

    else
    {

      sub_1C86D8(v5, 0);
    }
  }

  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v23 = v22;
    [v22 setNeedsUpdateContentUnavailableConfiguration];
  }
}

void sub_1BF034(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v57) = a3;
  ObjectType = swift_getObjectType();
  v7 = sub_3041E8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v58 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v54 - v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_304E18();

  if (v60)
  {
    sub_1C86D8(aBlock, v60);
    return;
  }

  v55 = v8;
  v56 = v3;
  v54 = ObjectType;
  v13 = v7;
  sub_1C86D8(aBlock, 0);
  if (v57)
  {
    sub_304138();
    v14 = sub_3041D8();
    v15 = sub_30C7B8();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v55;
    v18 = v13;
    if (v16)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock = v20;
      *v19 = 136315138;
      v21 = sub_30D8A8();
      v23 = sub_191264(v21, v22, &aBlock);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_0, v14, v15, "[%s] reset highlight and scroll position.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
    }

    (*(v17 + 8))(v58, v18);
    v24 = v56;
    v25 = sub_1BC9F4();
    [v25 setSelectedRange:{0, 0}];

    [*(v24 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView) scrollToTopAnimated:1];
    return;
  }

  v65 = 0;
  v66 = 0;
  v67 = 1;
  v26 = v56;
  v27 = sub_1BC9F4();
  v28 = [v27 attributedText];

  if (!v28)
  {
    goto LABEL_18;
  }

  v58 = v7;
  v29 = a1;
  if (qword_3FAC28 != -1)
  {
    swift_once();
  }

  v30 = qword_4295A8;
  v57 = OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView;
  v31 = [*(v26 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView) attributedText];
  if (!v31)
  {
    goto LABEL_19;
  }

  v32 = v31;
  v33 = [v31 length];

  v34 = swift_allocObject();
  v34[2] = v29;
  v34[3] = a2;
  v34[4] = &v65;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1C8C0C;
  *(v35 + 24) = v34;
  v63 = sub_1C8CBC;
  v64 = v35;
  aBlock = _NSConcreteStackBlock;
  v60 = 1107296256;
  v61 = sub_1CA75C;
  v62 = &block_descriptor_87;
  v36 = _Block_copy(&aBlock);

  [v28 enumerateAttribute:v30 inRange:0 options:v33 usingBlock:{0, v36}];

  _Block_release(v36);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  if ((v67 & 1) == 0)
  {
    v38 = v65;
    v39 = v66;
    sub_304138();
    v40 = sub_3041D8();
    v41 = sub_30C7B8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v42 = 136315394;
      v43 = sub_30D8A8();
      v45 = sub_191264(v43, v44, &aBlock);

      *(v42 + 4) = v45;
      *(v42 + 12) = 2080;
      v46 = sub_30D2E8();
      v48 = sub_191264(v46, v47, &aBlock);

      *(v42 + 14) = v48;
      _os_log_impl(&dword_0, v40, v41, "[%s] selecting range: %s.", v42, 0x16u);
      swift_arrayDestroy();
    }

    (*(v55 + 8))(v12, v58);
    v49 = v38;
    v50 = v39;
    v51 = v56;
    v52 = v57;
    [*(v56 + v57) select:v56];
    v53 = v51 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_manuallySelectedRange;
    *v53 = v49;
    *(v53 + 8) = v50;
    *(v53 + 16) = 0;
    [*(v51 + v52) setSelectedRange:{v49, v50}];
  }
}

void sub_1BF664(double a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_highlightedParagraphView;
  v4 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_highlightedParagraphView);
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *(v1 + v3);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = 0;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_304E18();

  if (v25)
  {
    sub_1C86D8(v24, v25);
    return;
  }

  sub_1C86D8(v24, 0);
  v32 = 0;
  v33 = 0;
  v34 = 1;
  memset(v30, 0, sizeof(v30));
  v31 = 1;
  v6 = sub_1BC9F4();
  v7 = [v6 attributedText];

  if (!v7)
  {
    goto LABEL_16;
  }

  if (qword_3FAC28 != -1)
  {
    swift_once();
  }

  v8 = qword_4295A8;
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView;
  v10 = [*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView) attributedText];
  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = v10;
  v12 = [v10 length];

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = &v32;
  *(v13 + 32) = v30;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1C8C18;
  *(v14 + 24) = v13;
  v28 = sub_1C8CBC;
  v29 = v14;
  v24 = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_1CA75C;
  v27 = &block_descriptor_97;
  v15 = _Block_copy(&v24);

  [v7 enumerateAttribute:v8 inRange:0 options:v12 usingBlock:{0, v15}];

  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  if ((v34 & 1) == 0)
  {
    v17 = v32;
    v18 = v33;
    sub_1C3584(v32, v33, &v24);
    if ((v28 & 1) == 0)
    {
      v20 = *&v26;
      v19 = *&v27;
      v22 = v24;
      v21 = *&v25;
      v23 = *(v1 + v9);
      sub_1C788C(v23, 0, *&v22, v21, v20, v19);

      sub_1C2104(v17, v18, 0);
    }
  }
}

id sub_1BF9FC(char a1)
{
  v2 = v1;
  v17.receiver = v2;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "viewWillAppear:", a1 & 1);
  v4 = [v2 navigationController];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 navigationBar];

    if (v6)
    {
      v7 = v6;
      v8 = [v2 navigationItem];
      v9 = v7;
      [v8 _setManualScrollEdgeAppearanceEnabled:0];
      [v9 _setTitleOpacity:1.0];
      v10 = [v8 titleView];
      if (v10)
      {
        v11 = v10;
        type metadata accessor for UberNavigationTitleView();
        v12 = swift_dynamicCastClass();
        if (v12)
        {
          [v12 setHideStandardTitle:0];
        }
      }

      if (qword_3FAFB8 != -1)
      {
        swift_once();
      }

      [v9 setTintColor:qword_40DB80];
    }
  }

  sub_1BFC60();
  v13 = sub_1BC9F4();
  [v13 setAdjustsFontForContentSizeCategory:1];

  if (*(*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_viewModel] + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_menuBarProvider))
  {
    swift_getObjectType();
    sub_1C8AD8(&unk_4080A0, v14, type metadata accessor for EpisodeDetailTranscriptViewController);
    swift_unknownObjectRetain();
    v15 = v2;
    sub_3087B8();
    swift_unknownObjectRelease();
  }

  return [*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView] becomeFirstResponder];
}

void sub_1BFC60()
{
  v1 = v0;
  if (sub_303098())
  {
    v2 = [v0 navigationItem];
    v3 = sub_30C098();
    v4 = [objc_opt_self() systemImageNamed:v3];

    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = objc_allocWithZone(UIBarButtonItem);

    v7 = [v6 init];
    sub_124C4(0, &qword_408080);
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1C8B20;
    *(v8 + 24) = v5;
    v9 = v4;

    v10 = sub_30D0C8();
    [v7 setPrimaryAction:{v10, 0, 0, 0, sub_B4808, v8}];

    [v2 setRightBarButtonItem:v7];
  }

  v11 = sub_1BC9F4();
  v12 = [v11 findInteraction];

  if (v12)
  {
    v13 = [v12 isFindNavigatorVisible];
  }

  else
  {
    v13 = 0;
  }

  sub_1BDBC0(v13);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v14 = [v1 navigationItem];
    v15 = [objc_allocWithZone(UINavigationBarAppearance) init];
    [v14 setScrollEdgeAppearance:v15];
  }

  v16 = [v1 navigationItem];
  v17 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_viewModel];
  v18 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_objectGraph];
  objc_allocWithZone(type metadata accessor for TranscriptEpisodeNavigationBarPalette());

  v19 = v1;
  v20 = sub_1BB9D8(v17, v18, v19);
  [v16 _setBottomPalette:v20];

  v21 = [v19 navigationItem];
  [v21 setLargeTitleDisplayMode:2];

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v22 = [v19 navigationController];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 navigationBar];

      v25 = UINavigationBar.topNavigationItem.getter();
      if (v25)
      {
        [v25 setBackButtonDisplayMode:1];
      }
    }
  }
}

void sub_1C00C4(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v8.receiver = a1;
  v8.super_class = swift_getObjectType();
  v6 = *a4;
  v7 = v8.receiver;
  objc_msgSendSuper2(&v8, v6, a3);
  sub_308EB8();
}

void sub_1C01FC()
{
  v1 = v0;
  v51.receiver = v0;
  v51.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v51, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v52.origin.x = v5;
  v52.origin.y = v7;
  v52.size.width = v9;
  v52.size.height = v11;
  CGRectGetWidth(v52);
  sub_302BF8();
  v12 = [v1 view];
  if (!v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v53.origin.x = v15;
  v53.origin.y = v17;
  v53.size.width = v19;
  v53.size.height = v21;
  CGRectGetWidth(v53);
  sub_302C08();
  v22 = sub_1BC9F4();
  v23 = [v22 textContainer];

  [v23 lineFragmentPadding];
  v24 = [v1 traitCollection];
  LOBYTE(v23) = sub_30C968();

  if ((v23 & 1) == 0)
  {
    v25 = [v1 view];
    if (!v25)
    {
LABEL_14:
      __break(1u);
      return;
    }

    v26 = v25;
    v27 = [v25 readableContentGuide];

    [v27 layoutFrame];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v54.origin.x = v29;
    v54.origin.y = v31;
    v54.size.width = v33;
    v54.size.height = v35;
    CGRectGetWidth(v54);
  }

  v36 = OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView;
  [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView] bounds];
  CGRectGetWidth(v55);
  v37 = [*&v1[v36] textContainer];
  [v37 lineFragmentPadding];

  sub_30C6E8();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_304E28();
  v46 = *&v1[v36];
  v47 = [v1 view];
  if (!v47)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v48 = v47;
  [v47 effectiveUserInterfaceLayoutDirection];

  sub_30C6F8();
  [v46 setTextContainerInset:?];

  v49 = *&v1[v36];
  if (sub_302BB8())
  {
    v50 = 16.0;
  }

  else
  {
    v50 = 8.0;
  }

  [v49 setScrollIndicatorInsets:{0.0, 0.0, v50, 0.0}];
}

void sub_1C05F4(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v12[4] = a3;
    v12[5] = a4;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_914CC;
    v12[3] = &block_descriptor_10_0;
    a3 = _Block_copy(v12);
  }

  v13.receiver = v4;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "presentViewController:animated:completion:", a1, a2 & 1, a3);
  _Block_release(a3);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v10 = sub_1BC9F4();
    v11 = [v10 findInteraction];

    [v11 dismissFindNavigator];
  }
}

uint64_t sub_1C080C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408098);
  __chkstk_darwin(v1 - 8);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v17 - v5;
  __chkstk_darwin(v7);
  v9 = v17 - v8;
  v10 = sub_304A38();
  v11 = *(v10 - 8);
  v19 = *(v11 + 56);
  v19(v9, 1, 1, v10);
  v12 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_304E18();

  if (BYTE8(v20) == 2 && !v20)
  {
    sub_304A28();
LABEL_6:
    sub_EB68(v9, &qword_408098);
    v19(v6, 0, 1, v10);
    sub_1C8A20(v6, v9);
    goto LABEL_8;
  }

  sub_1C86D8(v20, SBYTE8(v20));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_304E18();

  v13 = v20;
  if (BYTE8(v20) == 1)
  {
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17[3] = *(v12 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_isNetworkReachable);
    swift_errorRetain();
    v14 = [v0 traitCollection];
    sub_30C968();

    sub_3049C8();
    sub_1C86D8(v13, 1);

    sub_1C86D8(v13, 1);
    goto LABEL_6;
  }

  sub_1C86D8(v20, SBYTE8(v20));
LABEL_8:
  sub_EB00(v9, v3, &qword_408098);
  if ((*(v11 + 48))(v3, 1, v10) == 1)
  {
    sub_EB68(v3, &qword_408098);
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
  }

  else
  {
    *(&v21 + 1) = v10;
    v22 = &protocol witness table for UIContentUnavailableConfiguration;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v20);
    (*(v11 + 32))(boxed_opaque_existential_0Tm, v3, v10);
  }

  sub_30C8A8();
  return sub_EB68(v9, &qword_408098);
}

uint64_t sub_1C0BD8()
{
  v0 = sub_3041E8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    sub_1C8E50();
  }

  sub_304138();
  v6 = sub_3041D8();
  v7 = sub_30C778();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "Retry button tapped - initiating retry", v8, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_1C0E44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408028);
  __chkstk_darwin(v1 - 8);
  v3 = v47 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  __chkstk_darwin(v4 - 8);
  v50 = v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40BAB0);
  __chkstk_darwin(v6 - 8);
  v51 = v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408030);
  __chkstk_darwin(v8 - 8);
  v10 = v47 - v9;
  v11 = _s9ViewModelC11EpisodeDataOMa(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v47 - v16;
  __chkstk_darwin(v18);
  v52 = v47 - v19;
  v20 = sub_1BC9F4();
  [v20 selectedRange];
  v22 = v21;

  if (v22 >= 1)
  {
    v23 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_viewModel);
    v24 = OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_episodeData;
    swift_beginAccess();
    sub_EB00(v23 + v24, v10, &qword_408030);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_EB68(v10, &qword_408030);
    }

    else
    {
      v25 = v52;
      sub_1C8528(v10, v52);
      sub_1C858C(v25, v17);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_408038) + 48);
        v27 = sub_307CF8();
        (*(*(v27 - 8) + 8))(&v17[v26], v27);
      }

      v28 = OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView;
      v29 = [*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView) attributedText];
      if (v29)
      {
        v30 = v29;
        v31 = [*(v0 + v28) selectedRange];
        v33 = [v30 attributedSubstringFromRange:{v31, v32}];

        v48 = [objc_opt_self() generalPasteboard];
        v49 = v33;
        v34 = [v33 string];
        v47[2] = sub_30C0D8();
        v47[3] = v35;

        v47[1] = sub_307D88();

        v47[0] = sub_309528();
        sub_309448();
        sub_1C858C(v52, v14);
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_408038) + 48);
          v37 = sub_307CF8();
          v38 = *(v37 - 8);
          (*(v38 + 32))(v3, &v14[v36], v37);
          (*(v38 + 56))(v3, 0, 1, v37);
        }

        else
        {
          sub_1C85F0(v14);
          v37 = sub_307CF8();
          (*(*(v37 - 8) + 56))(v3, 1, 1, v37);
        }

        sub_307CF8();
        v39 = *(v37 - 8);
        v40 = (*(v39 + 48))(v3, 1, v37);
        v42 = v49;
        v41 = v50;
        if (v40 == 1)
        {
          sub_EB68(v3, &qword_408028);
          v43 = sub_301CB8();
          (*(*(v43 - 8) + 56))(v41, 1, 1, v43);
        }

        else
        {
          sub_1C79C8(v49);
          sub_307CA8();
          (*(v39 + 8))(v3, v37);
        }

        v44 = v51;
        sub_303F98();

        sub_EB68(v41, &qword_3FB8E0);
        sub_EB68(v44, &unk_40BAB0);
        v45 = sub_30C098();

        v46 = v48;
        [v48 setString:v45];

        sub_1C85F0(v52);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1C15D0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v1 = Strong, v2 = sub_1BC9F4(), v1, v3 = [v2 findInteraction], v2, !v3) || (v4 = objc_msgSend(v3, "isFindNavigatorVisible"), v3, (v4 & 1) != 0))
  {
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5)
    {
      return;
    }

    v6 = v5;
    v7 = sub_1BC9F4();

    v8 = [v7 findInteraction];
    [v8 dismissFindNavigator];
    goto LABEL_6;
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    sub_1C1764();
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v13 = sub_1BC9F4();

    v8 = [v13 findInteraction];
    if (v8)
    {
      [v8 presentFindNavigatorShowingReplace:0];
LABEL_6:
    }
  }
}

uint64_t sub_1C1764()
{
  v1 = sub_30B7E8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_308D58();
  v6[1] = *(*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_viewModel) + 32);
  sub_1D770();
  sub_30D438();
  sub_308D28();

  sub_307E18();
  sub_308EC8();

  return (*(v2 + 8))(v4, v1);
}

void sub_1C18B0(char a1)
{
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    [v3 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v24.origin.x = v6;
    v24.origin.y = v8;
    v24.size.width = v10;
    v24.size.height = v12;
    CGRectGetWidth(v24);
    sub_302BF8();
    if (sub_302BB8())
    {
      v13 = [v1 navigationController];
      if (v13)
      {
        v22 = v13;
        if (a1)
        {
          top = UIEdgeInsetsZero.top;
          left = UIEdgeInsetsZero.left;
          bottom = UIEdgeInsetsZero.bottom;
          right = UIEdgeInsetsZero.right;
        }

        else
        {
          sub_30C708();
          v13 = v22;
        }

        [v13 setAdditionalSafeAreaInsets:{top, left, bottom, right}];
      }
    }

    else
    {
      if (a1)
      {
        sub_30C708();
      }

      else
      {
        v18 = UIEdgeInsetsZero.top;
        v19 = UIEdgeInsetsZero.left;
        v20 = UIEdgeInsetsZero.bottom;
        v21 = UIEdgeInsetsZero.right;
      }

      [v1 setAdditionalSafeAreaInsets:{v18, v19, v20, v21}];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1C1A3C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v1 = Strong, v2 = sub_1BC9F4(), v1, v3 = [v2 findInteraction], v2, !v3) || (v4 = objc_msgSend(v3, "isFindNavigatorVisible"), v3, (v4 & 1) == 0))
  {
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      sub_1C1764();
    }

    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      v9 = sub_1BC9F4();

      v10 = [v9 findInteraction];
      if (v10)
      {
        [v10 presentFindNavigatorShowingReplace:0];
      }
    }
  }
}

uint64_t sub_1C1B70(uint64_t a1)
{
  v2 = v1;
  v4 = sub_303CD8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v35 - v9;
  v11 = sub_308778();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11, v13);
  if ((*(v12 + 88))(v15, v11) != enum case for FlowDestination.episodeDetailTranscript(_:))
  {
    return (*(v12 + 8))(v15, v11);
  }

  (*(v12 + 96))(v15, v11);
  sub_308C78();
  v16 = COERCE_DOUBLE(sub_303CB8());
  v18 = v17;
  v20 = v19;
  v21 = *(v5 + 8);
  v21(v10, v4);
  v35[1] = v2;
  v22 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_viewModel);
  if (v20)
  {
    if (*(v22 + 72))
    {
    }
  }

  else if ((*(v22 + 72) & 1) == 0 && *(v22 + 56) == v16 && *(v22 + 64) == v18)
  {
  }

  sub_308C78();
  v25 = sub_303CB8();
  v27 = v26;
  v29 = v28;
  v21(v7, v4);
  *(v22 + 56) = v25;
  *(v22 + 64) = v27;
  *(v22 + 72) = v29 & 1;
  sub_308C78();
  v30 = sub_303CB8();
  v32 = v31;
  v34 = v33;
  v21(v7, v4);
  sub_1BF034(v30, v32, v34 & 1);
}

uint64_t sub_1C1E58()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___representedFlowDestinations;
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___representedFlowDestinations))
  {
    v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___representedFlowDestinations);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408000);
    v3 = *(sub_308778() - 8);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_315430;
    sub_1C9730((v2 + v4));
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1C1F60(void *a1)
{
  if (a1)
  {
    v3 = sub_1BC9F4();
    [a1 locationInView:v3];
    v5 = v4;
    v7 = v6;

    v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView;
    v9 = [*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView) characterRangeAtPoint:{v5, v7}];
    if (v9)
    {
      v10 = v9;
      v11 = *(v1 + v8);
      v12 = v10;
      v13 = [v11 beginningOfDocument];
      v14 = [v12 start];
      v15 = [v11 offsetFromPosition:v13 toPosition:v14];

      v16 = [v12 start];
      v17 = [v12 end];
      v18 = [v11 offsetFromPosition:v16 toPosition:v17];

      sub_1C2104(v15, v18, 1);
    }
  }
}

void sub_1C2104(uint64_t a1, uint64_t a2, int a3)
{
  v9 = v3;
  v170 = a3;
  v169 = a2;
  v158 = sub_302268();
  v157 = *(v158 - 8);
  __chkstk_darwin(v158);
  v165 = &v150 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_30B418();
  v164 = *(v166 - 8);
  __chkstk_darwin(v166);
  v163 = (&v150 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406BB0);
  __chkstk_darwin(v13 - 8);
  v161 = (&v150 - v14);
  v160 = sub_3022E8();
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v167 = &v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408060);
  __chkstk_darwin(v16 - 8);
  v162 = &v150 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v150 - v19;
  __chkstk_darwin(v21);
  v23 = &v150 - v22;
  __chkstk_darwin(v24);
  v26 = &v150 - v25;
  v173 = sub_304048();
  v171 = *(v173 - 8);
  __chkstk_darwin(v173);
  v28 = &v150 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v150 - v30;
  __chkstk_darwin(v32);
  v34 = &v150 - v33;
  __chkstk_darwin(v35);
  v37 = &v150 - v36;
  v38 = sub_1BC9F4();
  v174 = [v38 text];

  if (v174)
  {
    v156 = OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView;
    v172 = [*&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView] attributedText];
    if (v172)
    {
      v39 = OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_highlightedParagraphView;
      v40 = *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_highlightedParagraphView];
      if (v40)
      {
        [v40 removeFromSuperview];
        v41 = *&v9[v39];
      }

      else
      {
        v41 = 0;
      }

      v168 = v9;
      v152 = v39;
      *&v9[v39] = 0;

      v43 = [v174 paragraphRangeForRange:{a1, v169}];
      v45 = v44;
      v46 = swift_allocObject();
      *(v46 + 16) = v43;
      *(v46 + 24) = v45;
      v154 = v46;
      v153 = v45;
      v47 = v43;
      NSAttributedString.contentType(at:)(v43, v26);
      v48 = v171;
      v49 = *(v171 + 48);
      v50 = v173;
      v169 = v171 + 48;
      v155 = v49;
      if (v49(v26, 1, v173) == 1)
      {
        sub_EB68(v26, &unk_408060);
      }

      else
      {
        (*(v48 + 32))(v37, v26, v50);
        (*(v48 + 104))(v34, enum case for TranscriptSelectionContentType.link(_:), v50);
        v51 = v48;
        v52 = sub_304028();
        v53 = *(v51 + 8);
        v53(v34, v173);
        v53(v37, v173);
        v50 = v173;
        if (v52)
        {
LABEL_41:

LABEL_64:

          return;
        }
      }

      NSAttributedString.contentType(at:)(v47, v23);
      if (v155(v23, 1, v50) == 1)
      {
        sub_EB68(v23, &unk_408060);
        goto LABEL_25;
      }

      v54 = v171;
      (*(v171 + 32))(v31, v23, v50);
      (*(v54 + 104))(v34, enum case for TranscriptSelectionContentType.speaker(_:), v50);
      v55 = sub_304028();
      v56 = *(v54 + 8);
      v56(v34, v50);
      if ((v55 & 1) == 0)
      {
        v56(v31, v50);
LABEL_25:
        v23 = v153;
        if (v47 >= 1)
        {
          NSAttributedString.contentType(at:)(v47 - 1, v20);
          if (v155(v20, 1, v50) == 1)
          {
            sub_EB68(v20, &unk_408060);
          }

          else
          {
            v63 = v171;
            (*(v171 + 32))(v28, v20, v50);
            (*(v63 + 104))(v34, enum case for TranscriptSelectionContentType.speaker(_:), v50);
            v64 = sub_304028();
            v65 = v50;
            v66 = *(v63 + 8);
            v66(v34, v65);
            if (v64)
            {
              v67 = [v174 paragraphRangeForRange:{v47 - 1, 1}];
              v69 = v68;
              v66(v28, v65);
              v70 = &v23[v47];
              if (__OFADD__(v47, v23))
              {
LABEL_72:
                __break(1u);
                goto LABEL_73;
              }

              if (__OFADD__(v67, v69))
              {
LABEL_73:
                __break(1u);
                return;
              }

              if (v70 <= &v67[v69])
              {
                v70 = &v67[v69];
              }

              if (v47 >= v67)
              {
                v47 = v67;
              }

              v23 = &v70[-v47];
              v65 = v168;
              if (!__OFSUB__(v70, v47))
              {
LABEL_40:
                v71 = v170 ^ 1;
                sub_1C38D4(v47, v23, (v170 ^ 1) & 1, v179);
                if (v180)
                {
                  goto LABEL_41;
                }

                v4 = *v179;
                v5 = *&v179[1];
                v6 = *&v179[2];
                v7 = *&v179[3];
                v72 = *(v65 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_objectGraph);
                swift_getKeyPath();
                swift_getKeyPath();

                sub_304E18();

                v73 = aBlock[0];
                v74 = objc_allocWithZone(type metadata accessor for HighlightedParagraphView());
                v28 = sub_1D2C00(v72, v73, v71 & 1, v4, v5, v6, v7);
                v75 = v152;
                v76 = *&v152[v65];
                v77 = v28;
                if (v76)
                {
                  [v76 removeFromSuperview];
                  v78 = *&v75[v65];
                }

                else
                {
                  v78 = 0;
                }

                *&v75[v65] = v28;

                v79 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v80 = &v28[OBJC_IVAR____TtC23ShelfKitCollectionViews24HighlightedParagraphView_onDismissMenu];
                v81 = *&v28[OBJC_IVAR____TtC23ShelfKitCollectionViews24HighlightedParagraphView_onDismissMenu];
                *v80 = sub_1C8720;
                v80[1] = v79;

                sub_1EBD0(v81);
                v153 = OBJC_IVAR____TtC23ShelfKitCollectionViews24HighlightedParagraphView_highlightButton;
                v82 = *&v28[OBJC_IVAR____TtC23ShelfKitCollectionViews24HighlightedParagraphView_highlightButton];
                type metadata accessor for HighlightedParagraphButton();
                v83 = swift_dynamicCastClass();
                if (v83)
                {
                  v84 = *v80;
                  v85 = v80[1];
                  v86 = (v83 + OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_300F106C73478CB5ADE35ED9D53492A526HighlightedParagraphButton_onDismissMenu);
                  v87 = *(v83 + OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_300F106C73478CB5ADE35ED9D53492A526HighlightedParagraphButton_onDismissMenu);
                  *v86 = v84;
                  v86[1] = v85;
                  v88 = v82;
                  sub_A0EF8(v84, v85);
                  sub_1EBD0(v87);
                }

                else
                {
                }

                v89 = v168;
                if (v170)
                {
LABEL_56:
                  v102 = *&v89[v156];
                  v103 = v161;
                  *v161 = v102;
                  v103[1] = v4;
                  v103[2] = v5;
                  v103[3] = v6;
                  v103[4] = v7;
                  v104 = enum case for PresentationSource.Position.view(_:);
                  v105 = v89;
                  v106 = sub_3022D8();
                  v107 = *(v106 - 8);
                  (*(v107 + 104))(v103, v104, v106);
                  (*(v107 + 56))(v103, 0, 1, v106);
                  v108 = v105;
                  v109 = v102;
                  v110 = v167;
                  v152 = v108;
                  sub_3022A8();
                  v111 = [v172 attributedSubstringFromRange:{v47, v23}];
                  v112 = v162;
                  NSAttributedString.contentType(at:)(0, v162);
                  v113 = v173;
                  v114 = v155(v112, 1, v173);
                  v151 = v28;
                  if (v114 == 1)
                  {
                    sub_EB68(v112, &unk_408060);
                    v115 = v158;
                    v116 = v157;
                  }

                  else
                  {
                    v117 = sub_304038();
                    (*(v171 + 8))(v112, v113);
                    v115 = v158;
                    v116 = v157;
                    if (v117)
                    {
                      v118 = [v111 string];
                      v119 = sub_30C0D8();
                      v121 = v120;

                      v122 = v163;
                      *v163 = v119;
                      *(v122 + 8) = v121;
                      v123 = &enum case for KCURadar.ReportContent.chapter(_:);
LABEL_61:
                      v128 = v164;
                      v129 = v166;
                      (*(v164 + 104))(v122, *v123, v166);
                      v130 = *&v168[v156];
                      v131 = v165;
                      sub_30CE78();

                      v132 = v110;
                      v133 = sub_1CA0A8(v111, v122, v131, v110);
                      v173 = v134;
                      (*(v116 + 8))(v131, v115);
                      (*(v128 + 8))(v122, v129);
                      sub_124C4(0, &qword_408080);
                      v135 = [objc_opt_self() mainBundle];
                      v148._countAndFlagsBits = 0xE000000000000000;
                      v183._countAndFlagsBits = 0x545F5443454C4553;
                      v183._object = 0xEB00000000545845;
                      v185.value._countAndFlagsBits = 0;
                      v185.value._object = 0;
                      v136.super.isa = v135;
                      v187._countAndFlagsBits = 0;
                      v187._object = 0xE000000000000000;
                      sub_301AB8(v183, v185, v136, v187, v148);

                      v137 = sub_30C098();
                      v138 = [objc_opt_self() systemImageNamed:v137];

                      v139 = swift_allocObject();
                      swift_unknownObjectWeakInit();
                      v140 = swift_allocObject();
                      *(v140 + 16) = v139;
                      *(v140 + 24) = v154;

                      v141 = sub_30D0C8();
                      sub_124C4(0, &qword_408070);
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
                      inited = swift_initStackObject();
                      *(inited + 16) = xmmword_31BF90;
                      *(inited + 32) = v141;
                      v178 = v133;
                      v143 = v141;
                      sub_14A63C(inited);
                      sub_14A63C(v173);
                      v184._countAndFlagsBits = 0;
                      v184._object = 0xE000000000000000;
                      v186.value._countAndFlagsBits = 0;
                      v186.value._object = 0;
                      v182.value.super.isa = 0;
                      v182.is_nil = 0;
                      v144.value = 0;
                      isa = sub_30CE58(v184, v186, v182, v144, 0xFFFFFFFFFFFFFFFFLL, v178, v149).super.super.isa;
                      v146 = v151;
                      v147 = v153;
                      [*&v151[v153] setMenu:isa];

                      [*&v168[v156] addSubview:v146];
                      if (v170)
                      {
                        [*&v146[v147] performPrimaryAction];

                        (*(v159 + 8))(v132, v160);

                        return;
                      }

                      (*(v159 + 8))(v132, v160);

                      goto LABEL_64;
                    }
                  }

                  v124 = [v111 string];
                  v125 = sub_30C0D8();
                  v127 = v126;

                  v122 = v163;
                  *v163 = v125;
                  *(v122 + 8) = v127;
                  v123 = &enum case for KCURadar.ReportContent.transcription(_:);
                  goto LABEL_61;
                }

                v90 = [*&v168[v156] attributedText];
                v8 = 0;
                if (!v90)
                {
LABEL_55:
                  v96 = swift_allocObject();
                  swift_weakInit();
                  v97 = *&v168[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_playbackController];
                  v98 = swift_allocObject();
                  *(v98 + 2) = v96;
                  *(v98 + 3) = v97;
                  *(v98 + 4) = v8;
                  *(v98 + 5) = v168;
                  v99 = &v28[OBJC_IVAR____TtC23ShelfKitCollectionViews24HighlightedParagraphView_playAction];
                  v100 = *&v28[OBJC_IVAR____TtC23ShelfKitCollectionViews24HighlightedParagraphView_playAction];
                  *v99 = sub_1C87A8;
                  v99[1] = v98;
                  v89 = v168;

                  v101 = v89;
                  sub_1EBD0(v100);

                  goto LABEL_56;
                }

                v31 = v90;
                v176[0] = 0;
                v176[1] = 0;
                v177 = 1;
                if (qword_3FAC28 == -1)
                {
                  goto LABEL_51;
                }

                goto LABEL_70;
              }

              __break(1u);
            }

            v66(v28, v65);
          }
        }

LABEL_39:
        v65 = v168;
        goto LABEL_40;
      }

      v57 = v47 + v153;
      if (__OFADD__(v47, v153))
      {
        __break(1u);
      }

      else if (!__OFADD__(v57, 1))
      {
        v58 = [v174 paragraphRangeForRange:{v57 + 1, 1}];
        v60 = v59;
        v56(v31, v173);
        v61 = &v58[v60];
        if (!__OFADD__(v58, v60))
        {
          if (v57 > v61)
          {
            v61 = v57;
          }

          if (v47 >= v58)
          {
            v47 = v58;
          }

          v23 = &v61[-v47];
          if (!__OFSUB__(v61, v47))
          {
            v62 = v154;
            *(v154 + 16) = v58;
            *(v62 + 24) = v60;
            goto LABEL_39;
          }

LABEL_69:
          __break(1u);
LABEL_70:
          swift_once();
LABEL_51:
          v91 = qword_4295A8;
          v92 = swift_allocObject();
          *(v92 + 16) = v176;
          v93 = swift_allocObject();
          *(v93 + 16) = sub_1C8810;
          *(v93 + 24) = v92;
          aBlock[4] = sub_1C8818;
          aBlock[5] = v93;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1CA75C;
          aBlock[3] = &block_descriptor_48;
          v94 = _Block_copy(aBlock);

          [v31 enumerateAttribute:v91 inRange:v47 options:v23 usingBlock:{0, v94}];

          _Block_release(v94);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            if ((v177 & 1) == 0)
            {
              v8 = v176[0];
            }

            goto LABEL_55;
          }

          __break(1u);
          goto LABEL_72;
        }

LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      __break(1u);
      goto LABEL_68;
    }

    v42 = v174;
  }
}

void sub_1C3584(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_1BC9F4();
  v9 = [v8 text];

  v10 = 0uLL;
  if (!v9)
  {
    v41 = 1;
    v42 = 0uLL;
LABEL_25:
    *a3 = v10;
    *(a3 + 16) = v42;
    *(a3 + 32) = v41;
    return;
  }

  v11 = [v9 paragraphRangeForRange:{a1, a2, 0.0}];
  v13 = v12;
  v14 = OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView;
  v15 = *(v4 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView);
  v16 = sub_1B0CD0(v11, v13);

  if (!v16)
  {
LABEL_24:

    v41 = 1;
    v42 = 0uLL;
    v10 = 0uLL;
    goto LABEL_25;
  }

  v17 = *(v4 + v14);
  v18 = v16;
  v19 = [v17 selectionRectsForRange:v18];
  sub_124C4(0, &qword_408078);
  v20 = sub_30C368();

  if (v20 >> 62)
  {
    goto LABEL_22;
  }

  v21 = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8));
  if (!v21)
  {
LABEL_23:

    goto LABEL_24;
  }

  while (1)
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      v23 = sub_30D578();
      v22 = v20 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_8;
    }

    v22 = v20 & 0xFFFFFFFFFFFFFF8;
    if (!*(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
    {
      break;
    }

    v23 = *(v20 + 32);
LABEL_8:
    [v23 rect];
    x = v24;
    y = v26;
    width = v28;
    height = v30;

    v32 = 0;
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v33 = sub_30D578();
      }

      else
      {
        if (v32 >= *(v22 + 16))
        {
          goto LABEL_21;
        }

        v33 = *(v20 + 8 * v32 + 32);
      }

      v34 = v33;
      v35 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      [v33 rect];
      if (CGRectGetWidth(v47) > 1.0)
      {
        [v34 rect];
        v54.origin.x = v36;
        v54.origin.y = v37;
        v54.size.width = v38;
        v54.size.height = v39;
        v48.origin.x = x;
        v48.origin.y = y;
        v48.size.width = width;
        v48.size.height = height;
        v49 = CGRectUnion(v48, v54);
        x = v49.origin.x;
        y = v49.origin.y;
        width = v49.size.width;
        height = v49.size.height;

        ++v32;
        if (v35 == v21)
        {
LABEL_18:

          v50.origin.x = x;
          v50.origin.y = y;
          v50.size.width = width;
          v50.size.height = height;
          v40 = CGRectGetWidth(v50) + 32.0;
          v51.origin.x = x;
          v51.origin.y = y;
          v51.size.width = width;
          v51.size.height = height;
          v52.size.height = CGRectGetHeight(v51);
          v52.origin.x = x;
          v52.origin.y = y;
          v52.size.width = v40;
          v53 = CGRectInset(v52, -8.0, -5.0);
          v44 = v53.origin.x;
          v45 = v53.origin.y;
          v43 = v53.size.width;
          v46 = v53.size.height;

          *&v42 = v43;
          *&v10 = v44;
          v41 = 0;
          *(&v10 + 1) = v45;
          *(&v42 + 1) = v46;
          goto LABEL_25;
        }
      }

      else
      {

        ++v32;
        if (v35 == v21)
        {
          goto LABEL_18;
        }
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v21 = sub_30D668();
    if (!v21)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
}

void sub_1C38D4(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  LOBYTE(v6) = a3;
  v10 = sub_1BC9F4();
  v11 = sub_1B0CD0(a1, a2);

  v12 = 0uLL;
  if (!v11)
  {
    v42 = 1;
    v45 = 0uLL;
LABEL_30:
    *a4 = v12;
    *(a4 + 16) = v45;
    *(a4 + 32) = v42;
    return;
  }

  v13 = *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView];
  v14 = v11;
  v15 = [v13 selectionRectsForRange:v14];
  sub_124C4(0, &qword_408078);
  v16 = sub_30C368();

  if (!(v16 >> 62))
  {
    v17 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
    if (v17)
    {
      goto LABEL_4;
    }

    goto LABEL_29;
  }

LABEL_28:
  v17 = sub_30D668();
  if (!v17)
  {
LABEL_29:

    v42 = 1;
    v45 = 0uLL;
    v12 = 0uLL;
    goto LABEL_30;
  }

LABEL_4:
  v46 = v6;
  if ((v16 & 0xC000000000000001) != 0)
  {
    v19 = sub_30D578();
    v18 = v16 & 0xFFFFFFFFFFFFFF8;
LABEL_7:
    [v19 rect];
    x = v20;
    y = v22;
    width = v24;
    height = v26;

    v28 = 0;
    do
    {
      while (1)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v29 = sub_30D578();
        }

        else
        {
          if (v28 >= *(v18 + 16))
          {
            goto LABEL_27;
          }

          v29 = *(v16 + 8 * v28 + 32);
        }

        v30 = v29;
        v6 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        [v29 rect];
        if (CGRectGetWidth(v47) > 1.0)
        {
          break;
        }

        ++v28;
        if (v6 == v17)
        {
          goto LABEL_17;
        }
      }

      [v30 rect];
      v53.origin.x = v31;
      v53.origin.y = v32;
      v53.size.width = v33;
      v53.size.height = v34;
      v48.origin.x = x;
      v48.origin.y = y;
      v48.size.width = width;
      v48.size.height = height;
      v49 = CGRectUnion(v48, v53);
      x = v49.origin.x;
      y = v49.origin.y;
      width = v49.size.width;
      height = v49.size.height;

      ++v28;
    }

    while (v6 != v17);
LABEL_17:
    v35 = [v5 view];
    if (!v35)
    {
      goto LABEL_33;
    }

    v36 = v35;

    if (v46)
    {
      v37 = 32.0;
    }

    else
    {
      v37 = 0.0;
    }

    v38 = [v36 effectiveUserInterfaceLayoutDirection];

    if (v38 == &dword_0 + 1)
    {
      v39 = v37;
    }

    else
    {
      v39 = 0.0;
    }

    v40 = x - v39;
    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    v41 = v37 + CGRectGetWidth(v50);
    v51.origin.x = x;
    v51.origin.y = y;
    v51.size.width = width;
    v51.size.height = height;
    v52.size.height = CGRectGetHeight(v51);
    v52.origin.x = v40;
    v52.origin.y = y;
    v52.size.width = v41;
    *&v12 = CGRectInset(v52, -8.0, -5.0);
    v42 = 0;
    *(&v12 + 1) = v43;
    *(&v45 + 1) = v44;
    goto LABEL_30;
  }

  v18 = v16 & 0xFFFFFFFFFFFFFF8;
  if (*(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
  {
    v19 = *(v16 + 32);
    goto LABEL_7;
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_1C3C1C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_highlightedParagraphView;
    v3 = *(Strong + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_highlightedParagraphView);
    if (v3)
    {
      [v3 removeFromSuperview];
      v4 = *&v1[v2];
    }

    else
    {
      v4 = 0;
    }

    *&v1[v2] = 0;
  }
}

uint64_t sub_1C3CA4(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v28 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD48);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408090);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - v11;
  v13 = sub_303488();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v26 - v18;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1C9B7C(v12);

    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      v26 = v9;
      v27 = *(v14 + 32);
      v27(v19, v12, v13);
      v20 = sub_30C468();
      (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
      (*(v14 + 16))(v16, v19, v13);
      sub_30C438();

      v28 = v28;

      v21 = sub_30C428();
      v22 = (*(v14 + 80) + 64) & ~*(v14 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = v21;
      *(v23 + 24) = &protocol witness table for MainActor;
      *(v23 + 32) = a2;
      *(v23 + 40) = a4;
      v24 = v27;
      *(v23 + 48) = v28;
      *(v23 + 56) = a1;
      v24(v23 + v22, v16, v13);
      sub_270768(0, 0, v26, &unk_32B2A8, v23);

      return (*(v14 + 8))(v19, v13);
    }
  }

  else
  {
    (*(v14 + 56))(v12, 1, 1, v13);
  }

  return sub_EB68(v12, &qword_408090);
}

uint64_t sub_1C4024(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 208) = a7;
  *(v8 + 216) = a8;
  *(v8 + 200) = a6;
  *(v8 + 192) = a1;
  *(v8 + 184) = a5;
  v9 = sub_3041E8();
  *(v8 + 224) = v9;
  *(v8 + 232) = *(v9 - 8);
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = sub_30C438();
  *(v8 + 256) = sub_30C428();
  v11 = sub_30C3F8();
  *(v8 + 264) = v11;
  *(v8 + 272) = v10;

  return _swift_task_switch(sub_1C4128, v11, v10);
}

uint64_t sub_1C4128()
{
  if (sub_302F98())
  {
    v1 = swift_task_alloc();
    v0[35] = v1;
    *v1 = v0;
    v1[1] = sub_1C4284;

    return PlaybackController.pause()();
  }

  else
  {
    sub_12670(*(v0[25] + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_viewModel) + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_alignmentCoordinator, (v0 + 2));
    v2 = v0[5];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v2);
    v4 = swift_task_alloc();
    v0[37] = v4;
    *v4 = v0;
    v4[1] = sub_1C44A0;
    v5.n128_u64[0] = v0[24];

    return dispatch thunk of AlignmentCoordinator.fetchPlayerTimestamp(for:)(v2, v3, v5);
  }
}

uint64_t sub_1C4284()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 272);
  v4 = *(v2 + 264);
  if (v0)
  {
    v5 = sub_1C4854;
  }

  else
  {
    v5 = sub_1C43C0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1C43C0()
{
  sub_12670(*(v0[25] + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_viewModel) + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_alignmentCoordinator, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[37] = v3;
  *v3 = v0;
  v3[1] = sub_1C44A0;
  v4.n128_u64[0] = v0[24];

  return dispatch thunk of AlignmentCoordinator.fetchPlayerTimestamp(for:)(v1, v2, v4);
}

uint64_t sub_1C44A0(double a1)
{
  v4 = *v2;
  *(*v2 + 304) = v1;

  if (v1)
  {
    v5 = *(v4 + 264);
    v6 = *(v4 + 272);
    v7 = sub_1C48C4;
  }

  else
  {
    *(v4 + 312) = a1;
    v5 = *(v4 + 264);
    v6 = *(v4 + 272);
    v7 = sub_1C45C4;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1C45C4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  *(v0 + 320) = *(v0 + 312);

  return _swift_task_switch(sub_1C4634, 0, 0);
}

uint64_t sub_1C4634()
{
  *(v0 + 328) = sub_30C428();
  v2 = sub_30C3F8();

  return _swift_task_switch(sub_1C46C0, v2, v1);
}

uint64_t sub_1C46C0()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_12670(Strong + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_episodeController, v0 + 56);

    __swift_project_boxed_opaque_existential_1Tm((v0 + 56), *(v0 + 80));
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_30A9C8();
    sub_EB68(v0 + 96, &unk_3FBB70);
    __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  }

  v2 = *(v0 + 264);
  v3 = *(v0 + 272);

  return _swift_task_switch(sub_1C47E4, v2, v3);
}

uint64_t sub_1C47E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4854()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C48C4()
{
  v16 = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  sub_304138();
  swift_errorRetain();
  v1 = sub_3041D8();
  v2 = sub_30C798();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[29];
    v14 = v0[30];
    v4 = v0[28];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_30D788();
    v9 = sub_191264(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v1, v2, "Failed to adjust timestamp before highlighting: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);

    (*(v3 + 8))(v14, v4);
  }

  else
  {
    v11 = v0[29];
    v10 = v0[30];
    v12 = v0[28];

    (*(v11 + 8))(v10, v12);
  }

  v0[40] = v0[24];

  return _swift_task_switch(sub_1C4634, 0, 0);
}

void sub_1C4AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_highlightedParagraphView;
    v7 = *(Strong + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_highlightedParagraphView);
    if (v7)
    {
      [v7 removeFromSuperview];
      v8 = *&v5[v6];
    }

    else
    {
      v8 = 0;
    }

    *&v5[v6] = 0;
  }

  swift_beginAccess();
  v9 = *(a3 + 24);
  v10 = v9 - 1;
  if (__OFSUB__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = *(a3 + 16);
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = sub_1BC9F4();

      [v14 setSelectedRange:{v11, v10 & ~(v10 >> 63)}];
    }

    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      v17 = sub_1BC9F4();
      [v17 _presentEditMenu];
    }
  }
}

uint64_t sub_1C4BF8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  sub_EB00(a1, v9, &unk_3FBB70);
  if (!v10)
  {
    return sub_EB68(v9, &unk_3FBB70);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408040);
  result = swift_dynamicCast();
  if (result)
  {
    *a5 = v8;
    *(a5 + 16) = 0;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_1C4D40@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_304E18();

  if (v6)
  {
    v3 = sub_307D98();
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_highlightedParagraphView);
  *a1 = v3;
  *(a1 + 8) = v6 == 0;
  *(a1 + 9) = v4 == 0;
  sub_302218();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C4E50@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for InteractionContext.Origin.none(_:);
  v3 = sub_302258();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_1C4EC4()
{
  v1 = v0;
  sub_124C4(0, &qword_40A690);
  v2 = sub_1BC9F4();
  v3 = sub_30D098();

  if (v3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_304E18();

    if (BYTE8(v20[0]))
    {
      sub_1C86D8(*&v20[0], SBYTE8(v20[0]));
      return;
    }

    sub_1C86D8(*&v20[0], 0);
    v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView;
    [*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView) visibleTextRect];
    x = v21.origin.x;
    y = v21.origin.y;
    width = v21.size.width;
    height = v21.size.height;
    if (CGRectGetMinY(v21) <= 0.0)
    {
      v17 = sub_1BC8D0();
      sub_30D888();
      sub_303FC8();
LABEL_14:

      return;
    }

    v9 = [*(v1 + v4) closestPositionToPoint:{x, y}];
    if (v9)
    {
      v10 = v9;
      v11 = *(v1 + v4);
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      MaxX = CGRectGetMaxX(v22);
      v23.origin.x = x;
      v23.origin.y = y;
      v23.size.width = width;
      v23.size.height = height;
      v13 = [v11 closestPositionToPoint:{MaxX, CGRectGetMinY(v23) + 1.0}];

      if (v13)
      {
        v14 = [*(v1 + v4) textRangeFromPosition:v10 toPosition:v13];
        v15 = [*(v1 + v4) _attributedTextInRange:v14];
        if (v15)
        {
          v16 = v15;
          if ([v15 length] > 0)
          {
            if (qword_3FAC28 != -1)
            {
              swift_once();
            }

            if ([v16 attribute:qword_4295A8 atIndex:0 effectiveRange:0])
            {
              sub_30D448();
              swift_unknownObjectRelease();
            }

            else
            {
              v18 = 0u;
              v19 = 0u;
            }

            v20[0] = v18;
            v20[1] = v19;
            if (!*(&v19 + 1))
            {

              sub_EB68(v20, &unk_3FBB70);
              return;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408040);
            if (swift_dynamicCast())
            {
              sub_30D898();
              v17 = sub_1BC8D0();
              sub_303FC8();

              goto LABEL_14;
            }
          }
        }
      }
    }
  }
}

void sub_1C52A4()
{
  v1 = v0;
  sub_124C4(0, &qword_40A690);
  v2 = sub_1BC9F4();
  v3 = sub_30D098();

  if (v3)
  {
    v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView;
    v5 = [*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView) selectedRange];
    v7 = (v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_manuallySelectedRange);
    if ((*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_manuallySelectedRange + 16) & 1) == 0)
    {
      v9 = *v7;
      v8 = v7[1];
      if (v5 == v9 && v6 == v8)
      {
        v11 = *(v1 + v4);

        [v11 _presentEditMenu];
      }
    }
  }
}

void sub_1C55D8(void *a1)
{
  v2 = v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_manuallySelectedRange;
  v3 = (v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_manuallySelectedRange + 16);
  if ((*v3 & 1) == 0)
  {
    v4 = *v2;
    v5 = *(v2 + 8);
    if ([a1 selectedRange] == v4 && v7 == v5)
    {
      [a1 scrollRangeToVisible:{v4, v5}];
      v9 = sub_1BC9F4();
      [v9 _presentEditMenu];

      v10 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_viewModel);
      v2 = v10 + 56;
      v3 = (v10 + 72);
    }
  }

  *v2 = 0;
  *(v2 + 8) = 0;
  *v3 = 1;
}

Class sub_1C56F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a4;
  v7 = sub_302268();
  v60 = *(v7 - 8);
  v61 = v7;
  __chkstk_darwin(v7);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_30B418();
  v58 = *(v10 - 8);
  v59 = v10;
  __chkstk_darwin(v10);
  v12 = (&v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408060);
  __chkstk_darwin(v13 - 8);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406BB0);
  __chkstk_darwin(v16 - 8);
  v18 = &v55 - v17;
  v19 = sub_3022E8();
  v56 = *(v19 - 8);
  v57 = v19;
  v20 = __chkstk_darwin(v19);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 attributedText];
  if (result)
  {
    v24 = result;
    v25 = [(objc_class *)result attributedSubstringFromRange:a2, a3];

    v64 = _swiftEmptyArrayStorage;
    if ([v25 length] < 1)
    {

      return 0;
    }

    sub_1C38D4(a2, a3, 0, v65);
    if (v66)
    {
      v26 = a1;
      sub_3022B8();
    }

    else
    {
      *v18 = a1;
      v28 = v65[1];
      *(v18 + 8) = v65[0];
      *(v18 + 24) = v28;
      v29 = enum case for PresentationSource.Position.view(_:);
      v30 = sub_3022D8();
      v31 = *(v30 - 8);
      (*(v31 + 104))(v18, v29, v30);
      (*(v31 + 56))(v18, 0, 1, v30);
      v32 = v63;
      v33 = a1;
      v34 = v32;
      sub_3022A8();
    }

    NSAttributedString.contentType(at:)(0, v15);
    v35 = sub_304048();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v15, 1, v35) == 1)
    {
      sub_EB68(v15, &unk_408060);
    }

    else
    {
      v37 = sub_304038();
      (*(v36 + 8))(v15, v35);
      if (v37)
      {
        v38 = [v25 string];
        v39 = sub_30C0D8();
        v41 = v40;

        *v12 = v39;
        v12[1] = v41;
        v42 = &enum case for KCURadar.ReportContent.chapter(_:);
LABEL_12:
        v48 = v58;
        v47 = v59;
        (*(v58 + 104))(v12, *v42, v59);
        sub_30CE78();
        v49 = sub_1CA0A8(v25, v12, v9, v22);
        v51 = v50;
        (*(v60 + 8))(v9, v61);
        (*(v48 + 8))(v12, v47);
        sub_14A63C(v49);

        sub_14A63C(v52);
        sub_14A63C(v51);
        sub_124C4(0, &qword_408070);
        v68._countAndFlagsBits = 0;
        v68._object = 0xE000000000000000;
        v69.value._countAndFlagsBits = 0;
        v69.value._object = 0;
        v67.value.super.isa = 0;
        v67.is_nil = 0;
        v53.value = 0;
        isa = sub_30CE58(v68, v69, v67, v53, 0xFFFFFFFFFFFFFFFFLL, v64, v54).super.super.isa;

        (*(v56 + 8))(v22, v57);
        return isa;
      }
    }

    v43 = [v25 string];
    v44 = sub_30C0D8();
    v46 = v45;

    *v12 = v44;
    v12[1] = v46;
    v42 = &enum case for KCURadar.ReportContent.transcription(_:);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_1C5D98()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewLayoutMarginsDidChange");
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_highlightedParagraphView;
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_highlightedParagraphView];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;
}

void sub_1C5E50(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, double a7)
{
  sub_EB00(a1, v24, &unk_3FBB70);
  if (v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408040);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v13 = v22 > a7 || v23 < a7;
    v14 = a2;
    v15 = a3;
    if (v13)
    {
      if (v22 <= a7 || (*(a6 + 32) & 1) != 0)
      {
        goto LABEL_17;
      }

      v17 = *(a6 + 16);
      v16 = *(a6 + 24);
      v18 = sub_1ADB2C(a7, *a6, *(a6 + 8), v22, v23) == v22;
      v20 = v19 == v23;
      v21 = !v18 || !v20;
      if (v18 && v20)
      {
        v14 = a2;
      }

      else
      {
        v14 = v17;
      }

      if (v21)
      {
        v15 = v16;
      }

      else
      {
        v15 = a3;
      }
    }

    *a5 = v14;
    *(a5 + 8) = v15;
    *(a5 + 16) = 0;
    *a4 = 1;
LABEL_17:
    *a6 = v22;
    *(a6 + 8) = v23;
    *(a6 + 16) = a2;
    *(a6 + 24) = a3;
    *(a6 + 32) = 0;
    return;
  }

  sub_EB68(v24, &unk_3FBB70);
}

uint64_t sub_1C5FA0(uint64_t a1, NSUInteger a2, NSUInteger a3, _BYTE *a4, uint64_t a5, double a6, double a7)
{
  sub_EB00(a1, v17, &unk_3FBB70);
  if (!v18)
  {
    return sub_EB68(v17, &unk_3FBB70);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408040);
  result = swift_dynamicCast();
  if (result)
  {
    if (v15 <= a7)
    {
      if (v16 >= a6)
      {
        if (*(a5 + 16) == 1)
        {
          *a5 = a2;
          *(a5 + 8) = a3;
        }

        else
        {
          v19.location = a2;
          v19.length = a3;
          v14 = NSUnionRange(*a5, v19);
          result = v14.location;
          *a5 = v14;
        }

        *(a5 + 16) = 0;
      }
    }

    else
    {
      *a4 = 1;
    }
  }

  return result;
}

uint64_t sub_1C60B4(void *a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "buildMenuWithBuilder:", a1);
  [a1 removeMenuForIdentifier:UIMenuStandardEdit];
  [a1 removeMenuForIdentifier:UIMenuShare];
  v5[4] = sub_1C6440;
  v5[5] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1C644C;
  v5[3] = &block_descriptor_19_0;
  v3 = _Block_copy(v5);

  [a1 replaceChildrenOfMenuForIdentifier:UIMenuLookup fromChildrenBlock:v3];
  _Block_release(v3);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

void *sub_1C61F8(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); ; i = sub_30D668())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v4 = 0;
    v5 = v1 & 0xC000000000000001;
    v6 = v1 & 0xFFFFFFFFFFFFFF8;
    v15 = v1;
    while (1)
    {
      if (v5)
      {
        v7 = sub_30D578();
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_19;
        }

        v7 = *(v1 + 8 * v4 + 32);
      }

      v8 = v7;
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        v11 = v10;
        v12 = v8;
        [v11 action];
        v13 = sub_301F58();

        if (v13)
        {
          sub_124C4(0, &qword_408058);
          v14 = [v11 title];
          sub_30C0D8();

          v1 = v15;
          sub_30D368();
        }
      }

      sub_30C348();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_30C378();
      }

      sub_30C3C8();
      ++v4;
      if (v9 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return result;
}

Class sub_1C644C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_124C4(0, &qword_408010);
  sub_30C368();
  v1();

  v2.super.isa = sub_30C358().super.isa;

  return v2.super.isa;
}

id sub_1C654C()
{
  v0 = [objc_allocWithZone(UITextView) init];
  v1 = sub_30C098();
  [v0 setText:v1];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = v0;
  if (Strong)
  {
    v4 = sub_1BC9F4();

    [v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v6 = 0.0;
    v8 = 0.0;
    v10 = 0.0;
    v12 = 0.0;
  }

  [v3 setFrame:{v6, v8, v10, v12}];
  v13 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor:v13];

  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  v16 = &UIFontTextStyleTitle2;
  if (v15 != &dword_4 + 1)
  {
    v16 = &UIFontTextStyleBody;
  }

  v17 = *v16;
  v18 = [objc_opt_self() _preferredFontForTextStyle:v17 design:UIFontDescriptorSystemDesignSerif weight:UIFontWeightRegular];

  [v3 setFont:v18];
  v19 = [objc_allocWithZone(UIDragPreview) initWithView:v3];

  return v19;
}

void *sub_1C6828(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    result = sub_30D5D8();
    if ((v2 & 0x8000000000000000) == 0)
    {
      v4 = 0;
      v5 = v1 & 0xC000000000000001;
      v26 = v1 & 0xFFFFFFFFFFFFFF8;
      v27 = v2;
      v6 = UIFontMetrics_ptr;
      while (1)
      {
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          v2 = sub_30D668();
          goto LABEL_3;
        }

        if (v5)
        {
          v8 = sub_30D578();
        }

        else
        {
          if (v4 >= *(v26 + 16))
          {
            goto LABEL_27;
          }

          v8 = *(v1 + 8 * v4 + 32);
        }

        v9 = v8;
        objc_opt_self();
        v10 = swift_dynamicCastObjCClass();
        if (v10)
        {
          v11 = v10;
          v12 = v9;
          v13 = [v11 input];
          if (v13)
          {
            v14 = v1;
            v15 = v5;
            v16 = v6;
            v17 = v13;
            v18 = sub_30C0D8();
            v20 = v19;

            if (v18 == 99 && v20 == 0xE100000000000000)
            {
            }

            else
            {
              v22 = sub_30D728();

              if ((v22 & 1) == 0)
              {

LABEL_23:
                v6 = v16;
                v5 = v15;
                v1 = v14;
                v2 = v27;
                goto LABEL_7;
              }
            }

            sub_124C4(0, &qword_408008);
            v23 = [objc_opt_self() mainBundle];
            v25._countAndFlagsBits = 0xE000000000000000;
            v28._countAndFlagsBits = 1498435395;
            v28._object = 0xE400000000000000;
            v29.value._countAndFlagsBits = 0;
            v29.value._object = 0;
            v24.super.isa = v23;
            v30._countAndFlagsBits = 0;
            v30._object = 0xE000000000000000;
            sub_301AB8(v28, v29, v24, v30, v25);

            v25._object = 0;
            sub_30C738();

            goto LABEL_23;
          }
        }

LABEL_7:
        sub_30D5A8();
        sub_30D5E8();
        sub_30D5F8();
        sub_30D5B8();
        ++v4;
        if (v7 == v2)
        {
          return _swiftEmptyArrayStorage;
        }
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1C6AE0(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    result = sub_30D5D8();
    if ((v2 & 0x8000000000000000) == 0)
    {
      v4 = 0;
      v5 = v1 & 0xC000000000000001;
      v26 = v1 & 0xFFFFFFFFFFFFFF8;
      v27 = v2;
      v6 = UIFontMetrics_ptr;
      while (1)
      {
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          v2 = sub_30D668();
          goto LABEL_3;
        }

        if (v5)
        {
          v8 = sub_30D578();
        }

        else
        {
          if (v4 >= *(v26 + 16))
          {
            goto LABEL_27;
          }

          v8 = *(v1 + 8 * v4 + 32);
        }

        v9 = v8;
        objc_opt_self();
        v10 = swift_dynamicCastObjCClass();
        if (v10)
        {
          v11 = v10;
          v12 = v9;
          v13 = [v11 input];
          if (v13)
          {
            v14 = v1;
            v15 = v5;
            v16 = v6;
            v17 = v13;
            v18 = sub_30C0D8();
            v20 = v19;

            if (v18 == 102 && v20 == 0xE100000000000000)
            {
            }

            else
            {
              v22 = sub_30D728();

              if ((v22 & 1) == 0)
              {

LABEL_23:
                v6 = v16;
                v5 = v15;
                v1 = v14;
                v2 = v27;
                goto LABEL_7;
              }
            }

            sub_124C4(0, &qword_408008);
            v23 = [objc_opt_self() mainBundle];
            v25._countAndFlagsBits = 0xE000000000000000;
            v28._countAndFlagsBits = 1145981254;
            v28._object = 0xE400000000000000;
            v29.value._countAndFlagsBits = 0;
            v29.value._object = 0;
            v24.super.isa = v23;
            v30._countAndFlagsBits = 0;
            v30._object = 0xE000000000000000;
            sub_301AB8(v28, v29, v24, v30, v25);

            v25._object = 0;
            sub_30C738();

            goto LABEL_23;
          }
        }

LABEL_7:
        sub_30D5A8();
        sub_30D5E8();
        sub_30D5F8();
        sub_30D5B8();
        ++v4;
        if (v7 == v2)
        {
          return _swiftEmptyArrayStorage;
        }
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1C6E64()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1BC9F4();
  [v2 selectedRange];
  v4 = v3;

  if (v4 >= 1)
  {
    v5 = [objc_allocWithZone(LTUITranslationViewController) init];
    v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView;
    v7 = [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView] attributedText];
    if (v7)
    {
      v8 = v7;
      v9 = [*&v0[v6] selectedRange];
      v11 = [v8 attributedSubstringFromRange:{v9, v10}];

      v12 = [v11 string];
      sub_30C0D8();

      sub_303FA8();

      v13 = objc_allocWithZone(NSAttributedString);
      v14 = sub_30C098();

      v15 = [v13 initWithString:v14];

      [v5 setText:v15];
      [v5 setIsSourceEditable:0];
      v17.receiver = v0;
      v17.super_class = ObjectType;
      objc_msgSendSuper2(&v17, "presentViewController:animated:completion:", v5, 1, 0);
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v16 = [*&v0[v6] findInteraction];
        [v16 dismissFindNavigator];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1C70C4()
{
  v1 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_rebuildMenuBar);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1C711C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_rebuildMenuBar);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_1C71DC(void *a1)
{
  v2 = v1;
  v3 = [a1 userInfo];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  v5 = sub_30BF98();

  sub_30C0D8();
  sub_30D508();
  if (!*(v5 + 16) || (v6 = sub_191D84(v17), (v7 & 1) == 0))
  {

    sub_196EC8(v17);
LABEL_9:
    v18 = 0u;
    v19 = 0u;
    goto LABEL_10;
  }

  sub_1DA1C(*(v5 + 56) + 32 * v6, &v18);
  sub_196EC8(v17);

  if (!*(&v19 + 1))
  {
LABEL_10:
    sub_EB68(&v18, &unk_3FBB70);
    return;
  }

  sub_124C4(0, &qword_408020);
  if (swift_dynamicCast())
  {
    v8 = v17[0];
    [v17[0] CGRectValue];
    v10 = v9;
    v11 = [v2 view];
    if (v11)
    {
      v12 = v11;
      [v11 safeAreaInsets];
      v14 = v13;

      v15 = v10 - v14;
      v16 = sub_1BC9F4();
      [v16 setContentInset:{0.0, 0.0, v15, 0.0}];

      [*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView] setScrollIndicatorInsets:{0.0, 0.0, v15, 0.0}];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1C756C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_304E18();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1C75F4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1C86F4(v1, v2);
  return sub_304E28();
}

double sub_1C7684@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_304E18();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C7704()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_304E28();
}

void sub_1C7784()
{
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___timestampView) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_subscriptions) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_lastSelectionStart) = 0;
  v1 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_manuallySelectedRange;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_isSearchingObservation) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___footerText) = 1;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textViewTapGesture) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_highlightedParagraphView) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___representedFlowDestinations) = 0;
  v2 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_rebuildMenuBar);
  *v2 = UINavigationBar.overrideBackButtonStyle.setter;
  v2[1] = 0;
  sub_30D648();
  __break(1u);
}

id sub_1C788C(void *a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  [a1 adjustedContentInset];
  v13 = v12;
  v15 = v14;
  [a1 visibleBounds];
  Height = CGRectGetHeight(v25);
  v26.origin.x = a3;
  v26.origin.y = a4;
  v26.size.width = a5;
  v26.size.height = a6;
  v17 = CGRectGetMidY(v26) + Height * -0.5;
  [a1 contentSize];
  v19 = v15 + v18 - Height;
  if (v17 > -v13)
  {
    v20 = v17;
  }

  else
  {
    v20 = -v13;
  }

  if (v19 >= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  result = [a1 contentOffset];
  if (v23 != v21)
  {
    [a1 contentOffset];

    return [a1 setContentOffset:a2 & 1 animated:?];
  }

  return result;
}

uint64_t sub_1C79C8(void *a1)
{
  if (qword_3FAC28 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  if ([a1 attribute:qword_4295A8 atIndex:0 effectiveRange:0])
  {
    sub_30D448();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408040);
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_EB68(v6, &unk_3FBB70);
  }

  return 0;
}

void *sub_1C7AE4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408028);
  __chkstk_darwin(v2 - 8);
  v67 = &v60 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  __chkstk_darwin(v4 - 8);
  v68 = &v60 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40BAB0);
  __chkstk_darwin(v6 - 8);
  v69 = &v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408030);
  __chkstk_darwin(v8 - 8);
  v10 = &v60 - v9;
  v11 = _s9ViewModelC11EpisodeDataOMa(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v66 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v60 - v15;
  __chkstk_darwin(v17);
  v19 = &v60 - v18;
  v20 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_viewModel);
  v21 = OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_episodeData;
  swift_beginAccess();
  sub_EB00(v20 + v21, v10, &qword_408030);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_EB68(v10, &qword_408030);
    return _swiftEmptyArrayStorage;
  }

  sub_1C8528(v10, v19);
  v22 = sub_1BC9F4();
  [v22 selectedRange];
  v24 = v23;

  v25 = v19;
  if (v24 < 1)
  {
    sub_1C85F0(v19);
    return _swiftEmptyArrayStorage;
  }

  v26 = OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView;
  result = [*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView) attributedText];
  if (result)
  {
    v28 = result;
    v29 = [*(v1 + v26) selectedRange];
    v31 = [v28 attributedSubstringFromRange:{v29, v30}];

    sub_1C858C(v19, v16);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v33 = v67;
    if (EnumCaseMultiPayload == 1)
    {
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_408038) + 48);
      v35 = sub_307CF8();
      (*(*(v35 - 8) + 8))(&v16[v34], v35);
    }

    v36 = [v31 string];
    v63 = sub_30C0D8();
    v65 = v37;

    v62 = sub_307D88();
    v64 = v38;

    v60 = sub_309528();
    sub_309448();
    v39 = v66;
    sub_1C858C(v25, v66);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_408038) + 48);
      v41 = sub_307CF8();
      v42 = v25;
      v43 = *(v41 - 8);
      (*(v43 + 32))(v33, v39 + v40, v41);
      (*(v43 + 56))(v33, 0, 1, v41);
      v25 = v42;
    }

    else
    {
      sub_1C85F0(v39);
      v41 = sub_307CF8();
      (*(*(v41 - 8) + 56))(v33, 1, 1, v41);
    }

    sub_307CF8();
    v44 = *(v41 - 8);
    v45 = (*(v44 + 48))(v33, 1, v41);
    v61 = v31;
    if (v45 == 1)
    {
      sub_EB68(v33, &qword_408028);
      v46 = sub_301CB8();
      v47 = v68;
      (*(*(v46 - 8) + 56))(v68, 1, 1, v46);
    }

    else
    {
      sub_1C79C8(v31);
      v47 = v68;
      sub_307CA8();
      (*(v44 + 8))(v33, v41);
    }

    v48 = v69;
    v49 = sub_303F98();
    v51 = v50;

    sub_EB68(v47, &qword_3FB8E0);
    sub_EB68(v48, &unk_40BAB0);
    v52 = sub_30C098();
    v53 = [objc_allocWithZone(NSItemProvider) initWithObject:v52];

    v54 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v53];
    v55 = sub_30C098();
    [v54 setLocalObject:v55];

    v56 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v57 = swift_allocObject();
    v57[2] = v49;
    v57[3] = v51;
    v57[4] = v56;
    aBlock[4] = sub_1C86C4;
    aBlock[5] = v57;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_B9734;
    aBlock[3] = &block_descriptor_16;
    v58 = _Block_copy(aBlock);

    [v54 setPreviewProvider:v58];
    _Block_release(v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_31BF90;
    *(v59 + 32) = v54;

    sub_1C85F0(v25);
    return v59;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C8364(void *a1)
{
  v9 = sub_1C6444;
  v10 = 0;
  v5 = _NSConcreteStackBlock;
  v6 = 1107296256;
  v7 = sub_1C644C;
  v8 = &block_descriptor_37;
  v2 = _Block_copy(&v5);

  [a1 replaceChildrenOfMenuForIdentifier:UIMenuStandardEdit fromChildrenBlock:v2];
  _Block_release(v2);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
    goto LABEL_5;
  }

  v9 = sub_1C6448;
  v10 = 0;
  v5 = _NSConcreteStackBlock;
  v6 = 1107296256;
  v7 = sub_1C644C;
  v8 = &block_descriptor_7;
  v4 = _Block_copy(&v5);

  [a1 replaceChildrenOfMenuForIdentifier:UIMenuEdit fromChildrenBlock:v4];
  _Block_release(v4);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C8528(uint64_t a1, uint64_t a2)
{
  v4 = _s9ViewModelC11EpisodeDataOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C858C(uint64_t a1, uint64_t a2)
{
  v4 = _s9ViewModelC11EpisodeDataOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C85F0(uint64_t a1)
{
  v2 = _s9ViewModelC11EpisodeDataOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C864C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1C8684()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1C86D8(id a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

id sub_1C86F4(id result, char a2)
{
  if (a2 == 1)
  {
    return swift_errorRetain();
  }

  if (!a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_1C8728()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1C8760()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1C87B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1C8820()
{
  v1 = sub_303488();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C88FC(uint64_t a1)
{
  v4 = *(sub_303488() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  v8 = *(v1 + 4);
  v9 = v1[5];
  v10 = *(v1 + 6);
  v11 = *(v1 + 7);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_F4FC;

  return sub_1C4024(v9, a1, v6, v7, v8, v10, v11, v1 + v5);
}

uint64_t sub_1C8A20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408098);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8A90()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1C8AD8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C8B28()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1C8B68()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1C8BA8()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1C8C24(id a1)
{
  if (a1 != &dword_0 + 1)
  {
  }
}

id sub_1C8C34(id result)
{
  if (result != &dword_0 + 1)
  {
    return result;
  }

  return result;
}

id sub_1C8C50@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isSearching];
  *a2 = result;
  return result;
}

uint64_t sub_1C8CEC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_304E18();

  return v1;
}

double sub_1C8D60()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_304E18();

  return v1;
}

uint64_t sub_1C8DD8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_304E18();

  return v1;
}

uint64_t sub_1C8E50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F30);
  __chkstk_darwin(v1 - 8);
  v53 = &v38 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408440);
  v4 = *(v3 - 8);
  v44 = v3;
  v45 = v4;
  __chkstk_darwin(v3);
  v40 = &v38 - v5;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408448);
  v48 = *(v46 - 8);
  __chkstk_darwin(v46);
  v42 = &v38 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408450);
  v8 = *(v7 - 8);
  v51 = v7;
  v52 = v8;
  __chkstk_darwin(v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408458);
  v11 = *(v10 - 8);
  v54 = v10;
  v55 = v11;
  __chkstk_darwin(v10);
  v47 = &v38 - v12;
  v39 = sub_303268();
  v13 = *(v39 - 8);
  __chkstk_darwin(v39);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_3039D8();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_303888();
  v49 = *(v20 - 8);
  v50 = v20;
  v21 = __chkstk_darwin(v20);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 104))(v19, enum case for NetworkTaskPriority.userInteractive(_:), v16, v21);
  (*(v13 + 104))(v15, enum case for AssetLifetime.ephemeral(_:), v39);
  v58 = 0;
  v56 = 0u;
  v57 = 0u;

  v41 = v23;
  sub_303878();
  v24 = v0;
  __swift_project_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_transcriptProvider), *(v0 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_transcriptProvider + 24));
  *&v56 = sub_303968();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408428);
  sub_EC8C(&qword_408468, &qword_408460);
  v25 = v40;
  sub_304E98();

  swift_getKeyPath();
  sub_EC8C(&qword_408470, &qword_408440);
  v26 = v42;
  v27 = v44;
  sub_304EC8();

  (*(v45 + 8))(v25, v27);
  swift_allocObject();
  swift_weakInit();
  sub_EC8C(&qword_408478, &qword_408448);

  v28 = v46;
  v29 = v43;
  sub_304EA8();

  (*(v48 + 8))(v26, v28);

  sub_124C4(0, &qword_3FBF20);
  v30 = sub_30C8F8();
  *&v56 = v30;
  v31 = sub_30C8E8();
  v32 = v53;
  (*(*(v31 - 8) + 56))(v53, 1, 1, v31);
  sub_EC8C(&qword_408480, &qword_408450);
  sub_CF4A8();
  v33 = v47;
  v34 = v51;
  sub_304F28();
  sub_EB68(v32, &unk_408F30);

  (*(v52 + 8))(v29, v34);
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  sub_EC8C(&qword_408488, &qword_408458);
  v35 = v54;
  v36 = sub_304EE8();

  (*(v55 + 8))(v33, v35);
  (*(v49 + 8))(v41, v50);
  *(v24 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_transcriptObserver) = v36;
}

uint64_t sub_1C9730@<X0>(uint64_t *a1@<X8>)
{
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408028);
  __chkstk_darwin(v2 - 8);
  v35 = &v26 - v3;
  v4 = sub_30B858();
  __chkstk_darwin(v4 - 8);
  v34 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408E60);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_303CD8();
  v32 = *(v9 - 8);
  v33 = v9;
  __chkstk_darwin(v9);
  v31 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  v37 = *(v1 + 32);
  sub_1D770();
  v14 = sub_30D438();
  v29 = v15;
  v30 = v14;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_304E18();

  if (v37)
  {
    v16 = sub_307D88();
    v27 = v17;
    v28 = v16;
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  v26 = *(v1 + 40);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_304E18();

  if (v37)
  {
    sub_309528();
  }

  sub_EB00(v1 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_transcriptSource, v8, &qword_408E60);
  sub_303C88();
  v18 = v32;
  v19 = v33;
  (*(v32 + 16))(v31, v13, v33);
  sub_30B848();
  v20 = sub_307CF8();
  (*(*(v20 - 8) + 56))(v35, 1, 1, v20);
  sub_308C88();
  swift_allocObject();
  v21 = sub_308C68();
  (*(v18 + 8))(v13, v19);
  v22 = v36;
  *v36 = v21;
  v23 = enum case for FlowDestination.episodeDetailTranscript(_:);
  v24 = sub_308778();
  return (*(*(v24 - 8) + 104))(v22, v23, v24);
}

uint64_t sub_1C9B7C@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBDE8);
  __chkstk_darwin(v2 - 8);
  v35 = &v32 - v3;
  v4 = sub_307CF8();
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408030);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  v13 = sub_3034D8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v34 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = (&v32 - v17);
  v19 = OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_episodeData;
  swift_beginAccess();
  sub_EB00(v1 + v19, v12, &qword_408030);
  v20 = _s9ViewModelC11EpisodeDataOMa(0);
  if ((*(*(v20 - 8) + 48))(v12, 1, v20) == 1)
  {
    v21 = sub_303488();
    (*(*(v21 - 8) + 56))(v36, 1, 1, v21);
    return sub_EB68(v12, &qword_408030);
  }

  else
  {
    sub_EB00(v12, v9, &qword_408030);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408038);
      v24 = v32;
      v25 = v33;
      (*(v32 + 32))(v6, &v9[*(v23 + 48)], v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406438);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_315430;
      *(v26 + 32) = sub_307CB8();
      (*(v24 + 8))(v6, v25);
      v27 = &enum case for MediaIdentifier.episodes(_:);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400FD0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_315430;
      *(v26 + 32) = sub_309A68();
      *(v26 + 40) = v28;

      v27 = &enum case for MediaIdentifier.localEpisodes(_:);
    }

    v29 = v36;
    *v18 = v26;
    (*(v14 + 104))(v18, *v27, v13);
    sub_EB68(v12, &qword_408030);
    (*(v14 + 16))(v34, v18, v13);
    v30 = sub_303978();
    (*(*(v30 - 8) + 56))(v35, 1, 1, v30);
    sub_30C568();
    sub_303478();
    (*(v14 + 8))(v18, v13);
    v31 = sub_303488();
    return (*(*(v31 - 8) + 56))(v29, 0, 1, v31);
  }
}

uint64_t sub_1CA0A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v44 = a3;
  v42 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408438);
  __chkstk_darwin(v6 - 8);
  v45 = v37 - v7;
  v8 = sub_307CF8();
  v40 = *(v8 - 8);
  v41 = v8;
  __chkstk_darwin(v8);
  v39 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408030);
  __chkstk_darwin(v10 - 8);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v37 - v14;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 1;
  if (qword_3FAC28 != -1)
  {
    swift_once();
  }

  v16 = qword_4295A8;
  v17 = [a1 length];
  v18 = swift_allocObject();
  *(v18 + 16) = v47;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1C8810;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1D1F30;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CA75C;
  aBlock[3] = &block_descriptor_38;
  v20 = _Block_copy(aBlock);

  [a1 enumerateAttribute:v16 inRange:0 options:v17 usingBlock:{0, v20}];
  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }

  else
  {
    if (v48)
    {
      v22 = _swiftEmptyArrayStorage;
    }

    else
    {
      v23 = OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_episodeData;
      swift_beginAccess();
      sub_EB00(v4 + v23, v15, &qword_408030);
      v24 = _s9ViewModelC11EpisodeDataOMa(0);
      if ((*(*(v24 - 8) + 48))(v15, 1, v24) == 1)
      {
        v22 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_EB00(v15, v12, &qword_408030);
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408038);
          v26 = v39;
          v27 = v40;
          (*(v40 + 32))(v39, &v12[*(v25 + 48)], v41);
          v28 = *(v4 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_episodeController + 24);
          v37[1] = *(v4 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_episodeController + 32);
          v38 = __swift_project_boxed_opaque_existential_1Tm((v4 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_episodeController), v28);
          v37[0] = v4[3];
          v29 = sub_30B418();
          v30 = *(v29 - 8);
          v31 = v45;
          (*(v30 + 16))(v45, v42, v29);
          (*(v30 + 56))(v31, 0, 1, v29);
          v22 = sub_30A908();
          sub_EB68(v31, &qword_408438);
          (*(v27 + 8))(v26, v41);
        }

        else
        {
          v32 = *(v4 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_episodeController + 24);
          v39 = *(v4 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_episodeController + 32);
          v33 = __swift_project_boxed_opaque_existential_1Tm((v4 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_episodeController), v32);
          v40 = v4[3];
          v41 = v33;
          v38 = v4;
          sub_309A68();
          v34 = sub_30B418();
          v35 = *(v34 - 8);
          v36 = v45;
          (*(v35 + 16))(v45, v42, v34);
          (*(v35 + 56))(v36, 0, 1, v34);
          v22 = sub_30A8F8();

          sub_EB68(v36, &qword_408438);
        }
      }

      sub_EB68(v15, &qword_408030);
    }

    return v22;
  }

  return result;
}

uint64_t sub_1CA75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_1DA94(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_EB68(v13, &unk_3FBB70);
}

void sub_1CA808()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD48);
  __chkstk_darwin(v1 - 8);
  v33 = &v27 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408428);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  v6 = sub_3036A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v13 = OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_transcriptModel;
  swift_beginAccess();
  sub_EB00(v0 + v13, v5, &qword_408428);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_EB68(v5, &qword_408428);
    return;
  }

  v14 = *(v7 + 32);
  v14(v12, v5, v6);
  v15 = *(v0 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_episodeLinks);
  if (v15)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      if (!*(v0 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_chapters))
      {
        v26 = *(v7 + 8);

        v26(v12, v6);

        return;
      }

      v31 = *(v0 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_chapters);
      v32 = Strong;

      v18 = v33;
      sub_30C448();
      v19 = sub_30C468();
      (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
      (*(v7 + 16))(v9, v12, v6);
      sub_30C438();
      v32 = v32;

      v30 = v0;
      v20 = sub_30C428();
      v21 = *(v7 + 80);
      v29 = v14;
      v22 = (v21 + 40) & ~v21;
      v27 = v20;
      v28 = (v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
      v23 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
      v24 = swift_allocObject();
      *(v24 + 2) = v27;
      *(v24 + 3) = &protocol witness table for MainActor;
      *(v24 + 4) = v32;
      v29(&v24[v22], v9, v6);
      *&v24[v28] = v15;
      v25 = v30;
      *&v24[v23] = v31;
      *&v24[(v23 + 15) & 0xFFFFFFFFFFFFFFF8] = v25;
      sub_45AA4(0, 0, v33, &unk_32B638, v24);
    }
  }

  (*(v7 + 8))(v12, v6);
}

uint64_t sub_1CAC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  sub_30C438();
  v8[9] = sub_30C428();
  v10 = sub_30C3F8();
  v8[10] = v10;
  v8[11] = v9;

  return _swift_task_switch(sub_1CACB0, v10, v9);
}

uint64_t sub_1CACB0()
{
  v13 = v0;
  v1 = type metadata accessor for TextAttachmentViewProvider();
  if (qword_3FAC18 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v3 = qword_407B60;
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;

  os_unfair_lock_lock((v3 + 24));
  sub_1D222C((v3 + 16), v12);
  v5 = v0[8];
  os_unfair_lock_unlock((v3 + 24));

  v6 = *(v5 + 24);
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_1CAE24;
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[4];

  return sub_1AE410(v10, v8, v9, v6);
}

uint64_t sub_1CAE24(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return _swift_task_switch(sub_1CAF4C, v4, v3);
}

uint64_t sub_1CAF4C()
{
  v1 = *(v0 + 104);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;

  sub_304E28();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CB008@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_304E18();

  *a1 = v3;
  return result;
}

uint64_t sub_1CB088()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_304E28();
}

uint64_t sub_1CB104()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD48);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  v4 = _s9ViewModelC11EpisodeDataOMa(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  v11 = OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_episodeData;
  swift_beginAccess();
  v12 = (*(v5 + 48))(v0 + v11, 1, v4);
  v13 = 0;
  if (!v12)
  {
    sub_1C858C(v0 + v11, v10);
    sub_1C8528(v10, v7);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v13 = *v7;
    if (EnumCaseMultiPayload == 1)
    {
      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_408038) + 48);
      v16 = sub_307CF8();
      (*(*(v16 - 8) + 8))(&v7[v15], v16);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v20 = v13;

  sub_304E28();
  v17 = sub_30C468();
  (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v0;

  sub_45AA4(0, 0, v3, &unk_32B740, v18);
}

uint64_t sub_1CB3B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408578);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - v2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408580);
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v10 - v5;
  v12 = sub_308808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408588);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_315430;
  *(v7 + 32) = sub_3087F8() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408590);
  sub_EC8C(&qword_408598, &qword_408590);
  sub_304F18();

  sub_EC8C(&qword_4085A0, &qword_408578);
  sub_304F48();
  (*(v1 + 8))(v3, v0);
  swift_allocObject();
  swift_weakInit();
  sub_EC8C(&qword_4085A8, &qword_408580);
  v8 = v11;
  sub_304F58();

  (*(v4 + 8))(v6, v8);
  swift_beginAccess();
  sub_304CE8();
  swift_endAccess();
}

uint64_t sub_1CB704()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408030);
  __chkstk_darwin(v2 - 8);
  v4 = (&v41 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408028);
  __chkstk_darwin(v5 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  v11 = sub_307CF8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v42 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v43 = &v41 - v15;
  __chkstk_darwin(v16);
  v18 = &v41 - v17;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_304E18();

  v19 = v44[0];
  if (v44[0])
  {
    v20 = OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_episodeOffer;
    swift_beginAccess();
    sub_EB00(v1 + v20, v10, &qword_408028);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      (*(v12 + 32))(v18, v10, v11);
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_408038) + 48);
      *v4 = v19;
      (*(v12 + 16))(v4 + v26, v18, v11);
      v27 = _s9ViewModelC11EpisodeDataOMa(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v27 - 8) + 56))(v4, 0, 1, v27);
      v28 = OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_episodeData;
      swift_beginAccess();

      sub_1D2800(v4, v1 + v28, &qword_408030);
      swift_endAccess();
      sub_1CB104();

      sub_EB68(v4, &qword_408030);
      return (*(v12 + 8))(v18, v11);
    }

    sub_EB68(v10, &qword_408028);
  }

  swift_getObjectType();
  v21 = *(v1 + 32);
  v22 = sub_30AC58();
  if (v22)
  {
    *v4 = v22;
    v23 = _s9ViewModelC11EpisodeDataOMa(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v23 - 8) + 56))(v4, 0, 1, v23);
    v24 = OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_episodeData;
    swift_beginAccess();

    sub_1D2800(v4, v1 + v24, &qword_408030);
    swift_endAccess();
    sub_1CB104();

    return sub_EB68(v4, &qword_408030);
  }

  else
  {
    v29 = OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_episodeOffer;
    swift_beginAccess();
    sub_EB00(v1 + v29, v7, &qword_408028);
    if ((*(v12 + 48))(v7, 1, v11) == 1)
    {
      sub_EB68(v7, &qword_408028);
      __swift_project_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_storeDataProvider), *(v1 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_storeDataProvider + 24));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406438);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_315430;
      *(v30 + 32) = v21;
      sub_308FD8();

      swift_allocObject();
      swift_weakInit();
      v31 = sub_124C4(0, &qword_3FBF20);
      v32 = sub_30C8F8();
      v45 = v31;
      v46 = &protocol witness table for OS_dispatch_queue;
      v44[0] = v32;
      sub_30BEA8();
    }

    else
    {
      v41 = *(v12 + 32);
      v41(v43, v7, v11);
      __swift_project_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_storeDataProvider), *(v1 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_storeDataProvider + 24));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406438);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_315430;
      *(v33 + 32) = v21;
      sub_308FE8();

      v34 = swift_allocObject();
      swift_weakInit();
      v35 = v42;
      v36 = v43;
      (*(v12 + 16))(v42, v43, v11);
      v37 = (*(v12 + 80) + 24) & ~*(v12 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = v34;
      v41((v38 + v37), v35, v11);
      v39 = sub_124C4(0, &qword_3FBF20);
      v40 = sub_30C8F8();
      v45 = v39;
      v46 = &protocol witness table for OS_dispatch_queue;
      v44[0] = v40;
      sub_30BEA8();

      (*(v12 + 8))(v36, v11);
    }

    return __swift_destroy_boxed_opaque_existential_1(v44);
  }
}

uint64_t sub_1CBF10()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F30);
  __chkstk_darwin(v2 - 8);
  v4 = v44 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD48);
  __chkstk_darwin(v5 - 8);
  v7 = v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4084A8);
  v9 = *(v8 - 8);
  v51 = v8;
  v52 = v9;
  __chkstk_darwin(v8);
  v57 = v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4084B0);
  v12 = *(v11 - 8);
  v53 = v11;
  v54 = v12;
  __chkstk_darwin(v11);
  v49 = v44 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4084B8);
  v15 = *(v14 - 8);
  v55 = v14;
  v56 = v15;
  __chkstk_darwin(v14);
  v50 = v44 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4084C0);
  sub_30C448();
  v17 = sub_30C468();
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  swift_allocObject();
  swift_weakInit();
  v58 = sub_304DD8();
  sub_EC8C(&qword_4084C8, &qword_4084C0);
  v18 = sub_304E88();

  v58 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4084D0);
  v44[1] = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_EC8C(&qword_4084D8, &qword_4084D0);
  v19 = sub_304E58();

  v62 = *(v1 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_workQueue);
  v20 = v62;
  v63 = v19;
  v47 = sub_30C8E8();
  v21 = *(v47 - 8);
  v46 = *(v21 + 56);
  v48 = v21 + 56;
  v22 = v4;
  v46(v4, 1, 1, v47);
  v23 = v20;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4084E0);
  v25 = sub_124C4(0, &qword_3FBF20);
  v26 = sub_EC8C(&qword_4084E8, &qword_4084E0);
  v27 = sub_CF4A8();
  v28 = v25;
  sub_304E78();
  sub_EB68(v22, &unk_408F30);

  v45 = v1;
  v29 = *(v1 + 24);
  v30 = *(v1 + 32);
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = v30;

  sub_304CD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4084F0);
  v58 = v24;
  v59 = v28;
  v60 = v26;
  v61 = v27;
  swift_getOpaqueTypeConformance2();
  sub_EC8C(&qword_4084F8, &qword_4084F0);
  v32 = v49;
  v33 = v51;
  v34 = v57;
  sub_304F78();

  (*(v52 + 8))(v34, v33);
  v35 = sub_30C8F8();
  v58 = v35;
  v46(v22, 1, 1, v47);
  sub_EC8C(&qword_408500, &qword_4084B0);
  v36 = v50;
  v37 = v53;
  sub_304F28();
  sub_EB68(v22, &unk_408F30);

  (*(v54 + 8))(v32, v37);
  v38 = swift_allocObject();
  v39 = v45;
  swift_weakInit();
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1D24B0;
  *(v40 + 24) = v38;
  sub_EC8C(&qword_408508, &qword_4084B8);
  v41 = v55;
  v42 = sub_304F58();

  (*(v56 + 8))(v36, v41);
  *(v39 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_episodeLinksObserver) = v42;
}

uint64_t sub_1CC6A0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408030);
  __chkstk_darwin(v5 - 8);
  v7 = &v16[-v6];
  v8 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v10 = result;
  if (v8 >> 62)
  {
    result = sub_30D668();
    if (result)
    {
      goto LABEL_4;
    }
  }

  result = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
  }

LABEL_4:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v11 = sub_30D578();
    goto LABEL_7;
  }

  if (*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
  {
    v11 = *(v8 + 32);

LABEL_7:
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_408038) + 48);
    *v7 = v11;
    v13 = sub_307CF8();
    (*(*(v13 - 8) + 16))(v7 + v12, a3, v13);
    v14 = _s9ViewModelC11EpisodeDataOMa(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
    v15 = OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_episodeData;
    swift_beginAccess();

    sub_1D2800(v7, v10 + v15, &qword_408030);
    swift_endAccess();
    sub_1CB104();

    return sub_EB68(v7, &qword_408030);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CC8E0(uint64_t *a1)
{
  v2 = sub_307CF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v18 - v7;
  v9 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(v9 + 16))
    {
      v11 = *(v3 + 80);
      v19 = *(v3 + 16);
      v20 = result;
      v12 = result;
      v19(v8, v9 + ((v11 + 32) & ~v11), v2);
      v13 = *(v12 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_storeDataProvider + 24);
      v18[1] = *(v12 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_storeDataProvider + 32);
      v18[0] = __swift_project_boxed_opaque_existential_1Tm((v12 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_storeDataProvider), v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406438);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_315430;
      *(v14 + 32) = sub_307CB8();
      sub_308FE8();

      v19(v5, v8, v2);
      v15 = swift_allocObject();
      *(v15 + 16) = v20;
      (*(v3 + 32))(v15 + ((v11 + 24) & ~v11), v5, v2);
      v16 = sub_124C4(0, &qword_3FBF20);

      v17 = sub_30C8F8();
      v21[3] = v16;
      v21[4] = &protocol witness table for OS_dispatch_queue;
      v21[0] = v17;
      sub_30BEA8();

      (*(v3 + 8))(v8, v2);
      return __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1CCBB4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408030);
  __chkstk_darwin(v6 - 8);
  v8 = (&v16 - v7);
  v9 = *a1;
  if (v9 >> 62)
  {
    result = sub_30D668();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      return result;
    }
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = sub_30D578();
  }

  else
  {
    if (!*(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v11 = *(v9 + 32);
  }

  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_408038) + 48);
  *v8 = v11;
  v13 = sub_307CF8();
  (*(*(v13 - 8) + 16))(v8 + v12, a3, v13);
  v14 = _s9ViewModelC11EpisodeDataOMa(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
  v15 = OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_episodeData;
  swift_beginAccess();

  sub_1D2800(v8, a2 + v15, &qword_408030);
  swift_endAccess();
  sub_1CB104();

  return sub_EB68(v8, &qword_408030);
}

uint64_t sub_1CCDC0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_303498();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_3036A8();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4, v10);
  v13 = (*(v5 + 88))(v7, v4);
  if (v13 == enum case for TranscriptData.signature(_:))
  {
    (*(v5 + 8))(v7, v4);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408428);
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }

  if (v13 == enum case for TranscriptData.transcript(_:))
  {
    (*(v5 + 96))(v7, v4);
  }

  else
  {
    if (v13 != enum case for TranscriptData.complete(_:))
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408428);
      (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
      return (*(v5 + 8))(v7, v4);
    }

    (*(v5 + 96))(v7, v4);

    v7 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_408490) + 48));
  }

  v16 = *(v9 + 32);
  v16(v12, v7, v8);
  v16(a2, v12, v8);
  (*(v9 + 56))(a2, 0, 1, v8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408428);
  return (*(*(v17 - 8) + 56))(a2, 0, 1, v17);
}

uint64_t sub_1CD124()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_304E28();
  }

  return result;
}

void sub_1CD1AC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_3041E8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (*a1)
  {
    swift_errorRetain();
    sub_304138();
    swift_errorRetain();
    v9 = sub_3041D8();
    v10 = sub_30C798();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v17[0] = a2;
      v12 = v11;
      v13 = swift_slowAlloc();
      v19[0] = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_30D788();
      v16 = sub_191264(v14, v15, v19);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_0, v9, v10, "Could not fetch transcripts on transcript view: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
    }

    (*(v5 + 8))(v7, v4);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v17[5] = v8;
      v18 = 1;
      sub_304E28();
    }

    else
    {
    }
  }
}

uint64_t sub_1CD400(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408428);
  __chkstk_darwin(v2 - 8);
  v4 = &v8[-v3];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_EB00(a1, v4, &qword_408428);
    v7 = OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_transcriptModel;
    swift_beginAccess();
    sub_1D2800(v4, v6 + v7, &qword_408428);
    swift_endAccess();
    sub_1CA808();

    return sub_EB68(v4, &qword_408428);
  }

  return result;
}

uint64_t sub_1CD524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v32 = a3;
  v33 = a2;
  v37 = a1;
  v39 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD48);
  __chkstk_darwin(v4 - 8);
  v31 = &v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408510);
  v35 = *(v6 - 8);
  v36 = v6;
  __chkstk_darwin(v6);
  v34 = &v31 - v7;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408518);
  v8 = *(v38 - 8);
  __chkstk_darwin(v38);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408520);
  __chkstk_darwin(v11 - 8);
  v13 = &v31 - v12;
  v14 = sub_303E78();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v31 - v19;
  sub_EB00(v37, v13, &qword_408520);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_EB68(v13, &qword_408520);
    v40 = _swiftEmptyArrayStorage;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408528);
    sub_304DB8();
    sub_EC8C(&qword_408530, &qword_408518);
    v21 = v38;
    v22 = sub_304E88();
    result = (*(v8 + 8))(v10, v21);
  }

  else
  {
    v24 = *(v15 + 32);
    v24(v20, v13, v14);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408538);
    v25 = sub_30C468();
    (*(*(v25 - 8) + 56))(v31, 1, 1, v25);
    (*(v15 + 16))(v17, v20, v14);
    v26 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v27 = swift_allocObject();
    v28 = v32;
    *(v27 + 16) = v33;
    *(v27 + 24) = v28;
    v24((v27 + v26), v17, v14);

    v40 = sub_304DD8();
    sub_EC8C(&qword_408540, &qword_408538);
    sub_EC8C(&qword_408530, &qword_408518);
    v29 = v34;
    sub_304EF8();

    sub_EC8C(&qword_408548, &qword_408510);
    v30 = v36;
    v22 = sub_304E88();
    (*(v35 + 8))(v29, v30);
    result = (*(v15 + 8))(v20, v14);
  }

  *v39 = v22;
  return result;
}

uint64_t sub_1CDAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_303E78();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = sub_30AEF8();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408550);
  v8 = swift_task_alloc();
  v4[17] = v8;
  *v8 = v4;
  v8[1] = sub_1CDC50;

  return BaseObjectGraph.inject<A>(_:)(v4 + 2, v7, v7);
}

uint64_t sub_1CDC50()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1CE008;
  }

  else
  {
    v2 = sub_1CDD64;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1CDD64()
{
  (*(v0[12] + 16))(v0[13], v0[10], v0[11]);
  sub_30AEE8();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[19] = v3;
  v4 = sub_1D26D0();
  *v3 = v0;
  v3[1] = sub_1CDE64;
  v5 = v0[16];
  v6 = v0[14];
  v7 = v0[7];
  v8 = v0[8];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v7, v5, v8, v6, v4, v1, v2);
}

uint64_t sub_1CDE64()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1CE078;
  }

  else
  {
    v2 = sub_1CDF78;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1CDF78()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_1CE008()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CE078()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_1CE108()
{
  v0 = sub_3041E8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_304188();
  swift_errorRetain();
  v4 = sub_3041D8();
  v5 = sub_30C798();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_0, v4, v5, "Failed to fetch timed reference links: %@", v6, 0xCu);
    sub_EB68(v7, &qword_3FC200);
  }

  (*(v1 + 8))(v3, v0);
  v10[1] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408528);
  return sub_304DB8();
}

uint64_t sub_1CE2F4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_episodeLinks) = a1;

    sub_1CA808();
  }

  return result;
}

uint64_t sub_1CE378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408498);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v5 = sub_3034D8();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  sub_30C438();
  v4[14] = sub_30C428();
  v7 = sub_30C3F8();
  v4[15] = v7;
  v4[16] = v6;

  return _swift_task_switch(sub_1CE4B0, v7, v6);
}

uint64_t sub_1CE4B0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_libraryDataProvider + 8);
    v3 = Strong;
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 32);
    v6 = swift_task_alloc();
    v0[18] = v6;
    *v6 = v0;
    v6[1] = sub_1CE5F8;

    return sub_1CEC58(v5, ObjectType, v2);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1CE5F8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = a2;
  v4[19] = a2;

  v5 = v3[16];
  v6 = v3[15];

  return _swift_task_switch(sub_1CE720, v6, v5);
}

uint64_t sub_1CE720()
{
  v1 = v0[19];
  if (v1)
  {
    v2 = v0[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400FD0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_315430;
    *(v3 + 32) = v2;
    *(v3 + 40) = v1;
    v4 = &enum case for MediaIdentifier.localEpisodes(_:);
  }

  else
  {
    v5 = v0[17];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406438);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_315430;
    *(v3 + 32) = *(v5 + 32);
    v4 = &enum case for MediaIdentifier.episodes(_:);
  }

  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[11];
  *v6 = v3;
  (*(v7 + 104))(v6, *v4, v8);
  sub_3034C8();
  swift_allocObject();
  v0[20] = sub_3034B8();
  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = sub_1CE890;
  v10 = v0[13];
  v11 = v0[10];

  return ChapterProvider.fetch(identifier:asset:)(v11, v10, 0);
}

uint64_t sub_1CE890()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_1CEBA0;
  }

  else
  {
    v5 = sub_1CE9E8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1CE9E8()
{
  v2 = v0[9];
  v1 = v0[10];

  sub_EB00(v1, v2, &qword_408498);
  v3 = sub_303778();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[9];
  if (v5 == 1)
  {
    sub_EB68(v0[9], &qword_408498);
    v7 = _swiftEmptyArrayStorage;
  }

  else
  {
    v7 = sub_303768();
    (*(v4 + 8))(v6, v3);
  }

  v9 = v0[12];
  v8 = v0[13];
  v11 = v0[10];
  v10 = v0[11];
  *(v0[17] + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_chapters) = v7;

  sub_1CA808();

  sub_EB68(v11, &qword_408498);
  (*(v9 + 8))(v8, v10);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1CEBA0()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1CEC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return _swift_task_switch(sub_1CEC7C, 0, 0);
}

uint64_t sub_1CEC7C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = *(v0 + 40);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40AB30);
  *v4 = v0;
  v4[1] = sub_1CED90;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000011, 0x800000000033FA50, sub_1D2250, v3, v5);
}

uint64_t sub_1CED90()
{

  return _swift_task_switch(sub_1CEEA8, 0, 0);
}

uint64_t sub_1CEEC0(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_isNetworkReachable) = v1;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_304E18();

    if (v4 == 1)
    {
      sub_1C86D8(v3, v4);
      if (v1)
      {
        sub_1C8E50();
      }
    }

    else
    {
      sub_1C86D8(v3, v4);
    }
  }

  return result;
}

uint64_t sub_1CEFA4()
{
  v1 = sub_3041E8();
  v0[6] = v1;
  v0[7] = *(v1 - 8);
  v0[8] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_1CF090;

  return sub_1CF3A4();
}

uint64_t sub_1CF090()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1CF1CC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1CF1CC()
{
  v17 = v0;
  sub_304138();
  swift_errorRetain();
  v1 = sub_3041D8();
  v2 = sub_30C798();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[7];
    v15 = v0[8];
    v4 = v0[6];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_30D788();
    v9 = sub_191264(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v1, v2, "Failed to resolve asset: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);

    (*(v3 + 8))(v15, v4);
  }

  else
  {
    v11 = v0[7];
    v10 = v0[8];
    v12 = v0[6];

    (*(v11 + 8))(v10, v12);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1CF3A4()
{
  v1[6] = v0;
  v2 = sub_303C18();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = sub_307CF8();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v4 = sub_301CB8();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408030);
  v1[18] = swift_task_alloc();
  v5 = _s9ViewModelC11EpisodeDataOMa(0);
  v1[19] = v5;
  v1[20] = *(v5 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_1CF5D4, 0, 0);
}

uint64_t sub_1CF5D4()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[6];
  v5 = OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_episodeData;
  swift_beginAccess();
  sub_EB00(v4 + v5, v3, &qword_408030);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_EB68(v0[18], &qword_408030);
    sub_1D295C();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();

    v25 = v0[1];
LABEL_5:

    return v25();
  }

  v7 = v0[21];
  v8 = v0[22];
  sub_1C8528(v0[18], v8);
  sub_1C858C(v8, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v0[23] = *v7;
  if (EnumCaseMultiPayload == 1)
  {
    v10 = v0[21];
    v12 = v0[14];
    v11 = v0[15];
    v13 = v0[12];
    v14 = v0[13];
    v15 = v0[10];
    v16 = v0[11];

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408038);
    (*(v16 + 32))(v13, v10 + *(v17 + 48), v15);
    sub_307CE8();
    v18 = objc_allocWithZone(AVURLAsset);
    sub_301C08(v19);
    v21 = v20;
    v22 = [v18 initWithURL:v20 options:0];

    (*(v12 + 8))(v11, v14);
    v31 = v22;
    sub_307CD8();
    v23 = NSPersistentStringForMTEpisodePriceType();
    sub_30C0D8();

    (*(v16 + 8))(v13, v15);
    __swift_project_boxed_opaque_existential_1Tm((v0[6] + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_alignmentCoordinator), *(v0[6] + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_alignmentCoordinator + 24));

    sub_303C08();
    sub_303A28();
    v24 = v0[22];
    v28 = v0[8];
    v29 = v0[9];
    v30 = v0[7];

    (*(v28 + 8))(v29, v30);
    sub_1C85F0(v24);

    v25 = v0[1];
    goto LABEL_5;
  }

  swift_getObjectType();
  sub_309A68();
  v0[24] = sub_30AC08();

  v27 = swift_task_alloc();
  v0[25] = v27;
  *v27 = v0;
  v27[1] = sub_1CFA84;

  return Promise.then()(v0 + 5);
}

uint64_t sub_1CFA84()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1CFF34;
  }

  else
  {
    v2 = sub_1CFBB8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1CFBB8()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = [*(v0 + 40) bestUrl];
  if (!v2)
  {

LABEL_6:
    v19 = *(v0 + 176);
    sub_1D295C();
    swift_allocError();
    *v20 = 1;
    swift_willThrow();

LABEL_10:
    sub_1C85F0(v19);

    v25 = *(v0 + 8);
    goto LABEL_11;
  }

  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  v7 = v2;
  sub_301C38();

  (*(v6 + 32))(v4, v3, v5);
  v8 = objc_allocWithZone(AVURLAsset);
  sub_301C08(v9);
  v11 = v10;
  v12 = [v8 initWithURL:v10 options:0];

  v13 = v12;
  v14 = [v1 priceType];
  v15 = *(v0 + 136);
  v17 = *(v0 + 104);
  v16 = *(v0 + 112);
  v30 = v13;
  if (v14)
  {
    v18 = v14;
    sub_30C0D8();

    (*(v16 + 8))(v15, v17);
  }

  else
  {
    (*(v16 + 8))(v15, v17);
  }

  v21 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1Tm((*(v0 + 48) + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_alignmentCoordinator), *(*(v0 + 48) + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_alignmentCoordinator + 24));

  sub_303C08();
  sub_303A28();
  v19 = *(v0 + 176);
  if (v21)
  {
    v23 = *(v0 + 64);
    v22 = *(v0 + 72);
    v24 = *(v0 + 56);

    (*(v23 + 8))(v22, v24);
    goto LABEL_10;
  }

  v27 = *(v0 + 64);
  v28 = *(v0 + 72);
  v29 = *(v0 + 56);

  (*(v27 + 8))(v28, v29);
  sub_1C85F0(v19);

  v25 = *(v0 + 8);
LABEL_11:

  return v25();
}

uint64_t sub_1CFF34()
{
  v1 = *(v0 + 176);

  sub_1C85F0(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D0008(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408520);
  v2[10] = swift_task_alloc();
  v3 = sub_303E78();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_307CF8();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408030);
  v2[17] = swift_task_alloc();
  v5 = _s9ViewModelC11EpisodeDataOMa(0);
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_1D01FC, 0, 0);
}

uint64_t sub_1D01FC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[22] = Strong;
  if (!Strong)
  {
    sub_1D2728();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    goto LABEL_5;
  }

  v2 = Strong;
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[17];
  v6 = OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_episodeData;
  swift_beginAccess();
  sub_EB00(v2 + v6, v5, &qword_408030);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_EB68(v0[17], &qword_408030);
    sub_1D2728();
    swift_allocError();
    *v7 = 3;
    swift_willThrow();

    goto LABEL_5;
  }

  v12 = v0[20];
  v11 = v0[21];
  sub_1C8528(v0[17], v11);
  sub_1C858C(v11, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v0[23] = *v12;
  if (EnumCaseMultiPayload == 1)
  {
    v14 = v0[20];
    v16 = v0[15];
    v15 = v0[16];
    v17 = v0[14];
    v18 = v0[11];
    v19 = v0[12];
    v20 = v0[10];

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408038);
    (*(v16 + 32))(v15, v14 + *(v21 + 48), v17);
    sub_307C78();
    v22 = (*(v19 + 48))(v20, 1, v18);
    v23 = v0[21];
    v25 = v0[15];
    v24 = v0[16];
    v26 = v0[14];
    if (v22 != 1)
    {
      v34 = v0[12];
      v33 = v0[13];
      v36 = v0[10];
      v35 = v0[11];
      v38 = v0[8];

      (*(v25 + 8))(v24, v26);
      sub_1C85F0(v23);
      v37 = *(v34 + 32);
      v37(v33, v36, v35);
      v37(v38, v33, v35);

      v9 = v0[1];
      goto LABEL_6;
    }

    sub_EB68(v0[10], &qword_408520);
    sub_1D2728();
    swift_allocError();
    *v27 = 2;
    swift_willThrow();

    (*(v25 + 8))(v24, v26);
    sub_1C85F0(v23);
LABEL_5:

    v9 = v0[1];
LABEL_6:

    return v9();
  }

  v28 = sub_309A68();
  v30 = v29;
  v0[24] = v29;
  v31 = swift_task_alloc();
  v0[25] = v31;
  *v31 = v0;
  v31[1] = sub_1D0648;
  v32 = v0[8];

  return sub_1D0904(v32, v28, v30);
}

uint64_t sub_1D0648()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1D0840;
  }

  else
  {
    v2 = sub_1D077C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1D077C()
{
  v1 = *(v0 + 168);

  sub_1C85F0(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D0840()
{
  v1 = *(v0 + 168);

  sub_1C85F0(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D0904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408520);
  v3[7] = swift_task_alloc();
  v4 = sub_30CB08();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_30C468();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_1D0A5C, 0, 0);
}

uint64_t sub_1D0A5C()
{
  sub_124C4(0, &qword_408568);
  v1 = sub_30CC08();
  sub_30C488();
  v2 = sub_30CBE8();
  v0[14] = v2;
  v3 = v2;
  v4 = v0[10];
  v5 = v0[8];
  v6 = v0[9];
  v8 = v0[5];
  v7 = v0[6];
  (*(v0[12] + 8))(v0[13], v0[11]);

  v9 = swift_allocObject();
  v0[15] = v9;
  v9[2] = v3;
  v9[3] = v8;
  v9[4] = v7;
  (*(v6 + 104))(v4, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v5);
  v3;

  v10 = swift_task_alloc();
  v0[16] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40AB30);
  *v10 = v0;
  v10[1] = sub_1D0C94;
  v12 = v0[10];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v12, sub_1D27BC, v9, v11);
}

uint64_t sub_1D0C94()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);

  if (v0)
  {
    v3 = sub_1D0FC4;
  }

  else
  {
    v3 = sub_1D0E18;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1D0E18()
{
  if (!*(v0 + 24))
  {
    goto LABEL_4;
  }

  v1 = *(v0 + 56);
  sub_303E68();
  v2 = sub_303E78();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_EB68(*(v0 + 56), &qword_408520);
LABEL_4:
    v4 = *(v0 + 112);
    sub_1D2728();
    swift_allocError();
    *v5 = 2;
    swift_willThrow();

    v6 = *(v0 + 8);
    goto LABEL_6;
  }

  v7 = *(v0 + 56);
  v8 = *(v0 + 32);

  (*(v3 + 32))(v8, v7, v2);

  v6 = *(v0 + 8);
LABEL_6:

  return v6();
}

uint64_t sub_1D0FC4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D1050(uint64_t *a1@<X8>)
{
  v3 = sub_30CAF8();
  if (!v1)
  {
    if (v3)
    {
      v4 = v3;
      v5 = [v3 priceType];

      if (v5)
      {
        v6 = sub_30C0D8();
        v8 = v7;
      }

      else
      {
        v6 = 0;
        v8 = 0;
      }

      *a1 = v6;
      a1[1] = v8;
    }

    else
    {
      *a1 = 0;
      a1[1] = 0;
    }
  }
}

uint64_t sub_1D10F4()
{
  swift_unknownObjectWeakDestroy();

  sub_EB68(v0 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_transcriptSource, &qword_408E60);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_transcriptProvider);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_episodeController);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_storeDataProvider);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_alignmentCoordinator);

  v1 = OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4080D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_EB68(v0 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_transcriptModel, &qword_408428);

  sub_EB68(v0 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_episodeOffer, &qword_408028);
  v3 = OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel__margin;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408430);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel__episodeLockup;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408E50);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  sub_EB68(v0 + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_episodeData, &qword_408030);
  return v0;
}

uint64_t sub_1D1360()
{
  sub_1D10F4();

  return swift_deallocClassInstance();
}

void sub_1D13E0()
{
  sub_1D17BC(319, &qword_4081E8, &type metadata accessor for MetadataSource, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1D176C();
    if (v1 <= 0x3F)
    {
      sub_1D17BC(319, &qword_4081F8, &type metadata accessor for TranscriptModel, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1D17BC(319, &qword_408200, &type metadata accessor for EpisodeOffer, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1D17BC(319, &qword_408208, type metadata accessor for UIEdgeInsets, &type metadata accessor for Published);
          if (v4 <= 0x3F)
          {
            sub_1D1820();
            if (v5 <= 0x3F)
            {
              sub_1D17BC(319, &unk_408220, _s9ViewModelC11EpisodeDataOMa, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D176C()
{
  if (!qword_4081F0)
  {
    v0 = sub_304E38();
    if (!v1)
    {
      atomic_store(v0, &qword_4081F0);
    }
  }
}

void sub_1D17BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D1820()
{
  if (!qword_408210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_408218);
    v0 = sub_304E38();
    if (!v1)
    {
      atomic_store(v0, &qword_408210);
    }
  }
}

void sub_1D18F4()
{
  sub_1D1968();
  if (v0 <= 0x3F)
  {
    sub_1D19B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D1968()
{
  if (!qword_4083F0)
  {
    v0 = sub_309A78();
    if (!v1)
    {
      atomic_store(v0, &qword_4083F0);
    }
  }
}

void sub_1D19B0()
{
  if (!qword_4083F8)
  {
    sub_309548();
    sub_307CF8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_4083F8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_23ShelfKitCollectionViews37EpisodeDetailTranscriptViewControllerC0H5ModelC5StateO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1D1A5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_304D38();
  *a1 = result;
  return result;
}

uint64_t sub_1D1AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4084A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-1] - v8;
  sub_30ABF8();
  (*(v6 + 16))(v9, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  *(v11 + ((v7 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v12 = sub_124C4(0, &qword_3FBF20);
  v13 = sub_30C8F8();
  v16[3] = v12;
  v16[4] = &protocol witness table for OS_dispatch_queue;
  v16[0] = v13;
  sub_30BE98();

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_1D1C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3041E8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = *(a1 + 8);
  if (*(a1 + 16) == 1)
  {
    sub_304138();
    swift_errorRetain();
    v12 = sub_3041D8();
    v13 = sub_30C798();
    sub_1D23A4(v11, v10, 1);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23[0] = a2;
      v24 = v15;
      *v14 = 136446723;
      swift_getErrorValue();
      v16 = sub_30D788();
      v18 = sub_191264(v16, v17, &v24);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2160;
      *(v14 + 14) = 1752392040;
      *(v14 + 22) = 2081;
      v23[1] = a3;
      sub_28A88();
      v19 = sub_30D6D8();
      v21 = sub_191264(v19, v20, &v24);

      *(v14 + 24) = v21;
      _os_log_impl(&dword_0, v12, v13, "Error %{public}s fetching episode uuid for %{private,mask.hash}s.", v14, 0x20u);
      swift_arrayDestroy();
    }

    (*(v7 + 8))(v9, v6);
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v24 = *a1;
    v25 = v10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4084A0);
  return sub_30C408();
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D1F78()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1D1FC8()
{
  v1 = sub_3036A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D20D0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_3036A8() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_F4FC;

  return sub_1CAC10(a1, v9, v10, v11, v1 + v6, v12, v13, v14);
}

uint64_t sub_1D225C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4084A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D22FC(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4084A0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D1C80(a1, v1 + v4, v5);
}

uint64_t sub_1D23A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void *sub_1D23B4(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1D23D4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_4B120;

  return sub_1D0008(a1, v1);
}

uint64_t sub_1D2470()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1D24B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1D251C()
{
  v1 = sub_303E78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D25E0(uint64_t a1)
{
  v4 = *(sub_303E78() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_F4FC;

  return sub_1CDAD4(a1, v6, v7, v1 + v5);
}

unint64_t sub_1D26D0()
{
  result = qword_408558;
  if (!qword_408558)
  {
    sub_30AEF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_408558);
  }

  return result;
}

unint64_t sub_1D2728()
{
  result = qword_408560;
  if (!qword_408560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_408560);
  }

  return result;
}

uint64_t sub_1D277C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1D2800(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2868()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1D28A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_4B120;

  return sub_1CEFA4();
}

unint64_t sub_1D295C()
{
  result = qword_408570;
  if (!qword_408570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_408570);
  }

  return result;
}

uint64_t objectdestroy_73Tm()
{
  v1 = sub_307CF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D2A8C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_307CF8() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

unint64_t sub_1D2B40()
{
  result = qword_4085B0;
  if (!qword_4085B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4085B0);
  }

  return result;
}

unint64_t sub_1D2B98()
{
  result = qword_4085B8;
  if (!qword_4085B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4085B8);
  }

  return result;
}

char *sub_1D2C00(uint64_t a1, uint64_t a2, int a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  LODWORD(v66) = a3;
  ObjectType = swift_getObjectType();
  v16 = sub_302AB8();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400A80);
  __chkstk_darwin(v20 - 8);
  v22 = &v65 - v21;
  v23 = &v8[OBJC_IVAR____TtC23ShelfKitCollectionViews24HighlightedParagraphView_onDismissMenu];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = &v8[OBJC_IVAR____TtC23ShelfKitCollectionViews24HighlightedParagraphView_playAction];
  *v24 = 0;
  *(v24 + 1) = 0;
  *&v8[OBJC_IVAR____TtC23ShelfKitCollectionViews24HighlightedParagraphView_playButtonMargin] = 0x4044000000000000;
  *&v8[OBJC_IVAR____TtC23ShelfKitCollectionViews24HighlightedParagraphView_playStateMachine] = 0;
  *&v8[OBJC_IVAR____TtC23ShelfKitCollectionViews24HighlightedParagraphView_highlightButton] = [objc_allocWithZone(type metadata accessor for HighlightedParagraphButton()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v25 = [objc_allocWithZone(UIButton) init];
  *&v8[OBJC_IVAR____TtC23ShelfKitCollectionViews24HighlightedParagraphView_playButton] = v25;
  v67 = a1;
  v68 = a2;
  *&v8[OBJC_IVAR____TtC23ShelfKitCollectionViews24HighlightedParagraphView_lockup] = a2;
  *&v8[OBJC_IVAR____TtC23ShelfKitCollectionViews24HighlightedParagraphView_objectGraph] = a1;
  v70.receiver = v8;
  v70.super_class = ObjectType;

  v26 = objc_msgSendSuper2(&v70, "initWithFrame:", a4, a5, a6, a7);
  v27 = OBJC_IVAR____TtC23ShelfKitCollectionViews24HighlightedParagraphView_playButton;
  v28 = v26;
  sub_30D138();
  sub_302998();
  sub_302A08();
  (*(v17 + 8))(v19, v16);
  sub_30D248();
  sub_30D198();
  v29 = sub_30D278();
  (*(*(v29 - 8) + 56))(v22, 0, 1, v29);
  sub_30D2A8();
  v30 = *&v26[v27];
  aBlock[4] = sub_1D3568;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D35C0;
  aBlock[3] = &block_descriptor_39;
  v31 = _Block_copy(aBlock);
  [v30 setConfigurationUpdateHandler:v31];
  _Block_release(v31);
  v32 = *&v26[v27];
  sub_124C4(0, &qword_408080);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = sub_30D0C8();
  [v32 addAction:v33 forControlEvents:64];

  [*&v26[v27] setHidden:(v66 & 1) == 0];
  [*&v26[v27] setTranslatesAutoresizingMaskIntoConstraints:0];
  v34 = v28;
  v35 = *&v26[v27];
  v36 = v34;
  [v36 addSubview:v35];
  sub_1D3424();
  v37 = OBJC_IVAR____TtC23ShelfKitCollectionViews24HighlightedParagraphView_highlightButton;
  [*&v36[OBJC_IVAR____TtC23ShelfKitCollectionViews24HighlightedParagraphView_highlightButton] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v36 addSubview:*&v36[v37]];
  v66 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_32B8D0;
  v39 = [*&v26[v27] trailingAnchor];
  v40 = [v36 trailingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];

  *(v38 + 32) = v41;
  v42 = [*&v26[v27] centerYAnchor];
  v43 = [v36 centerYAnchor];

  v44 = [v42 constraintEqualToAnchor:v43];
  *(v38 + 40) = v44;
  v45 = [*&v26[v27] widthAnchor];
  v46 = OBJC_IVAR____TtC23ShelfKitCollectionViews24HighlightedParagraphView_playButtonMargin;
  v47 = [v45 constraintEqualToConstant:*&v36[OBJC_IVAR____TtC23ShelfKitCollectionViews24HighlightedParagraphView_playButtonMargin]];

  *(v38 + 48) = v47;
  v48 = [*&v26[v27] heightAnchor];
  v49 = [v36 heightAnchor];

  v50 = [v48 constraintEqualToAnchor:v49];
  *(v38 + 56) = v50;
  v51 = [*&v36[v37] leadingAnchor];
  v52 = [v36 leadingAnchor];

  v53 = [v51 constraintEqualToAnchor:v52];
  *(v38 + 64) = v53;
  v54 = [*&v36[v37] topAnchor];
  v55 = [v36 topAnchor];

  v56 = [v54 constraintEqualToAnchor:v55];
  *(v38 + 72) = v56;
  v57 = [*&v36[v37] bottomAnchor];
  v58 = [v36 bottomAnchor];

  v59 = [v57 constraintEqualToAnchor:v58];
  *(v38 + 80) = v59;
  v60 = [*&v36[v37] trailingAnchor];
  v61 = [v36 trailingAnchor];

  v62 = [v60 constraintEqualToAnchor:v61 constant:-*&v36[v46]];
  *(v38 + 88) = v62;
  sub_124C4(0, &qword_403000);
  isa = sub_30C358().super.isa;

  [v66 activateConstraints:isa];

  return v36;
}

void sub_1D3424()
{
  v1 = objc_allocWithZone(UIColor);
  v6[4] = sub_1D38A4;
  v6[5] = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_2EB7C;
  v6[3] = &block_descriptor_5;
  v2 = _Block_copy(v6);
  v3 = [v1 initWithDynamicProvider:v2];
  _Block_release(v2);

  [v0 setBackgroundColor:v3];

  v4 = [v0 layer];
  [v4 setCornerRadius:12.0];

  v5 = [v0 layer];
  [v5 setCornerCurve:kCACornerCurveContinuous];
}

id sub_1D3568(void *a1)
{
  v2 = [a1 state];
  v3 = 1.0;
  if (v2 == &dword_0 + 1)
  {
    v3 = 0.5;
  }

  return [a1 setAlpha:v3];
}

void sub_1D35C0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1D3628()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D367C();
  }
}

void sub_1D367C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEA58);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_309778();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HighlightedParagraphView_lockup))
  {
    v8 = objc_allocWithZone(UIImpactFeedbackGenerator);

    v9 = [v8 initWithStyle:0];
    [v9 impactOccurred];

    sub_309758();
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_E8528(v3);
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      sub_1D3944();
      (*(v5 + 8))(v7, v4);
    }

    sub_1D3E08();
    v10 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HighlightedParagraphView_playAction);
    if (v10)
    {
      v11 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HighlightedParagraphView_playAction + 8);

      v10(v12);

      sub_2B8D4(v10, v11);
    }

    else
    {
    }
  }
}

id sub_1D38A4(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = dbl_32B8E0[v1 == &dword_0 + 2];
  v4 = &selRef_whiteColor;
  if (v1 != &dword_0 + 2)
  {
    v4 = &selRef_tintColor;
  }

  v5 = [v2 *v4];
  v6 = [v5 colorWithAlphaComponent:v3];

  return v6;
}

uint64_t sub_1D3944()
{
  result = sub_309738();
  if (v3 != -1)
  {
    v4 = result;
    v5 = v2;
    v6 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBDD0);
    sub_30B9A8();
    sub_30BE78();
    v7 = sub_303AF8();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_303988();

    *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HighlightedParagraphView_playStateMachine) = v7;

    sub_303AE8();

    return sub_E1BCC(v4, v5, v6);
  }

  return result;
}

void sub_1D3AA0()
{
  v0 = sub_303748();
  __chkstk_darwin(v0);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_3039A8();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      if (v2[16] & 1) != 0 || (v2[17])
      {
      }

      else
      {
        v5 = v4;
        sub_303998();

        sub_1D3BA4();
      }
    }

    else
    {

      sub_2B454(v2);
    }
  }
}

id sub_1D3BA4()
{
  v1 = sub_306E48();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  aBlock[4] = sub_1D4434;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_914CC;
  aBlock[3] = &block_descriptor_12;
  v7 = _Block_copy(aBlock);
  v8 = v0;

  [v5 animateWithDuration:v7 animations:0.25];
  _Block_release(v7);
  result = [*&v8[OBJC_IVAR____TtC23ShelfKitCollectionViews24HighlightedParagraphView_playButton] imageView];
  if (result)
  {
    v10 = result;
    sub_306E38();
    sub_30C658();

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

id sub_1D3E08()
{
  v1 = sub_306E48();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_306D98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v16 - v11;
  result = [*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24HighlightedParagraphView_playButton) imageView];
  if (result)
  {
    v14 = result;
    sub_306D88();
    sub_306D78();
    v15 = *(v6 + 8);
    v15(v12, v5);
    sub_306E38();
    sub_1D4448();
    sub_30C648();

    (*(v2 + 8))(v4, v1);
    return (v15)(v8, v5);
  }

  return result;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D43B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1D43FC()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1D4448()
{
  result = qword_408658;
  if (!qword_408658)
  {
    sub_306D98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_408658);
  }

  return result;
}

uint64_t sub_1D44C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_303698();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407C20);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D45D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_303698();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407C20);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for ParagraphViewModel()
{
  result = qword_4086B8;
  if (!qword_4086B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D4728()
{
  sub_303698();
  if (v0 <= 0x3F)
  {
    sub_1D47AC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D47AC()
{
  if (!qword_4086C8)
  {
    sub_303628();
    v0 = sub_30D3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_4086C8);
    }
  }
}

NSString sub_1D4804()
{
  result = sub_30C098();
  qword_4295A8 = result;
  return result;
}