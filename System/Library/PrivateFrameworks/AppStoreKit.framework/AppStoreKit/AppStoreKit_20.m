BOOL sub_1E14FF440(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v37 = *a1;
  v38 = v2;
  v3 = a1[3];
  v39 = a1[2];
  v40 = v3;
  v4 = a2[1];
  v41 = *a2;
  v42 = v4;
  v5 = a2[3];
  v43 = a2[2];
  v44 = v5;
  if (v5 >> 60 != 5)
  {
    return 0;
  }

  v6 = a1[1];
  v31[0] = *a1;
  v31[1] = v6;
  v7 = a1[3];
  v31[2] = a1[2];
  v31[3] = v7;
  v33 = 0u;
  v34 = 0u;
  v32 = 4;
  v35 = 0;
  v8 = v40 >> 60;
  v36 = xmmword_1E1B11BA0;
  if ((v40 >> 60) <= 3)
  {
    if (v8 > 1)
    {
    }

    goto LABEL_12;
  }

  if (v8 > 5)
  {
    if (v8 != 6)
    {
      if (v8 == 7)
      {
        v9 = *(&v37 + 1);
      }

      else
      {
        v14 = v39 | *(&v38 + 1);
        if (v40 != 0x8000000000000000 || *(&v37 + 1) | v37 | *(&v40 + 1) | *(&v39 + 1) | v14 | v38)
        {
          v15 = *(&v39 + 1) | *(&v37 + 1) | v14 | v38;
          if ((v40 != 0x8000000000000000 || v37 != 1 || v15) && (v40 != 0x8000000000000000 || v37 != 2 || v15) && (v40 != 0x8000000000000000 || v37 != 3 || v15))
          {
            v13 = v31;
            goto LABEL_13;
          }
        }
      }

LABEL_12:
      sub_1E14FF768(v31);
      v23 = v41;
      v24 = v42;
      v25 = v43;
      v26 = v44;
      v27 = v37;
      v28 = v38;
      v29 = v39;
      v30 = v40;
      sub_1E141CF5C(&v37, v20);
      sub_1E141CF5C(&v41, v20);
      v13 = &v23;
LABEL_13:
      sub_1E14FF768(v13);
      return 1;
    }

LABEL_11:
    v11 = a1[1];
    v23 = *a1;
    v24 = v11;
    v12 = a1[3];
    v25 = a1[2];
    *(&v26 + 1) = *(&v12 + 1);
    *&v26 = v12 & 0xFFFFFFFFFFFFFFFLL;
    sub_1E14FF7D0(&v23, v20);
    goto LABEL_12;
  }

  if (v8 == 4)
  {
    goto LABEL_11;
  }

  v16 = a1[1];
  v20[0] = *a1;
  v20[1] = v16;
  v17 = a1[3];
  v20[2] = a1[2];
  v22 = *(&v17 + 1);
  v21 = v17 & 0xFFFFFFFFFFFFFFFLL;
  sub_1E14FF7D0(v20, &v23);
  sub_1E14FF768(v31);
  v23 = v41;
  v24 = v42;
  v25 = v43;
  v26 = v44;
  v27 = v37;
  v28 = v38;
  v29 = v39;
  v30 = v40;
  v18 = *&v41;
  sub_1E141CF5C(&v37, v19);
  sub_1E141CF5C(&v41, v19);
  sub_1E14FF768(&v23);
  return *v20 < v18;
}

uint64_t sub_1E14FF768(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4E98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E14FF7D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4EA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Annotation.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Annotation.summary.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Annotation.leadingText.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

double Annotation.id.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1E134FD1C(v1 + 112, v5, &qword_1ECEB4EA8);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t Annotation.init(id:title:summary:items:items_V3:shouldAlwaysPresentExpanded:linkAction:expandAction:leadingArtwork:leadingText:prefersSmallLeadingArtwork:expandedArtwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, uint64_t a16)
{
  v21 = a16;
  v22 = a15;
  v48 = a5;
  v49 = a14;
  v46 = a4;
  v47 = a13;
  v44 = a3;
  v45 = a12;
  v42 = a2;
  v43 = a11;
  v41 = a10;
  v23 = sub_1E1AEFEAC();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134FD1C(a1, &v52, &unk_1ECEB5670);
  if (*(&v53 + 1))
  {
    v27 = v53;
    *(a9 + 112) = v52;
    *(a9 + 128) = v27;
    *(a9 + 144) = v54;
  }

  else
  {
    sub_1E1AEFE9C();
    v28 = sub_1E1AEFE7C();
    v40 = a15;
    v29 = a8;
    v30 = v28;
    v39 = a6;
    v32 = v31;
    (*(v24 + 8))(v26, v23);
    v50 = v30;
    v51 = v32;
    a8 = v29;
    v22 = v40;
    v21 = a16;
    a6 = v39;
    sub_1E1AF6F6C();
    sub_1E1308058(&v52, &unk_1ECEB5670);
  }

  result = sub_1E1308058(a1, &unk_1ECEB5670);
  v34 = v44;
  *a9 = v42;
  *(a9 + 8) = v34;
  v35 = v48;
  *(a9 + 16) = v46;
  *(a9 + 24) = v35;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8 & 1;
  v36 = v43;
  *(a9 + 56) = v41;
  *(a9 + 64) = v36;
  v37 = v47;
  *(a9 + 72) = v45;
  *(a9 + 80) = v37;
  *(a9 + 88) = v49;
  *(a9 + 96) = v22 & 1;
  *(a9 + 104) = v21;
  return result;
}

uint64_t Annotation.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a2;
  v75 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v73 = &v71 - v5;
  v99 = sub_1E1AF39DC();
  v82 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v79 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AEFEAC();
  v78 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF380C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v74 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v72 = &v71 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v71 = &v71 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v71 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v71 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v71 - v24;
  v81 = a1;
  sub_1E1AF381C();
  v26 = sub_1E1AF37CC();
  if (v27)
  {
    v84 = v26;
    v85 = v27;
  }

  else
  {
    sub_1E1AEFE9C();
    v28 = sub_1E1AEFE7C();
    v30 = v29;
    (*(v78 + 8))(v9, v7);
    v84 = v28;
    v85 = v30;
  }

  sub_1E1AF6F6C();
  v31 = *(v11 + 8);
  v32 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v31(v25, v10);
  v33 = v31;
  v97[0] = v86;
  v97[1] = v87;
  v98 = v88;
  v34 = v81;
  sub_1E1AF381C();
  v35 = sub_1E1AF37CC();
  v37 = v36;
  v33(v23, v10);
  v38 = v83;
  if (v37)
  {
    v89[0] = v35;
    v89[1] = v37;
    sub_1E1AF381C();
    v39 = sub_1E1AF37CC();
    v41 = v40;
    v33(v20, v10);
    v89[2] = v39;
    v89[3] = v41;
    sub_1E1AF381C();
    v42 = *(v82 + 16);
    v43 = v38;
    v78 = v82 + 16;
    v77 = v42;
    v42(v79, v38, v99);
    type metadata accessor for AnnotationItem();
    sub_1E15016DC(qword_1EE1F43C8, type metadata accessor for AnnotationItem);
    v89[4] = sub_1E1AF630C();
    v44 = v71;
    sub_1E1AF381C();
    v45 = v73;
    sub_1E1AF374C();
    v46 = v45;
    v33(v44, v10);
    v47 = sub_1E1AF5A6C();
    v48 = *(v47 - 8);
    v49 = (*(v48 + 48))(v46, 1, v47);
    if (v49 == 1)
    {
      sub_1E1308058(v46, &qword_1ECEB1F90);
      v50 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      MEMORY[0x1EEE9AC00](v49);
      v71 = v10;
      v54 = v46;
      *(&v71 - 2) = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4EB0);
      v55 = v80;
      v50 = sub_1E1AF59FC();
      v80 = v55;
      v34 = v81;
      v56 = v54;
      v10 = v71;
      (*(v48 + 8))(v56, v47);
    }

    v89[5] = v50;
    v57 = v72;
    sub_1E1AF381C();
    v58 = sub_1E1AF370C();
    v33(v57, v10);
    v90 = v58 & 1;
    type metadata accessor for Action();
    sub_1E1AF381C();
    v59 = static Action.tryToMakeInstance(byDeserializing:using:)(v20, v43);
    v33(v20, v10);
    v91 = v59;
    sub_1E1AF381C();
    v60 = static Action.tryToMakeInstance(byDeserializing:using:)(v20, v43);
    v33(v20, v10);
    v92 = v60;
    type metadata accessor for Artwork();
    sub_1E1AF381C();
    v76 = v32;
    v73 = v33;
    v61 = v79;
    v62 = v10;
    v77(v79, v43, v99);
    v81 = sub_1E15016DC(&qword_1EE1E4BB8, type metadata accessor for Artwork);
    sub_1E1AF464C();
    sub_1E1AF381C();
    v63 = sub_1E1AF37CC();
    v64 = v34;
    v66 = v65;
    v67 = v73;
    (v73)(v20, v10);
    v93 = v63;
    v94 = v66;
    v68 = v74;
    sub_1E1AF381C();
    LOBYTE(v63) = sub_1E1AF370C();
    v67(v68, v10);
    v95 = v63 & 1;
    sub_1E1AF381C();
    v69 = v83;
    v70 = v99;
    v77(v61, v83, v99);
    sub_1E1AF464C();
    v67(v64, v62);
    v96 = v86;
    sub_1E1500704(v89, v75);
    (*(v82 + 8))(v69, v70);
    return sub_1E150073C(v89);
  }

  else
  {
    v51 = sub_1E1AF5A7C();
    sub_1E15016DC(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v52 = 0x656C746974;
    v52[1] = 0xE500000000000000;
    v52[2] = &type metadata for Annotation;
    (*(*(v51 - 8) + 104))(v52, *MEMORY[0x1E69AB690], v51);
    swift_willThrow();
    v33(v34, v10);
    (*(v82 + 8))(v38, v99);
    return sub_1E1308058(v97, &qword_1ECEB4EA8);
  }
}

uint64_t sub_1E150076C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  boxed_opaque_existential_0 = a2;
  v5 = sub_1E1AF39DC();
  v6 = *(v5 - 8);
  v120 = v5;
  v121 = v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v103 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v104 = &v102 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v107 = &v102 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v111 = &v102 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v112 = &v102 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v114 = &v102 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v115 = &v102 - v19;
  v20 = sub_1E1AF380C();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v102 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v105 = &v102 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v106 = &v102 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v109 = &v102 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v108 = &v102 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v110 = &v102 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v102 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = &v102 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = (&v102 - v41);
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v102 - v43;
  v119 = a1;
  sub_1E1AF381C();
  v45 = sub_1E1AF37CC();
  v47 = v46;
  v118 = v21;
  v49 = v21[1];
  v48 = (v21 + 1);
  v50 = v44;
  v51 = v20;
  v116 = v49;
  result = (v49)(v50, v20);
  if (!v47)
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v113 = a3;
  if (v45 == 0x656C62616B6E696CLL && v47 == 0xEC00000074786554 || (sub_1E1AF74AC() & 1) != 0)
  {
    v112 = v48;

    (v118[2])(v42, v119, v20);
    v53 = v120;
    v54 = v121;
    v119 = v51;
    v55 = *(v121 + 16);
    v56 = v115;
    v55(v115, boxed_opaque_existential_0, v120);
    v57 = type metadata accessor for LinkableTextAnnotationItem(0);
    v58 = v113;
    v111 = v57;
    v113[3] = v57;
    *(v58 + 32) = sub_1E15016DC(&qword_1EE1EA678, type metadata accessor for LinkableTextAnnotationItem);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v58);
    sub_1E1AEFE9C();
    v118 = v42;
    sub_1E1AF381C();
    v59 = v114;
    v55(v114, v56, v53);
    type metadata accessor for LinkableText();
    swift_allocObject();
    v60 = v122;
    v61 = LinkableText.init(deserializing:using:)(v39, v59);
    if (v60)
    {
      (*(v54 + 8))(v56, v53);
      v116(v118, v119);
      v62 = sub_1E1AEFEAC();
      (*(*(v62 - 8) + 8))(boxed_opaque_existential_0, v62);
      v63 = v60;
LABEL_7:

      result = __swift_deallocate_boxed_opaque_existential_1(v58);
      *(v58 + 32) = 0;
      *v58 = 0u;
      *(v58 + 16) = 0u;
      return result;
    }

    v64 = v61;
    (*(v54 + 8))(v56, v53);
    result = (v116)(v118, v119);
    *(boxed_opaque_existential_0 + *(v111 + 5)) = v64;
    return result;
  }

  v65 = v121;
  if (v45 == 0x6E6F74747562 && v47 == 0xE600000000000000 || (sub_1E1AF74AC() & 1) != 0)
  {

    (v118[2])(v36, v119, v20);
    v66 = v112;
    (*(v65 + 16))(v112, boxed_opaque_existential_0, v120);
    v67 = type metadata accessor for ButtonAnnotationItem(0);
    v68 = v113;
    v113[3] = v67;
    *(v68 + 32) = sub_1E15016DC(&qword_1EE1EDBE0, type metadata accessor for ButtonAnnotationItem);
    v69 = __swift_allocate_boxed_opaque_existential_0(v68);
    v70 = v122;
    result = ButtonAnnotationItem.init(deserializing:using:)(v36, v66, v69);
    if (v70)
    {

      result = __swift_deallocate_boxed_opaque_existential_1(v68);
      *(v68 + 32) = 0;
      *v68 = 0u;
      *(v68 + 16) = 0u;
    }

    return result;
  }

  v71 = v120;
  if (v45 == 0x7269615074786574 && v47 == 0xE800000000000000 || (sub_1E1AF74AC() & 1) != 0)
  {

    v72 = v110;
    (v118[2])(v110, v119, v20);
    v73 = v111;
    (*(v65 + 16))(v111, boxed_opaque_existential_0, v71);
    v74 = type metadata accessor for TextPairAnnotationItem(0);
    v75 = v113;
    v113[3] = v74;
    *(v75 + 32) = sub_1E15016DC(&qword_1ECEB4EC0, type metadata accessor for TextPairAnnotationItem);
    v76 = __swift_allocate_boxed_opaque_existential_0(v75);
    v77 = v122;
    result = TextPairAnnotationItem.init(deserializing:using:)(v72, v73, v76);
    if (!v77)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v45 == 0x726563617073 && v47 == 0xE600000000000000 || (sub_1E1AF74AC() & 1) != 0)
  {

    v78 = v108;
    (v118[2])(v108, v119, v20);
    v79 = type metadata accessor for SpacerAnnotationItem(0);
    v80 = v113;
    v113[3] = v79;
    v80[4] = sub_1E15016DC(&qword_1EE1ED590, type metadata accessor for SpacerAnnotationItem);
    v81 = __swift_allocate_boxed_opaque_existential_0(v80);
    sub_1E1AEFE9C();
    v82 = v109;
    sub_1E1AF381C();
    sub_1E1501688();
    sub_1E1AF369C();
    v83 = v116;
    v116(v82, v20);
    result = v83(v78, v20);
    *(v81 + *(v79 + 20)) = v123;
    return result;
  }

  if (v45 == 0xD000000000000011 && 0x80000001E1B63A50 == v47 || (sub_1E1AF74AC() & 1) != 0)
  {

    v84 = v106;
    (v118[2])(v106, v119, v20);
    v85 = v107;
    (*(v65 + 16))(v107, boxed_opaque_existential_0, v71);
    v86 = type metadata accessor for TextEncapsulationAnnotationItem(0);
    v75 = v113;
    v113[3] = v86;
    *(v75 + 32) = sub_1E15016DC(&qword_1EE1D5FA8, type metadata accessor for TextEncapsulationAnnotationItem);
    v87 = __swift_allocate_boxed_opaque_existential_0(v75);
    v77 = v122;
    result = TextEncapsulationAnnotationItem.init(deserializing:using:)(v84, v85, v87);
    if (!v77)
    {
      return result;
    }

LABEL_19:

    result = __swift_deallocate_boxed_opaque_existential_1(v75);
    *(v75 + 32) = 0;
    *v75 = 0u;
    *(v75 + 16) = 0u;
    return result;
  }

  if (v45 == 0x6B726F77747261 && v47 == 0xE700000000000000)
  {

    v88 = v105;
  }

  else
  {
    v89 = sub_1E1AF74AC();

    v88 = v105;
    if ((v89 & 1) == 0)
    {
      v101 = v113;
      v113[4] = 0;
      *v101 = 0u;
      *(v101 + 1) = 0u;
      return result;
    }
  }

  v90 = v119;
  v91 = v118[2];
  v119 = v20;
  v91(v88, v90, v20);
  v92 = *(v65 + 16);
  v93 = v104;
  v92(v104, boxed_opaque_existential_0, v71);
  v94 = type metadata accessor for ArtworkAnnotationItem(0);
  v58 = v113;
  boxed_opaque_existential_0 = v94;
  v113[3] = v94;
  *(v58 + 32) = sub_1E15016DC(&qword_1ECEB4EB8, type metadata accessor for ArtworkAnnotationItem);
  v118 = __swift_allocate_boxed_opaque_existential_0(v58);
  sub_1E1AEFE9C();
  type metadata accessor for Artwork();
  v95 = v102;
  sub_1E1AF381C();
  v96 = v103;
  v92(v103, v93, v71);
  v97 = v122;
  v98 = Artwork.__allocating_init(deserializing:using:)(v95, v96);
  if (v97)
  {
    (*(v121 + 8))(v93, v71);
    v116(v105, v119);
    v99 = sub_1E1AEFEAC();
    (*(*(v99 - 8) + 8))(v118, v99);
    v63 = v97;
    goto LABEL_7;
  }

  v100 = v98;
  (*(v121 + 8))(v93, v71);
  result = (v116)(v105, v119);
  *(v118 + *(boxed_opaque_existential_0 + 5)) = v100;
  return result;
}

double Annotation.clickSender.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_1E150145C()
{
  result = qword_1EE1F8418;
  if (!qword_1EE1F8418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1F8418);
  }

  return result;
}

double sub_1E15014B0@<D0>(uint64_t a1@<X8>)
{
  sub_1E134FD1C(v1 + 112, v5, &qword_1ECEB4EA8);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_1E1501520(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E1501568(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1E6901640);
  }

  return result;
}

unint64_t sub_1E1501688()
{
  result = qword_1EE1DB498[0];
  if (!qword_1EE1DB498[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1DB498);
  }

  return result;
}

uint64_t sub_1E15016DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ArcadeWelcomeContentLayout.init(metrics:titleText:subtitleText:items:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1E150179C(a1, a5);
  v9 = type metadata accessor for ArcadeWelcomeContentLayout(0);
  sub_1E1308EC0(a2, a5 + v9[5]);
  result = sub_1E1308EC0(a3, a5 + v9[6]);
  *(a5 + v9[7]) = a4;
  return result;
}

uint64_t sub_1E150179C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArcadeWelcomeContentLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ArcadeWelcomeContentLayout.Metrics.init(titleTopSpace:titleInsets:subtitleTopSpace:subtitleFontSource:subtitleInsets:itemsMinTopPosition:itemsTopSpace:itemsBottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, double *a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>, double a13@<D5>, double a14@<D6>, double a15@<D7>)
{
  sub_1E1308EC0(a1, a7);
  a7[5] = a8;
  a7[6] = a9;
  a7[7] = a10;
  a7[8] = a11;
  sub_1E1308EC0(a2, (a7 + 9));
  v29 = type metadata accessor for ArcadeWelcomeContentLayout.Metrics(0);
  v30 = v29[7];
  v31 = sub_1E1AF105C();
  (*(*(v31 - 8) + 32))(a7 + v30, a3, v31);
  v32 = (a7 + v29[8]);
  *v32 = a12;
  v32[1] = a13;
  v32[2] = a14;
  v32[3] = a15;
  sub_1E1308EC0(a4, a7 + v29[9]);
  sub_1E1308EC0(a5, a7 + v29[10]);
  v33 = a7 + v29[11];

  return sub_1E1308EC0(a6, v33);
}

double ArcadeWelcomeContentLayout.measurements(fitting:in:)(void *a1, double a2)
{
  sub_1E1501A1C(a1, v6, a2);
  _VerticalFlowLayout.measurements(fitting:in:)(a2);
  v4 = v3;

  return v4;
}

uint64_t sub_1E1501A1C@<X0>(void *a1@<X0>, char *a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  v75 = a1;
  v68 = a2;
  v6 = sub_1E1AF745C();
  v74 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for ArcadeWelcomeContentLayout.Metrics(0);
  v10 = v71[7];
  sub_1E14339B8();
  v11 = sub_1E1AF699C();
  v72 = v10;
  v12 = sub_1E1AF104C();

  sub_1E1AF6BBC();
  __swift_project_boxed_opaque_existential_1Tm(v4 + 9, *(v4 + 12));
  sub_1E13BC274();
  v13 = v75;
  sub_1E1AF12DC();
  v14 = *(v7 + 8);
  v73 = v7 + 8;
  v14(v9, v6);
  v15 = v14;
  v16 = [v13 traitCollection];
  v17 = sub_1E1AF104C();

  sub_1E1AF6BBC();
  v19 = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB26B8);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1E1B02CD0;
  v21 = type metadata accessor for ArcadeWelcomeContentLayout(0);
  __swift_project_boxed_opaque_existential_1Tm(&v4[*(v21 + 20)], *&v4[*(v21 + 20) + 24]);
  sub_1E1AF119C();
  __swift_project_boxed_opaque_existential_1Tm(v4, *(v4 + 3));
  sub_1E13BC274();
  v22 = v75;
  sub_1E1AF12DC();
  v24 = v23;
  v15(v9, v74);
  v25 = MEMORY[0x1E69AB858];
  *(&v78 + 1) = MEMORY[0x1E69E7DE0];
  *&v79 = MEMORY[0x1E69AB858];
  *&v77 = v24;
  *&v95 = 0;
  v93 = 0u;
  v94 = 0u;
  sub_1E1300B24(v87, v20 + 32);
  sub_1E1300B24(&v77, v20 + 80);
  sub_1E141E104(&v93, v20 + 120);
  *(v20 + 72) = 257;
  *(v20 + 160) = 8;
  sub_1E141E174(&v93);
  __swift_destroy_boxed_opaque_existential_1(v87);
  __swift_destroy_boxed_opaque_existential_1(&v77);
  *&v76 = v21;
  __swift_project_boxed_opaque_existential_1Tm(&v4[*(v21 + 24)], *&v4[*(v21 + 24) + 24]);
  v26 = v71;
  sub_1E1AF119C();
  v27 = [v22 traitCollection];
  v28 = sub_1E1AF105C();
  *(&v78 + 1) = v28;
  *&v79 = MEMORY[0x1E69AB870];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v77);
  (*(*(v28 - 8) + 16))(boxed_opaque_existential_0, &v72[v4], v28);
  sub_1E1AF054C();
  v31 = v30;

  __swift_destroy_boxed_opaque_existential_1(&v77);
  *(&v78 + 1) = MEMORY[0x1E69E7DE0];
  *&v79 = v25;
  *&v77 = v19 + v31;
  *&v95 = 0;
  v93 = 0u;
  v94 = 0u;
  sub_1E1300B24(v87, v20 + 168);
  sub_1E1300B24(&v77, v20 + 216);
  sub_1E141E104(&v93, v20 + 256);
  *(v20 + 208) = 257;
  *(v20 + 296) = 8;
  sub_1E141E174(&v93);
  __swift_destroy_boxed_opaque_existential_1(v87);
  __swift_destroy_boxed_opaque_existential_1(&v77);
  v96 = 1;
  v97 = v20;
  LOBYTE(v87[0]) = 1;
  *(&v87[0] + 1) = v20;

  _VerticalFlowLayout.measurements(fitting:in:)(a3);
  v33 = v32;

  v34 = v26[9];
  v72 = v4;
  __swift_project_boxed_opaque_existential_1Tm(&v4[v34], *&v4[v34 + 24]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v36 = v35;
  v70 = v15;
  result = (v15)(v9, v74);
  if (v36 - v33 < 0.0)
  {
    v38 = 0.0;
  }

  else
  {
    v38 = v36 - v33;
  }

  if (v38 <= 0.0)
  {
    v43 = MEMORY[0x1E69E7DE0];
    v44 = v76;
  }

  else
  {
    v39 = sub_1E1AF196C();
    swift_allocObject();
    v40 = sub_1E1AF195C();
    *(&v78 + 1) = v39;
    *&v79 = MEMORY[0x1E69ABA68];
    *&v77 = v40;
    *(&v94 + 1) = MEMORY[0x1E69E63B0];
    *&v95 = MEMORY[0x1E69ABBA8];
    v92[4] = MEMORY[0x1E69ABBA8];
    *&v93 = 0;
    v92[3] = MEMORY[0x1E69E63B0];
    v92[0] = 0;
    sub_1E1300B24(&v77, v87);
    sub_1E1300B24(&v93, v89);
    sub_1E141E104(v92, v90);
    WORD4(v88) = 256;
    v91 = 8;
    sub_1E141E174(v92);
    __swift_destroy_boxed_opaque_existential_1(&v93);
    __swift_destroy_boxed_opaque_existential_1(&v77);
    sub_1E149BCE4(v87, &v77);
    v41 = *(v20 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v97 = v20;
    if (!isUniquelyReferenced_nonNull_native || v41 >= *(v20 + 24) >> 1)
    {
      v20 = sub_1E172D4E0(isUniquelyReferenced_nonNull_native, v41 + 1, 1, v20);
      v97 = v20;
    }

    v43 = MEMORY[0x1E69E7DE0];
    v44 = v76;
    sub_1E14F3120(0, 0, 1, &v77);
    v97 = v20;
    result = sub_1E149BD40(v87);
  }

  v45 = 0;
  v46 = *&v72[*(v44 + 28)];
  v69 = v46 + 32;
  v47 = *(v46 + 16);
  while (1)
  {
    v48 = 0uLL;
    v49 = v47;
    v50 = 0uLL;
    v51 = 0uLL;
    if (v45 == v47)
    {
      goto LABEL_14;
    }

    if (v45 >= *(v46 + 16))
    {
      break;
    }

    v49 = v45 + 1;
    *&v87[0] = v45;
    result = sub_1E1300B24(v69 + 40 * v45, v87 + 8);
    v48 = v87[0];
    v50 = v87[1];
    v51 = v88;
LABEL_14:
    v93 = v48;
    v94 = v50;
    v95 = v51;
    if (!v51)
    {
      v66 = v97;
      v67 = v68;
      *v68 = v96;
      *(v67 + 1) = v66;
      return result;
    }

    v76 = v48;
    sub_1E1308EC0((&v93 + 8), v92);
    v52 = v76;
    v53 = 0;
    v54 = 0;
    if (!v76)
    {
      __swift_project_boxed_opaque_existential_1Tm(&v72[v71[10]], *&v72[v71[10] + 24]);
      sub_1E13BC274();
      v43 = MEMORY[0x1E69E7DE0];
      sub_1E1AF12DC();
      v54 = v55;
      v70(v9, v74);
    }

    *(&v78 + 1) = v43;
    *&v79 = MEMORY[0x1E69AB858];
    *&v77 = v54;
    if (v52 == *(v46 + 16) - 1)
    {
      __swift_project_boxed_opaque_existential_1Tm(&v72[v71[11]], *&v72[v71[11] + 24]);
      sub_1E13BC274();
      v43 = MEMORY[0x1E69E7DE0];
      sub_1E1AF12DC();
      v53 = v56;
      v70(v9, v74);
    }

    v86[3] = v43;
    v86[4] = MEMORY[0x1E69AB858];
    v86[0] = v53;
    sub_1E1300B24(v92, v87);
    sub_1E1300B24(&v77, v89);
    sub_1E141E104(v86, v90);
    WORD4(v88) = 256;
    v91 = 8;
    sub_1E141E174(v86);
    __swift_destroy_boxed_opaque_existential_1(&v77);
    sub_1E149BCE4(v87, &v77);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1E172D4E0(0, *(v20 + 16) + 1, 1, v20);
    }

    v58 = *(v20 + 16);
    v57 = *(v20 + 24);
    if (v58 >= v57 >> 1)
    {
      v20 = sub_1E172D4E0((v57 > 1), v58 + 1, 1, v20);
    }

    sub_1E149BD40(v87);
    result = __swift_destroy_boxed_opaque_existential_1(v92);
    *(v20 + 16) = v58 + 1;
    v59 = v20 + 136 * v58;
    *(v59 + 32) = v77;
    v60 = v78;
    v61 = v79;
    v62 = v81;
    *(v59 + 80) = v80;
    *(v59 + 96) = v62;
    *(v59 + 48) = v60;
    *(v59 + 64) = v61;
    v63 = v82;
    v64 = v83;
    v65 = v84;
    *(v59 + 160) = v85;
    *(v59 + 128) = v64;
    *(v59 + 144) = v65;
    *(v59 + 112) = v63;
    v97 = v20;
    v45 = v49;
  }

  __break(1u);
  return result;
}

uint64_t ArcadeWelcomeContentLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  Width = CGRectGetWidth(*&a3);
  sub_1E1501A1C(a1, v14, Width);
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(a2, a3, a4, a5, a6);
}

uint64_t sub_1E15023B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  Width = CGRectGetWidth(*&a3);
  sub_1E1501A1C(a1, v14, Width);
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(a2, a3, a4, a5, a6);
}

double sub_1E1502460(void *a1, double a2)
{
  sub_1E1501A1C(a1, v6, a2);
  _VerticalFlowLayout.measurements(fitting:in:)(a2);
  v4 = v3;

  return v4;
}

void sub_1E1502524()
{
  type metadata accessor for ArcadeWelcomeContentLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_1E138432C(319, &qword_1EE1D2AB0);
    if (v1 <= 0x3F)
    {
      sub_1E15025D0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E15025D0()
{
  if (!qword_1EE1D2648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB2AC0);
    v0 = sub_1E1AF635C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1D2648);
    }
  }
}

void sub_1E150265C()
{
  sub_1E138432C(319, &qword_1EE1D2AC0);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIEdgeInsets(319);
    if (v1 <= 0x3F)
    {
      sub_1E1AF105C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t LoadingPagePresenter.pageUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_pageUrl;
  v4 = sub_1E1AEFCCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1E15027F8(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E1502864(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E1363018;
}

uint64_t LoadingPagePresenter.__allocating_init(objectGraph:pageUrl:isIncomingURL:referrerData:)(uint64_t a1, uint64_t a2, char a3, __int128 *a4)
{
  v7 = swift_allocObject();
  v8 = *(a4 + 4);
  v9 = *(a4 + 40);
  *(v7 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_pageAction) = 0;
  v10 = v7 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_referrerData;
  *v10 = xmmword_1E1B04490;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = 0;
  *(v10 + 40) = 0;
  *(v7 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_pageUrl;
  v12 = sub_1E1AEFCCC();
  v13 = *(v12 - 8);
  v22 = *a4;
  v23 = a4[1];
  (*(v13 + 16))(v7 + v11, a2, v12);
  *(v7 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_isIncomingURL) = a3;
  v14 = *v10;
  v15 = *(v10 + 8);
  v16 = *(v10 + 16);
  v17 = *(v10 + 24);
  v18 = *(v10 + 32);
  *v10 = v22;
  *(v10 + 16) = v23;
  *(v10 + 32) = v8;
  v19 = *(v10 + 40);
  *(v10 + 40) = v9;
  sub_1E13DED78(v14, v15, v16, v17, v18, v19);
  v20 = sub_1E138C578(a1, 0, 0, 0);

  (*(v13 + 8))(a2, v12);
  return v20;
}

uint64_t LoadingPagePresenter.init(objectGraph:pageUrl:isIncomingURL:referrerData:)(uint64_t a1, uint64_t a2, char a3, __int128 *a4)
{
  v9 = *(a4 + 4);
  v24 = *(a4 + 40);
  *(v4 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_pageAction) = 0;
  v10 = v4 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_referrerData;
  *v10 = xmmword_1E1B04490;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = 0;
  *(v10 + 40) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_pageUrl;
  v12 = sub_1E1AEFCCC();
  v13 = *(v12 - 8);
  v22 = *a4;
  v23 = a4[1];
  (*(v13 + 16))(v4 + v11, a2, v12);
  *(v4 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_isIncomingURL) = a3;
  v14 = *v10;
  v15 = *(v10 + 8);
  v16 = *(v10 + 16);
  v17 = *(v10 + 24);
  v18 = *(v10 + 32);
  *v10 = v22;
  *(v10 + 16) = v23;
  *(v10 + 32) = v9;
  v19 = *(v10 + 40);
  *(v10 + 40) = v24;
  sub_1E13DED78(v14, v15, v16, v17, v18, v19);
  v20 = sub_1E138C578(a1, 0, 0, 0);

  (*(v13 + 8))(a2, v12);
  return v20;
}

uint64_t sub_1E1502C6C()
{
  v1 = v0;
  v2 = type metadata accessor for ActionIntent();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF504C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if ((*(v0 + 32) & 1) == 0)
  {
    *(v0 + 32) = 1;
    v10 = v0 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v10 + 8);
      ObjectType = swift_getObjectType();
      (*(*(v11 + 16) + 8))(ObjectType);
      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    if (*(v0 + 24))
    {
      *v8 = 1;
      (*(v6 + 104))(v8, *MEMORY[0x1E69AB450], v5);

      sub_1E1AF509C();

      (*(v6 + 8))(v8, v5);
    }

    type metadata accessor for JSIntentDispatcher();
    sub_1E1AF421C();
    sub_1E1AF55EC();
    v29[1] = v30[0];
    v13 = OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_pageUrl;
    v14 = v2[5];
    v15 = sub_1E1AEFCCC();
    (*(*(v15 - 8) + 16))(&v4[v14], v1 + v13, v15);
    v16 = *(v1 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_isIncomingURL);
    v17 = v1 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_referrerData;
    v18 = *(v1 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_referrerData);
    v19 = *(v1 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_referrerData + 8);
    v20 = v4;
    v21 = *(v1 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_referrerData + 16);
    v22 = *(v1 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_referrerData + 24);
    v23 = *(v1 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_referrerData + 32);
    strcpy(v20, "ActionIntent");
    *(v20 + 13) = 0;
    *(v20 + 14) = -5120;
    *(v20 + v2[6]) = v16;
    v24 = v20 + v2[7];
    *v24 = v18;
    *(v24 + 8) = v19;
    *(v24 + 16) = v21;
    *(v24 + 24) = v22;
    *(v24 + 32) = v23;
    v25 = *(v17 + 40);
    *(v24 + 40) = v25;
    sub_1E1AF4C1C();
    sub_1E13E2380(v18, v19, v21, v22, v23, v25);

    sub_1E1AF422C();

    sub_1E1AF4BEC();

    v26 = sub_1E1AF4BFC();

    sub_1E1368108(v20, v26, "AppStoreKit/LoadingPagePresenter.swift", 38, 2);
    v27 = sub_1E1361A80();
    swift_retain_n();
    v28 = sub_1E1AF68EC();
    v30[3] = v27;
    v30[4] = MEMORY[0x1E69AB720];
    v30[0] = v28;
    sub_1E1AF57FC();

    sub_1E14D28AC(v20);
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  return result;
}

uint64_t sub_1E150309C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1E1AF503C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  type metadata accessor for FlowAction();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v31 = v7;
    v32 = v5;
    v33 = v4;
    v11 = (v9 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageData);
    swift_beginAccess();
    v12 = v11[3];
    if (v12)
    {
      v13 = v11[4];
      v14 = __swift_project_boxed_opaque_existential_1Tm(v11, v11[3]);
      v15 = *(v12 - 8);
      v16 = MEMORY[0x1EEE9AC00](v14);
      v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 16))(v18, v16);
      v19 = *(v13 + 8);

      v19(&v36, v12, v13);
      (*(v15 + 8))(v18, v12);
    }

    else
    {
      v37 = 0u;
      v36 = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2DF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4EE8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v39 = 0;
      memset(v38, 0, sizeof(v38));
    }

    sub_1E1503C3C(v38, &v34);
    if (v35)
    {
      sub_1E1308EC0(&v34, &v36);
      sub_1E1308EC0(&v36, &v40);
    }

    else
    {
      sub_1E1308058(&v34, &qword_1ECEB4EF0);
      *(&v37 + 1) = MEMORY[0x1E69E7CA8] + 8;
      if ((swift_dynamicCast() & 1) == 0)
      {
        v42 = 0;
        v40 = 0u;
        v41 = 0u;
      }
    }

    sub_1E1308058(v38, &qword_1ECEB4EF0);
    if (*(&v41 + 1))
    {
      sub_1E1308EC0(&v40, &v43);
      swift_beginAccess();
      if (*(a2 + 24))
      {
        __swift_project_boxed_opaque_existential_1Tm(&v43, *(&v44 + 1));

        v20 = v31;
        sub_1E1AF5B8C();
        v21 = v32;
        v22 = v33;
        (*(v32 + 104))(v20, *MEMORY[0x1E69AB440], v33);
        sub_1E1AF508C();

        (*(v21 + 8))(v20, v22);
        v23 = *(a2 + 24);
      }

      else
      {
        v23 = 0;
      }

      v24 = OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageDataPageRenderMetrics;
      swift_beginAccess();
      *(v10 + v24) = v23;

      __swift_destroy_boxed_opaque_existential_1(&v43);
    }

    else
    {

      sub_1E1308058(&v40, &qword_1ECEB4EF0);
    }
  }

  *(a2 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_pageAction) = v8;

  v25 = a2 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v26 = *(v25 + 8);
    ObjectType = swift_getObjectType();
    v43 = 0u;
    v44 = 0u;
    (*(*(v26 + 8) + 8))(v8, &v43, ObjectType);
    swift_unknownObjectRelease();
    sub_1E1308058(&v43, &qword_1ECEB2DF0);
  }

  swift_beginAccess();
  *(a2 + 32) = 0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v25 + 8);
    v30 = swift_getObjectType();
    (*(*(v29 + 16) + 16))(v30);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E15035FC(void *a1, uint64_t a2)
{
  v4 = sub_1E1AF503C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  *(a2 + 32) = 0;
  v8 = a2 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v9 + 16) + 16))(ObjectType);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v8 + 8);
    v12 = swift_getObjectType();
    (*(*(v11 + 16) + 24))(a1, v12);
    swift_unknownObjectRelease();
  }

  result = swift_beginAccess();
  if (*(a2 + 24))
  {
    *v7 = a1;
    (*(v5 + 104))(v7, *MEMORY[0x1E69AB430], v4);

    v14 = a1;
    sub_1E1AF508C();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_1E1503818()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_pageUrl;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1E13DED78(*(v0 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_referrerData), *(v0 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_referrerData + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_referrerData + 16), *(v0 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_referrerData + 24), *(v0 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_referrerData + 32), *(v0 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_referrerData + 40));
  v3 = v0 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_view;

  return sub_1E1337DEC(v3);
}

uint64_t LoadingPagePresenter.deinit()
{
  v0 = BasePresenter.deinit();
  v1 = OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_pageUrl;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1E13DED78(*(v0 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_referrerData), *(v0 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_referrerData + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_referrerData + 16), *(v0 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_referrerData + 24), *(v0 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_referrerData + 32), *(v0 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_referrerData + 40));
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_view);
  return v0;
}

uint64_t LoadingPagePresenter.__deallocating_deinit()
{
  v0 = BasePresenter.deinit();
  v1 = OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_pageUrl;
  v2 = sub_1E1AEFCCC();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);

  sub_1E13DED78(*(v0 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_referrerData), *(v0 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_referrerData + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_referrerData + 16), *(v0 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_referrerData + 24), *(v0 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_referrerData + 32), *(v0 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_referrerData + 40));
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit20LoadingPagePresenter_view);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LoadingPagePresenter()
{
  result = qword_1EE1DBCD8;
  if (!qword_1EE1DBCD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1503AD4()
{
  result = sub_1E1AEFCCC();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E1503C3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4EF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CappedSizeStaticDimension.init(constant:source:maxSizeCategory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4EF8);
  v7 = swift_allocObject();
  v8 = *(*v7 + 88);
  v9 = sub_1E1AF105C();
  result = (*(*(v9 - 8) + 32))(v7 + v8, a1, v9);
  *(a3 + 8) = v7;
  *(a3 + 16) = a2;
  return result;
}

uint64_t CappedSizeStaticDimension.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(*v3 + 88);
  swift_beginAccess();
  v5 = sub_1E1AF105C();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

void CappedSizeStaticDimension.value(compatibleWith:rounded:)(void *a1, uint64_t a2)
{
  v5 = sub_1E1AF745C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 8);
  v10 = *(v2 + 16);
  v12 = [a1 preferredContentSizeCategory];
  v13 = sub_1E1AF6ACC();

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1E1B12AE0;
    *(v14 + 32) = a1;
    v15 = objc_opt_self();
    v16 = a1;
    *(v14 + 40) = [v15 traitCollectionWithPreferredContentSizeCategory_];
    sub_1E14339B8();
    v17 = sub_1E1AF620C();

    v18 = [v15 traitCollectionWithTraitsFromCollections_];
  }

  else
  {
    v18 = a1;
  }

  v19 = *(*v11 + 88);
  swift_beginAccess();
  v20 = sub_1E1AF105C();
  v25[3] = v20;
  v25[4] = MEMORY[0x1E69AB870];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25);
  (*(*(v20 - 8) + 16))(boxed_opaque_existential_0, v11 + v19, v20);
  sub_1E1AF054C();
  v23 = v22;
  __swift_destroy_boxed_opaque_existential_1(v25);
  v25[0] = v23;
  (*(v6 + 16))(v9, a2, v5);
  v24 = (*(v6 + 88))(v9, v5);
  if (v24 == *MEMORY[0x1E69E7038] || v24 == *MEMORY[0x1E69E7030] || v24 == *MEMORY[0x1E69E7040] || v24 == *MEMORY[0x1E69E7048] || v24 == *MEMORY[0x1E69E7020] || v24 == *MEMORY[0x1E69E7028])
  {
  }

  else
  {
    sub_1E1AF655C();

    (*(v6 + 8))(v9, v5);
  }
}

double CappedSizeStaticDimension.rawValue(in:)(void *a1)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = [a1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  v6 = sub_1E1AF6ACC();

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1E1B12AE0;
    *(v7 + 32) = v4;
    v8 = objc_opt_self();
    v9 = v4;
    *(v7 + 40) = [v8 traitCollectionWithPreferredContentSizeCategory_];
    sub_1E14339B8();
    v10 = sub_1E1AF620C();

    v4 = [v8 traitCollectionWithTraitsFromCollections_];
  }

  v11 = *(*v3 + 88);
  swift_beginAccess();
  v12 = sub_1E1AF105C();
  v17[3] = v12;
  v17[4] = MEMORY[0x1E69AB870];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_0, v3 + v11, v12);
  sub_1E1AF054C();
  v15 = v14;

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v15;
}

UIEdgeInsets __swiftcall CappedSizeStaticDimension.languageAwareOutsets(compatibleWith:)(UITraitCollection compatibleWith)
{
  v3 = sub_1E1AF105C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 8);
  v8 = *(v1 + 16);
  v10 = [(objc_class *)compatibleWith.super.isa preferredContentSizeCategory];
  v11 = sub_1E1AF6ACC();

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1E1B12AE0;
    *(v12 + 32) = compatibleWith;
    v13 = objc_opt_self();
    v14 = compatibleWith.super.isa;
    *(v12 + 40) = [v13 traitCollectionWithPreferredContentSizeCategory_];
    sub_1E14339B8();
    v15 = sub_1E1AF620C();

    v16 = [v13 traitCollectionWithTraitsFromCollections_];
  }

  else
  {
    v16 = compatibleWith.super.isa;
  }

  v17 = *(*v9 + 88);
  swift_beginAccess();
  (*(v4 + 16))(v7, v9 + v17, v3);
  v18 = sub_1E1AF104C();
  (*(v4 + 8))(v7, v3);
  sub_1E1AF6BAC();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = v20;
  v28 = v22;
  v29 = v24;
  v30 = v26;
  result.right = v30;
  result.bottom = v29;
  result.left = v28;
  result.top = v27;
  return result;
}

uint64_t CappedSizeStaticDimension.description.getter()
{
  v1 = sub_1E1AF105C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_1E1AF6FEC();
  v13 = v11;
  v14 = v12;
  MEMORY[0x1E68FECA0](0xD000000000000014, 0x80000001E1B63B20);
  v7 = sub_1E1AF654C();
  MEMORY[0x1E68FECA0](v7);

  MEMORY[0x1E68FECA0](0x656372756F73202CLL, 0xEA0000000000203ALL);
  v8 = *(*v5 + 88);
  swift_beginAccess();
  (*(v2 + 16))(v4, v5 + v8, v1);
  sub_1E1AF714C();
  (*(v2 + 8))(v4, v1);
  MEMORY[0x1E68FECA0](0xD000000000000013, 0x80000001E1B63B40);
  v10 = v6;
  type metadata accessor for UIContentSizeCategory(0);
  sub_1E1AF714C();
  return v13;
}

uint64_t _s11AppStoreKit25CappedSizeStaticDimensionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF105C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - v9;
  if (*a1 == *a2 && (v11 = *(a2 + 8), v23[1] = *(a2 + 16), v12 = *(a1 + 8), v13 = *(*v12 + 88), swift_beginAccess(), v14 = *(v5 + 16), v14(v10, v12 + v13, v4), v15 = *(*v11 + 88), swift_beginAccess(), v14(v7, v11 + v15, v4), LOBYTE(v15) = MEMORY[0x1E68F9D60](v10, v7), v16 = *(v5 + 8), v16(v7, v4), v16(v10, v4), (v15 & 1) != 0))
  {
    v17 = sub_1E1AF5DFC();
    v19 = v18;
    if (v17 == sub_1E1AF5DFC() && v19 == v20)
    {
      v21 = 1;
    }

    else
    {
      v21 = sub_1E1AF74AC();
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t ProductCapability.title.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void *ProductCapability.artworkTintColor.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t ProductCapability.__allocating_init(id:title:caption:captionTrailingArtwork:clickAction:linkAction:artwork:artworkTintColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v14 = a9;
  v15 = sub_1E1AEFEAC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  sub_1E138853C(a1, &v38);
  if (*(&v39 + 1))
  {
    v20 = v39;
    *(v19 + 72) = v38;
    *(v19 + 88) = v20;
    *(v19 + 104) = v40;
  }

  else
  {
    sub_1E1AEFE9C();
    v21 = sub_1E1AEFE7C();
    v31 = a9;
    v32 = a6;
    v22 = a5;
    v23 = a8;
    v24 = v21;
    v25 = a7;
    v27 = v26;
    (*(v16 + 8))(v18, v15);
    v36 = v24;
    v37 = v27;
    a8 = v23;
    a5 = v22;
    a7 = v25;
    v14 = v31;
    a6 = v32;
    sub_1E1AF6F6C();
    sub_1E13E2E98(&v38);
  }

  sub_1E13E2E98(a1);
  v28 = v34;
  *(v19 + 32) = v33;
  *(v19 + 40) = v28;
  *(v19 + 112) = a6;
  v29 = v35;
  *(v19 + 16) = a7;
  *(v19 + 24) = v29;
  *(v19 + 48) = a5;
  *(v19 + 56) = a8;
  *(v19 + 64) = v14;
  return v19;
}

uint64_t ProductCapability.init(id:title:caption:captionTrailingArtwork:clickAction:linkAction:artwork:artworkTintColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v35 = a3;
  v36 = a4;
  v37 = a2;
  v16 = a9;
  v17 = sub_1E1AEFEAC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E138853C(a1, &v40);
  if (*(&v41 + 1))
  {
    v43 = v40;
    v44 = v41;
    v45 = v42;
  }

  else
  {
    sub_1E1AEFE9C();
    v21 = sub_1E1AEFE7C();
    v33 = a9;
    v34 = a6;
    v22 = a5;
    v23 = a8;
    v24 = v21;
    v25 = a7;
    v27 = v26;
    (*(v18 + 8))(v20, v17);
    v38 = v24;
    v39 = v27;
    a8 = v23;
    a5 = v22;
    a7 = v25;
    v16 = v33;
    a6 = v34;
    sub_1E1AF6F6C();
    sub_1E13E2E98(&v40);
  }

  sub_1E13E2E98(a1);
  v28 = v44;
  *(v10 + 72) = v43;
  *(v10 + 88) = v28;
  v29 = v45;
  v30 = v36;
  *(v10 + 32) = v35;
  *(v10 + 40) = v30;
  *(v10 + 104) = v29;
  *(v10 + 112) = a6;
  v31 = v37;
  *(v10 + 16) = a7;
  *(v10 + 24) = v31;
  *(v10 + 48) = a5;
  *(v10 + 56) = a8;
  *(v10 + 64) = v16;
  return v10;
}

uint64_t ProductCapability.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v72 = a2;
  v56 = sub_1E1AEFEAC();
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1E1AF39DC();
  v4 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  sub_1E1AF381C();
  v16 = sub_1E1AF37CC();
  v18 = v17;
  v19 = *(v8 + 8);
  v63 = v8 + 8;
  v64 = v7;
  v62 = v19;
  v19(v15, v7);
  v60 = v18;
  v61 = v4;
  if (!v18)
  {
    v29 = v65;
    v22 = v72;
    v20 = 0x656C746974;
    v30 = 0xE500000000000000;
LABEL_7:
    v31 = sub_1E1AF5A7C();
    sub_1E1505794(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v32 = v20;
    v32[1] = v30;
    v32[2] = v59;
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x1E69AB690], v31);
    swift_willThrow();
    (*(v61 + 8))(v22, v29);
    v62(a1, v64);
    return v29;
  }

  v53 = v16;
  v20 = 0x6E6F6974706163;
  type metadata accessor for LinkableText();
  sub_1E1AF381C();
  v21 = a1;
  v22 = v72;
  v23 = v65;
  v58 = *(v4 + 16);
  v58(v6, v72, v65);
  sub_1E1505794(&qword_1EE1F5FA0, 255, type metadata accessor for LinkableText);
  sub_1E1AF464C();
  if (!v71[0])
  {
    v29 = v23;

    v30 = 0xE700000000000000;
    a1 = v21;
    goto LABEL_7;
  }

  v59 = v71[0];
  type metadata accessor for Artwork();
  sub_1E1AF381C();
  v58(v6, v22, v23);
  sub_1E1505794(&qword_1EE1E4BB8, 255, type metadata accessor for Artwork);
  sub_1E1AF464C();
  v52 = v71[0];
  sub_1E1AF381C();
  v58(v6, v22, v23);
  sub_1E1AF464C();
  v58 = v71[0];
  sub_1E1AF381C();
  v51 = JSONObject.appStoreColor.getter();
  v24 = v64;
  v25 = v62;
  v62(v12, v64);
  v26 = v57;
  sub_1E1AF381C();
  v27 = sub_1E1AF37CC();
  if (v28)
  {
    *&v68 = v27;
    *(&v68 + 1) = v28;
  }

  else
  {
    v33 = v54;
    sub_1E1AEFE9C();
    v34 = sub_1E1AEFE7C();
    v36 = v35;
    (*(v55 + 8))(v33, v56);
    *&v68 = v34;
    *(&v68 + 1) = v36;
  }

  sub_1E1AF6F6C();
  v25(v26, v24);
  type metadata accessor for Action();
  sub_1E1AF381C();
  v37 = v72;
  v57 = static Action.tryToMakeInstance(byDeserializing:using:)(v12, v72);
  v25(v12, v24);
  v38 = v21;
  sub_1E1AF381C();
  v39 = static Action.tryToMakeInstance(byDeserializing:using:)(v12, v37);
  v25(v12, v24);
  type metadata accessor for ProductCapability();
  v29 = swift_allocObject();
  sub_1E138853C(v71, &v68);
  v40 = v65;
  if (*(&v69 + 1))
  {
    v41 = v69;
    *(v29 + 72) = v68;
    *(v29 + 88) = v41;
    *(v29 + 104) = v70;
  }

  else
  {
    v42 = v54;
    sub_1E1AEFE9C();
    v43 = sub_1E1AEFE7C();
    v45 = v44;
    (*(v55 + 8))(v42, v56);
    v66 = v43;
    v67 = v45;
    sub_1E1AF6F6C();
    sub_1E13E2E98(&v68);
  }

  (*(v61 + 8))(v37, v40);
  v62(v38, v64);
  sub_1E13E2E98(v71);
  v46 = v59;
  *(v29 + 32) = v60;
  *(v29 + 40) = v46;
  *(v29 + 112) = v57;
  v47 = v53;
  *(v29 + 16) = v39;
  *(v29 + 24) = v47;
  v48 = v58;
  *(v29 + 48) = v52;
  *(v29 + 56) = v48;
  *(v29 + 64) = v51;
  return v29;
}

uint64_t sub_1E1505680@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for ProductCapability();
  *a1 = v1;
}

uint64_t ProductCapability.deinit()
{

  sub_1E134B88C(v0 + 72);

  return v0;
}

uint64_t ProductCapability.__deallocating_deinit()
{
  ProductCapability.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E1505794(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1E15057FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = ProductCapability.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1E1505834@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for ProductCapability();
  *a1 = v3;
}

uint64_t Review.__allocating_init(id:title:date:dateText:badge:contents:rating:reviewerName:dateAuthorText:response:moreAction:flowPreviewActionsConfiguration:impressionMetrics:voteActions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v57 = a7;
  v58 = a8;
  v56 = a6;
  v55 = a5;
  v60 = a4;
  v22 = sub_1E1AEFEAC();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);

  v26 = swift_allocObject();
  v27 = v26 + OBJC_IVAR____TtC11AppStoreKit6Review_id;
  v59 = a1;
  sub_1E134FD1C(a1, &v63, &unk_1ECEB5670);
  if (*(&v64 + 1))
  {
    v28 = v64;
    *v27 = v63;
    *(v27 + 16) = v28;
    *(v27 + 32) = v65;
  }

  else
  {
    sub_1E1AEFE9C();
    v29 = sub_1E1AEFE7C();
    v31 = v30;
    (*(v23 + 8))(v25, v22);
    v61 = v29;
    v62 = v31;
    sub_1E1AF6F6C();
    sub_1E1308058(&v63, &unk_1ECEB5670);
  }

  swift_beginAccess();
  v32 = byte_1ECEBBB88;
  v33 = type metadata accessor for LanguageAwareString();
  v34 = objc_allocWithZone(v33);
  if (a3)
  {
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v36 = (*(ObjectType + 504))(a2, a3, 0, v32, byte_1ECEBBB89);
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v36 = 0;
  }

  *(v26 + 16) = v36;
  sub_1E134FD1C(v60, v26 + OBJC_IVAR____TtC11AppStoreKit6Review_date, &unk_1ECEBB780);
  v37 = (v26 + OBJC_IVAR____TtC11AppStoreKit6Review_dateText);
  v38 = v56;
  *v37 = v55;
  v37[1] = v38;
  v39 = (v26 + OBJC_IVAR____TtC11AppStoreKit6Review_badge);
  v40 = v58;
  *v39 = v57;
  v39[1] = v40;
  v41 = &unk_1ECEBB000;
  v42 = byte_1ECEBBB88;
  v43 = objc_allocWithZone(v33);
  if (a10)
  {
    v44 = swift_getObjectType();
    swift_beginAccess();
    v41 = &unk_1ECEBB000;
    v45 = (*(v44 + 504))(a9, a10, 0, v42, byte_1ECEBBB89);
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v45 = 0;
  }

  v58 = a19;
  *(v26 + OBJC_IVAR____TtC11AppStoreKit6Review_contents) = v45;
  *(v26 + OBJC_IVAR____TtC11AppStoreKit6Review_rating) = a11;
  v46 = v41[2952];
  v47 = objc_allocWithZone(v33);
  if (a13)
  {
    v48 = swift_getObjectType();
    swift_beginAccess();
    v49 = (*(v48 + 504))(a12, a13, 0, v46, byte_1ECEBBB89);
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v49 = 0;
  }

  *(v26 + OBJC_IVAR____TtC11AppStoreKit6Review_reviewerName) = v49;
  v50 = v41[2952];
  v51 = objc_allocWithZone(v33);
  if (a15)
  {
    v52 = swift_getObjectType();
    swift_beginAccess();
    v53 = (*(v52 + 504))(a14, a15, 0, v50, byte_1ECEBBB89);
    sub_1E1308058(v60, &unk_1ECEBB780);
    sub_1E1308058(v59, &unk_1ECEB5670);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1E1308058(v60, &unk_1ECEBB780);
    sub_1E1308058(v59, &unk_1ECEB5670);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v53 = 0;
  }

  *(v26 + OBJC_IVAR____TtC11AppStoreKit6Review_dateAuthorText) = v53;
  *(v26 + OBJC_IVAR____TtC11AppStoreKit6Review_response) = a16;
  *(v26 + OBJC_IVAR____TtC11AppStoreKit6Review_moreAction) = a17;
  *(v26 + OBJC_IVAR____TtC11AppStoreKit6Review_flowPreviewActionsConfiguration) = a18;
  sub_1E137F600(v58, v26 + OBJC_IVAR____TtC11AppStoreKit6Review_impressionMetrics, &unk_1ECEB1770);
  return v26;
}

uint64_t Review.init(id:title:date:dateText:badge:contents:rating:reviewerName:dateAuthorText:response:moreAction:flowPreviewActionsConfiguration:impressionMetrics:voteActions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = v19;
  v59 = a8;
  v58 = a7;
  v57 = a6;
  v56 = a5;
  v61 = a4;
  v24 = sub_1E1AEFEAC();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);

  v60 = a1;
  sub_1E134FD1C(a1, &v64, &unk_1ECEB5670);
  if (*(&v65 + 1))
  {
    v67 = v64;
    v68 = v65;
    v69 = v66;
  }

  else
  {
    sub_1E1AEFE9C();
    v28 = sub_1E1AEFE7C();
    v30 = v29;
    (*(v25 + 8))(v27, v24);
    v62 = v28;
    v63 = v30;
    sub_1E1AF6F6C();
    sub_1E1308058(&v64, &unk_1ECEB5670);
  }

  v31 = v20 + OBJC_IVAR____TtC11AppStoreKit6Review_id;
  v32 = v68;
  *v31 = v67;
  *(v31 + 16) = v32;
  *(v31 + 32) = v69;
  swift_beginAccess();
  v33 = byte_1ECEBBB88;
  v34 = type metadata accessor for LanguageAwareString();
  v35 = objc_allocWithZone(v34);
  if (a3)
  {
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v37 = (*(ObjectType + 504))(a2, a3, 0, v33, byte_1ECEBBB89);
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v37 = 0;
  }

  *(v20 + 16) = v37;
  sub_1E134FD1C(v61, v20 + OBJC_IVAR____TtC11AppStoreKit6Review_date, &unk_1ECEBB780);
  v38 = (v20 + OBJC_IVAR____TtC11AppStoreKit6Review_dateText);
  v39 = v57;
  *v38 = v56;
  v38[1] = v39;
  v40 = (v20 + OBJC_IVAR____TtC11AppStoreKit6Review_badge);
  v41 = v59;
  *v40 = v58;
  v40[1] = v41;
  v42 = &unk_1ECEBB000;
  v43 = byte_1ECEBBB88;
  v44 = objc_allocWithZone(v34);
  if (a10)
  {
    v45 = swift_getObjectType();
    swift_beginAccess();
    v42 = &unk_1ECEBB000;
    v46 = (*(v45 + 504))(a9, a10, 0, v43, byte_1ECEBBB89);
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v46 = 0;
  }

  v59 = a19;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit6Review_contents) = v46;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit6Review_rating) = a11;
  v47 = v42[2952];
  v48 = objc_allocWithZone(v34);
  if (a13)
  {
    v49 = swift_getObjectType();
    swift_beginAccess();
    v50 = (*(v49 + 504))(a12, a13, 0, v47, byte_1ECEBBB89);
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v50 = 0;
  }

  *(v20 + OBJC_IVAR____TtC11AppStoreKit6Review_reviewerName) = v50;
  v51 = v42[2952];
  v52 = objc_allocWithZone(v34);
  if (a15)
  {
    v53 = swift_getObjectType();
    swift_beginAccess();
    v54 = (*(v53 + 504))(a14, a15, 0, v51, byte_1ECEBBB89);
    sub_1E1308058(v61, &unk_1ECEBB780);
    sub_1E1308058(v60, &unk_1ECEB5670);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1E1308058(v61, &unk_1ECEBB780);
    sub_1E1308058(v60, &unk_1ECEB5670);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v54 = 0;
  }

  *(v20 + OBJC_IVAR____TtC11AppStoreKit6Review_dateAuthorText) = v54;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit6Review_response) = a16;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit6Review_moreAction) = a17;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit6Review_flowPreviewActionsConfiguration) = a18;
  sub_1E137F600(v59, v20 + OBJC_IVAR____TtC11AppStoreKit6Review_impressionMetrics, &unk_1ECEB1770);
  return v20;
}

uint64_t Review.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v104 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v103 = &v97 - v4;
  v107 = sub_1E1AF39DC();
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v102 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v98 = &v97 - v7;
  v8 = sub_1E1AEFEAC();
  v113 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF380C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v101 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v100 = &v97 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v99 = &v97 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v97 = &v97 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v105 = &v97 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v97 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v97 - v26;
  sub_1E1AF381C();
  v28 = sub_1E1AF37CC();
  v109 = a1;
  if (v29)
  {
    v30 = a1;
    v114 = v28;
    v115 = v29;
  }

  else
  {
    sub_1E1AEFE9C();
    v31 = sub_1E1AEFE7C();
    v33 = v32;
    (*(v113 + 8))(v10, v8);
    v114 = v31;
    v115 = v33;
    v30 = v109;
  }

  sub_1E1AF6F6C();
  v34 = *(v12 + 8);
  v35 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v34(v27, v11);
  v36 = v11;
  v37 = v108;
  v38 = v108 + OBJC_IVAR____TtC11AppStoreKit6Review_id;
  v39 = v117;
  *v38 = v116;
  *(v38 + 16) = v39;
  *(v38 + 32) = v118;
  sub_1E1AF381C();
  v40 = sub_1E1AF37CC();
  v42 = v41;
  v113 = v35;
  v34(v25, v11);
  swift_beginAccess();
  v43 = byte_1ECEBBB88;
  v110 = type metadata accessor for LanguageAwareString();
  v44 = objc_allocWithZone(v110);
  v111 = v34;
  v112 = v11;
  if (v42)
  {
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v46 = (*(ObjectType + 504))(v40, v42, 0, v43, byte_1ECEBBB89);
    v34 = v111;
    v36 = v112;
    v30 = v109;
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v46 = 0;
  }

  *(v37 + 16) = v46;
  v47 = v105;
  sub_1E1AF381C();
  v48 = v98;
  sub_1E1AF371C();
  v34(v47, v36);
  sub_1E137F600(v48, v37 + OBJC_IVAR____TtC11AppStoreKit6Review_date, &unk_1ECEBB780);
  sub_1E1AF381C();
  v49 = sub_1E1AF37CC();
  v51 = v50;
  v34(v47, v36);
  v52 = (v37 + OBJC_IVAR____TtC11AppStoreKit6Review_dateText);
  *v52 = v49;
  v52[1] = v51;
  sub_1E1AF381C();
  v53 = sub_1E1AF37CC();
  v55 = v54;
  v34(v47, v36);
  v56 = (v37 + OBJC_IVAR____TtC11AppStoreKit6Review_badge);
  *v56 = v53;
  v56[1] = v55;
  v57 = v97;
  sub_1E1AF381C();
  v58 = sub_1E1AF37CC();
  v60 = v59;
  v34(v57, v36);
  v61 = byte_1ECEBBB88;
  v62 = objc_allocWithZone(v110);
  if (v60)
  {
    v63 = swift_getObjectType();
    swift_beginAccess();
    v64 = (*(v63 + 504))(v58, v60, 0, v61, byte_1ECEBBB89);
    v34 = v111;
    v36 = v112;
    v30 = v109;
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v64 = 0;
  }

  *(v37 + OBJC_IVAR____TtC11AppStoreKit6Review_contents) = v64;
  v65 = v99;
  sub_1E1AF381C();
  v66 = sub_1E1AF373C();
  v68 = v67;
  v34(v65, v36);
  if (v68)
  {
    v69 = 0;
  }

  else
  {
    v69 = v66;
  }

  *(v37 + OBJC_IVAR____TtC11AppStoreKit6Review_rating) = v69;
  v70 = v100;
  sub_1E1AF381C();
  v71 = sub_1E1AF37CC();
  v73 = v72;
  v34(v70, v36);
  v74 = byte_1ECEBBB88;
  v75 = objc_allocWithZone(v110);
  if (v73)
  {
    v76 = swift_getObjectType();
    swift_beginAccess();
    v77 = (*(v76 + 504))(v71, v73, 0, v74, byte_1ECEBBB89);
    v34 = v111;
    v36 = v112;
    v30 = v109;
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v77 = 0;
  }

  *(v37 + OBJC_IVAR____TtC11AppStoreKit6Review_reviewerName) = v77;
  v78 = v101;
  sub_1E1AF381C();
  v79 = sub_1E1AF37CC();
  v81 = v80;
  v34(v78, v36);
  v82 = byte_1ECEBBB88;
  v83 = objc_allocWithZone(v110);
  if (v81)
  {
    v84 = swift_getObjectType();
    swift_beginAccess();
    v85 = (*(v84 + 504))(v79, v81, 0, v82, byte_1ECEBBB89);
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v85 = 0;
  }

  *(v37 + OBJC_IVAR____TtC11AppStoreKit6Review_dateAuthorText) = v85;
  type metadata accessor for Response(0);
  v86 = v105;
  sub_1E1AF381C();
  v110 = *(v106 + 16);
  v87 = v102;
  v88 = v104;
  v89 = v107;
  (v110)(v102, v104, v107);
  sub_1E1508504(qword_1EE1E4420, type metadata accessor for Response);
  sub_1E1AF464C();
  *(v37 + OBJC_IVAR____TtC11AppStoreKit6Review_response) = v119;
  type metadata accessor for Action();
  sub_1E1AF381C();
  v90 = static Action.tryToMakeInstance(byDeserializing:using:)(v86, v88);
  v111(v86, v112);
  *(v37 + OBJC_IVAR____TtC11AppStoreKit6Review_moreAction) = v90;
  type metadata accessor for FlowPreviewActionsConfiguration();
  sub_1E1AF381C();
  v91 = v89;
  v92 = v110;
  (v110)(v87, v88, v91);
  sub_1E1508504(qword_1EE1E7DB8, type metadata accessor for FlowPreviewActionsConfiguration);
  sub_1E1AF464C();
  *(v37 + OBJC_IVAR____TtC11AppStoreKit6Review_flowPreviewActionsConfiguration) = v119;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v93 = v107;
  (v92)(v87, v88, v107);
  v94 = v103;
  sub_1E1AF464C();
  (*(v106 + 8))(v88, v93);
  v111(v30, v112);
  v95 = v108;
  sub_1E137F600(v94, v108 + OBJC_IVAR____TtC11AppStoreKit6Review_impressionMetrics, &unk_1ECEB1770);
  return v95;
}

void *Review.title.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t Review.dateText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit6Review_dateText);

  return v1;
}

uint64_t Review.badge.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit6Review_badge);

  return v1;
}

void *Review.contents.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit6Review_contents);
  v2 = v1;
  return v1;
}

void *Review.reviewerName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit6Review_reviewerName);
  v2 = v1;
  return v1;
}

void *Review.dateAuthorText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit6Review_dateAuthorText);
  v2 = v1;
  return v1;
}

uint64_t sub_1E150735C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit6Review_moreAction);
  if (v3)
  {
    v4 = type metadata accessor for Action();
    v5 = sub_1E1508504(qword_1EE1D2F80, type metadata accessor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

uint64_t Review.deinit()
{
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Review_date, &unk_1ECEBB780);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Review_impressionMetrics, &unk_1ECEB1770);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Review_id);
  return v0;
}

uint64_t Review.__deallocating_deinit()
{
  Review.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E1507568@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC11AppStoreKit6Review_moreAction);
  if (v3)
  {
    v4 = type metadata accessor for Action();
    v5 = sub_1E1508504(qword_1EE1D2F80, type metadata accessor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

uint64_t Response.__allocating_init(id:date:dateText:contents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a5;
  v29 = a6;
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = v14 + OBJC_IVAR____TtC11AppStoreKit8Response_id;
  v30 = a1;
  sub_1E134FD1C(a1, &v33, &unk_1ECEB5670);
  if (*(&v34 + 1))
  {
    v16 = v34;
    *v15 = v33;
    *(v15 + 16) = v16;
    *(v15 + 32) = v35;
  }

  else
  {
    sub_1E1AEFE9C();
    v17 = sub_1E1AEFE7C();
    v19 = v18;
    (*(v11 + 8))(v13, v10);
    v31 = v17;
    v32 = v19;
    sub_1E1AF6F6C();
    sub_1E1308058(&v33, &unk_1ECEB5670);
  }

  sub_1E134FD1C(a2, v14 + OBJC_IVAR____TtC11AppStoreKit8Response_date, &unk_1ECEBB780);
  v20 = (v14 + OBJC_IVAR____TtC11AppStoreKit8Response_dateText);
  *v20 = a3;
  v20[1] = a4;
  swift_beginAccess();
  v21 = byte_1ECEBBB88;
  v22 = objc_allocWithZone(type metadata accessor for LanguageAwareString());
  v23 = v29;
  if (v29)
  {
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v25 = (*(ObjectType + 504))(v28, v23, 0, v21, byte_1ECEBBB89);
    sub_1E1308058(a2, &unk_1ECEBB780);
    sub_1E1308058(v30, &unk_1ECEB5670);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1E1308058(a2, &unk_1ECEBB780);
    sub_1E1308058(v30, &unk_1ECEB5670);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v25 = 0;
  }

  *(v14 + OBJC_IVAR____TtC11AppStoreKit8Response_contents) = v25;
  return v14;
}

uint64_t Response.init(id:date:dateText:contents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v34 = a5;
  v13 = sub_1E1AEFEAC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134FD1C(a1, &v37, &unk_1ECEB5670);
  if (*(&v38 + 1))
  {
    v40 = v37;
    v41 = v38;
    v42 = v39;
  }

  else
  {
    sub_1E1AEFE9C();
    v17 = sub_1E1AEFE7C();
    v33 = a2;
    v18 = a3;
    v19 = a1;
    v20 = a6;
    v21 = v17;
    v23 = v22;
    (*(v14 + 8))(v16, v13);
    v35 = v21;
    v36 = v23;
    a6 = v20;
    a1 = v19;
    a3 = v18;
    a2 = v33;
    sub_1E1AF6F6C();
    sub_1E1308058(&v37, &unk_1ECEB5670);
  }

  v24 = v7 + OBJC_IVAR____TtC11AppStoreKit8Response_id;
  v25 = v41;
  *v24 = v40;
  *(v24 + 16) = v25;
  *(v24 + 32) = v42;
  sub_1E134FD1C(a2, v7 + OBJC_IVAR____TtC11AppStoreKit8Response_date, &unk_1ECEBB780);
  v26 = (v7 + OBJC_IVAR____TtC11AppStoreKit8Response_dateText);
  *v26 = a3;
  v26[1] = a4;
  swift_beginAccess();
  v27 = byte_1ECEBBB88;
  v28 = objc_allocWithZone(type metadata accessor for LanguageAwareString());
  if (a6)
  {
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v30 = (*(ObjectType + 504))(v34, a6, 0, v27, byte_1ECEBBB89);
    sub_1E1308058(a2, &unk_1ECEBB780);
    sub_1E1308058(a1, &unk_1ECEB5670);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1E1308058(a2, &unk_1ECEBB780);
    sub_1E1308058(a1, &unk_1ECEB5670);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v30 = 0;
  }

  *(v7 + OBJC_IVAR____TtC11AppStoreKit8Response_contents) = v30;
  return v7;
}

uint64_t sub_1E1507CEC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = swift_allocObject();
  a3(a1, a2);
  return v6;
}

uint64_t Response.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v47 = &v46 - v4;
  v5 = sub_1E1AEFEAC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1E1AF380C();
  v9 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  v49 = a1;
  sub_1E1AF381C();
  v18 = sub_1E1AF37CC();
  if (v19)
  {
    v51 = v18;
    v52 = v19;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v22 = v21;
    (*(v6 + 8))(v8, v5);
    v51 = v20;
    v52 = v22;
  }

  sub_1E1AF6F6C();
  v23 = *(v9 + 8);
  v23(v17, v56);
  v24 = v50;
  v25 = v50 + OBJC_IVAR____TtC11AppStoreKit8Response_id;
  v26 = v54;
  *v25 = v53;
  *(v25 + 16) = v26;
  *(v25 + 32) = v55;
  v27 = v49;
  sub_1E1AF381C();
  v28 = v47;
  sub_1E1AF371C();
  v29 = v56;
  v23(v14, v56);
  sub_1E137F600(v28, v24 + OBJC_IVAR____TtC11AppStoreKit8Response_date, &unk_1ECEBB780);
  sub_1E1AF381C();
  v30 = sub_1E1AF37CC();
  v32 = v31;
  v33 = v14;
  v34 = v27;
  v23(v33, v29);
  v35 = (v24 + OBJC_IVAR____TtC11AppStoreKit8Response_dateText);
  *v35 = v30;
  v35[1] = v32;
  sub_1E1AF381C();
  v36 = sub_1E1AF37CC();
  v38 = v37;
  v23(v11, v29);
  swift_beginAccess();
  v39 = byte_1ECEBBB88;
  v40 = objc_allocWithZone(type metadata accessor for LanguageAwareString());
  if (v38)
  {
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v42 = (*(ObjectType + 504))(v36, v38, 0, v39, byte_1ECEBBB89);
    v43 = sub_1E1AF39DC();
    (*(*(v43 - 8) + 8))(v48, v43);
    v23(v34, v56);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v44 = sub_1E1AF39DC();
    (*(*(v44 - 8) + 8))(v48, v44);
    v23(v27, v56);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v42 = 0;
  }

  result = v50;
  *(v50 + OBJC_IVAR____TtC11AppStoreKit8Response_contents) = v42;
  return result;
}

uint64_t Response.dateText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit8Response_dateText);

  return v1;
}

void *Response.contents.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit8Response_contents);
  v2 = v1;
  return v1;
}

uint64_t Response.deinit()
{
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit8Response_date, &unk_1ECEBB780);

  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit8Response_id);
  return v0;
}

uint64_t Response.__deallocating_deinit()
{
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit8Response_date, &unk_1ECEBB780);

  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit8Response_id);

  return swift_deallocClassInstance();
}

uint64_t sub_1E150845C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X4>, uint64_t (*a4)(uint64_t, uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  a3(0);
  v10 = swift_allocObject();
  result = a4(a1, a2);
  if (!v5)
  {
    *a5 = v10;
  }

  return result;
}

uint64_t sub_1E1508504(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E1508604()
{
  sub_1E15087F4(319, &qword_1EE1FADB8, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    sub_1E15087F4(319, &qword_1EE1E39F0, MEMORY[0x1E69AB1E8]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E15087F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E1AF6D9C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1E1508850()
{
  sub_1E15087F4(319, &qword_1EE1FADB8, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

JSValue __swiftcall SponsoredSearchNativeAdvertData.makeValue(in:)(JSContext in)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[5];
  *(&v39 + 1) = v1[4];
  v8 = objc_opt_self();
  result.super.isa = [v8 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_27;
  }

  isa = result.super.isa;
  *&v39 = v5;
  if (!v3)
  {
    goto LABEL_8;
  }

  v11 = *(v3 + 16);
  if (v11)
  {
    v38 = v7;
    v48 = MEMORY[0x1E69E7CC0];
    sub_1E1AF70EC();
    v12 = (v3 + 32);
    for (i = v11 - 1; ; --i)
    {
      v14 = v12[1];
      v47[0] = *v12;
      v47[1] = v14;
      v15 = v12[2];
      v16 = v12[3];
      v17 = v12[5];
      v47[4] = v12[4];
      v47[5] = v17;
      v47[2] = v15;
      v47[3] = v16;
      v18 = v12[3];
      v43 = v12[2];
      v44 = v18;
      v19 = v12[5];
      v45 = v12[4];
      v46 = v19;
      v20 = v12[1];
      v41 = *v12;
      v42 = v20;
      sub_1E1508E28(v47, v40);
      SponsoredSearchAdvert.makeValue(in:)(in);
      sub_1E1508E84(v47);
      sub_1E1AF70BC();
      sub_1E1AF70FC();
      sub_1E1AF710C();
      sub_1E1AF70CC();
      if (!i)
      {
        break;
      }

      v12 += 6;
    }

    v21 = v48;
    v7 = v38;
    if (!v48)
    {
LABEL_8:
      v22 = in.super.isa;
      v23 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  *&v47[0] = v21;

  v24 = in.super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3D38);
  v23 = sub_1E1AF748C();
  sub_1E1308058(v47, &qword_1ECEB3D38);
LABEL_11:
  v25 = [v8 valueWithObject:v23 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v25)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_1E1AF6C5C();
  result.super.isa = [v8 valueWithBool:v4 inContext:in.super.isa];
  if (!result.super.isa)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_1E1AF6C5C();
  if (v6)
  {
    *&v47[0] = v6;
    v26 = in.super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3568);
    v27 = sub_1E1AF748C();
    sub_1E1308058(v47, &qword_1ECEB3568);
  }

  else
  {
    v28 = in.super.isa;
    v27 = 0;
  }

  v29 = [v8 valueWithObject:v27 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v29)
  {
    goto LABEL_29;
  }

  sub_1E1AF6C5C();
  v30 = *(&v39 + 1);
  if (*(&v39 + 1))
  {
    v47[0] = v39;
    v31 = in.super.isa;

    v30 = sub_1E1AF748C();
    sub_1E1455104(v47);
  }

  else
  {
    v32 = in.super.isa;
  }

  v33 = [v8 valueWithObject:v30 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v33)
  {
    goto LABEL_30;
  }

  sub_1E1AF6C5C();
  if (v7)
  {
    *&v47[0] = v7;
    v34 = in.super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2548);
    v35 = sub_1E1AF748C();
    sub_1E1308058(v47, &qword_1ECEB2548);
  }

  else
  {
    v36 = in.super.isa;
    v35 = 0;
  }

  v37 = [v8 valueWithObject:v35 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (v37)
  {

    sub_1E1AF6C5C();
    return isa;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t SponsoredSearchNativeAdvertData.init(adverts:odmlSuccess:installedStates:appliedPolicy:appStates:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t sub_1E1508ED8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1E1508F34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t CancelPreorderAction.__allocating_init(preorderAdamId:isArcade:actionMetrics:)(void *a1, char a2, uint64_t a3)
{
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  v11 = a1[1];
  v12 = (v10 + OBJC_IVAR____TtC11AppStoreKit20CancelPreorderAction_preorderAdamId);
  *v12 = *a1;
  v12[1] = v11;
  *(v10 + OBJC_IVAR____TtC11AppStoreKit20CancelPreorderAction_isArcade) = a2;
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  v13 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v14 = sub_1E1AF3E1C();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v10 + v13, a3, v14);
  v16 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v17 = sub_1E1AF46DC();
  (*(*(v17 - 8) + 56))(v10 + v16, 1, 1, v17);
  v18 = (v10 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v18 = 0u;
  v18[1] = 0u;
  v19 = v10 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v29, &v26);
  if (*(&v27 + 1))
  {
    v20 = v27;
    *v19 = v26;
    *(v19 + 16) = v20;
    *(v19 + 32) = v28;
  }

  else
  {
    sub_1E1AEFE9C();
    v21 = sub_1E1AEFE7C();
    v23 = v22;
    (*(v7 + 8))(v9, v6);
    v25[1] = v21;
    v25[2] = v23;
    sub_1E1AF6F6C();
    sub_1E1308058(&v26, &unk_1ECEB5670);
  }

  (*(v15 + 8))(a3, v14);
  sub_1E1308058(v29, &unk_1ECEB5670);
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  return v10;
}

uint64_t CancelPreorderAction.init(preorderAdamId:isArcade:actionMetrics:)(void *a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1E1AEFEAC();
  v28[0] = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v28 - v12;
  v14 = sub_1E1AF3E1C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[1];
  v19 = (v4 + OBJC_IVAR____TtC11AppStoreKit20CancelPreorderAction_preorderAdamId);
  *v19 = *a1;
  v19[1] = v18;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit20CancelPreorderAction_isArcade) = a2;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  (*(v15 + 16))(v17, a3, v14);
  v20 = sub_1E1AF46DC();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  v21 = (v4 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v21 = 0u;
  v21[1] = 0u;
  sub_1E138853C(v35, &v29);
  if (*(&v30 + 1))
  {
    v32 = v29;
    v33 = v30;
    v34 = v31;
  }

  else
  {
    sub_1E1AEFE9C();
    v22 = sub_1E1AEFE7C();
    v24 = v23;
    (*(v28[0] + 8))(v10, v8);
    v28[1] = v22;
    v28[2] = v24;
    sub_1E1AF6F6C();
    sub_1E1308058(&v29, &unk_1ECEB5670);
  }

  (*(v15 + 8))(a3, v14);
  sub_1E1308058(v35, &unk_1ECEB5670);
  v25 = v4 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v25 + 32) = v34;
  v26 = v33;
  *v25 = v32;
  *(v25 + 16) = v26;
  sub_1E134B7C8(v13, v4 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  (*(v15 + 32))(v4 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v17, v14);
  return v4;
}

void *CancelPreorderAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v48 = a2;
  v6 = *v4;
  v44 = v3;
  v45 = v6;
  v7 = sub_1E1AF39DC();
  v8 = *(v7 - 8);
  v46 = v7;
  v47 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF380C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v42 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - v18;
  v50 = a1;
  sub_1E1AF381C();
  v20 = sub_1E1AF37CC();
  v22 = v21;
  v23 = v19;
  v24 = *(v11 + 8);
  v49 = v10;
  v24(v23, v10);
  if (!v22)
  {
    v31 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    strcpy(v32, "preorderAdamId");
    v33 = v45;
    v32[15] = -18;
    *(v32 + 2) = v33;
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x1E69AB690], v31);
    swift_willThrow();
    (*(v47 + 8))(v48, v46);
    v24(v50, v49);
    goto LABEL_5;
  }

  v25 = v24;
  v26 = (v4 + OBJC_IVAR____TtC11AppStoreKit20CancelPreorderAction_preorderAdamId);
  *v26 = v20;
  v26[1] = v22;
  sub_1E1AF381C();
  v27 = sub_1E1AF370C();
  v25(v17, v49);
  if (v27 == 2)
  {
    v28 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v29 = 0x6564616372417369;
    v30 = v45;
    v29[1] = 0xE800000000000000;
    v29[2] = v30;
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x1E69AB690], v28);
    swift_willThrow();
    (*(v47 + 8))(v48, v46);
    v25(v50, v49);

LABEL_5:
    swift_deallocPartialClassInstance();
    return v4;
  }

  v34 = v25;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit20CancelPreorderAction_isArcade) = v27 & 1;
  (*(v11 + 16))(v14, v50, v49);
  v36 = v47;
  v35 = v48;
  v37 = v43;
  v38 = v46;
  (*(v47 + 16))(v43, v48, v46);
  v39 = v44;
  v40 = Action.init(deserializing:using:)(v14, v37);
  if (!v39)
  {
    v4 = v40;
  }

  (*(v36 + 8))(v35, v38);
  v34(v50, v49);
  return v4;
}

uint64_t CancelPreorderAction.preorderAdamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit20CancelPreorderAction_preorderAdamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC11AppStoreKit20CancelPreorderAction_preorderAdamId);
  a1[1] = v2;
}

uint64_t CancelPreorderAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t CancelPreorderAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CancelPreorderAction()
{
  result = qword_1EE1EDAF8;
  if (!qword_1EE1EDAF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1E1509E70()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.949019608 green:0.949019608 blue:0.968627451 alpha:1.0];
  qword_1ECEF4438 = result;
  return result;
}

id sub_1E1509EBC()
{
  if (qword_1EE1E3210 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE1E3218;
  qword_1EE1EF8E0 = qword_1EE1E3218;

  return v1;
}

id static OfferButtonStyling.blue.getter()
{
  if (qword_1EE1EF8D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE1EF8E0;

  return v1;
}

id sub_1E1509FA4(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

id static OfferButtonStyling.offerButtonPath(with:lineWidth:cornerRadius:)(uint64_t a1, char a2, double a3, double a4, double a5)
{
  v5 = a3 - a5;
  if (a3 - a5 >= a4 - a5)
  {
    v6 = a4 - a5;
  }

  else
  {
    v6 = a3 - a5;
  }

  v7 = v6 * 0.5;
  if (a2)
  {
    v8 = v7;
  }

  else
  {
    v8 = *&a1;
  }

  v9 = [objc_opt_self() bezierPathWithRoundedRect:-1 byRoundingCorners:a5 * 0.5 cornerRadii:{a5 * 0.5, v5, a4 - a5, v8, v8}];
  v10 = [v9 CGPath];

  return v10;
}

double static OfferButtonStyling.offerButtonCornerRadius(with:cornerRadius:)(uint64_t a1, char a2, double a3, double a4)
{
  if (a3 >= a4)
  {
    a3 = a4;
  }

  result = a3 * 0.5;
  if ((a2 & 1) == 0)
  {
    return *&a1;
  }

  return result;
}

uint64_t AccountSectionInfoListItem.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AccountSectionInfoListItem.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t AccountSectionInfoListItem.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AccountSectionInfoListItem.value.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AccountSectionInfoListItem.__allocating_init(id:title:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  sub_1E138853C(a1, &v25);
  if (*(&v26 + 1))
  {
    sub_1E13E2E98(a1);
    v28 = v25;
    v29 = v26;
    v30 = v27;
  }

  else
  {
    sub_1E1AEFE9C();
    v15 = sub_1E1AEFE7C();
    v24[0] = a2;
    v16 = a3;
    v17 = a4;
    v18 = a5;
    v19 = v15;
    v21 = v20;
    (*(v11 + 8))(v13, v10);
    v24[1] = v19;
    v24[2] = v21;
    a5 = v18;
    a4 = v17;
    a3 = v16;
    a2 = v24[0];
    sub_1E1AF6F6C();
    sub_1E13E2E98(a1);
    sub_1E13E2E98(&v25);
  }

  v22 = v29;
  *(v14 + 48) = v28;
  *(v14 + 64) = v22;
  *(v14 + 80) = v30;
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  return v14;
}

uint64_t AccountSectionInfoListItem.init(id:title:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_1E1AEFEAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E138853C(a1, &v26);
  if (*(&v27 + 1))
  {
    sub_1E13E2E98(a1);
    v29 = v26;
    v30 = v27;
    v31 = v28;
  }

  else
  {
    sub_1E1AEFE9C();
    v16 = sub_1E1AEFE7C();
    v25[0] = a2;
    v17 = a3;
    v18 = a4;
    v19 = a5;
    v20 = v16;
    v22 = v21;
    (*(v13 + 8))(v15, v12);
    v25[1] = v20;
    v25[2] = v22;
    a5 = v19;
    a4 = v18;
    a3 = v17;
    a2 = v25[0];
    sub_1E1AF6F6C();
    sub_1E13E2E98(a1);
    sub_1E13E2E98(&v26);
  }

  v23 = v30;
  *(v6 + 48) = v29;
  *(v6 + 64) = v23;
  *(v6 + 80) = v31;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  return v6;
}

uint64_t *AccountSectionInfoListItem.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v50 = a2;
  v6 = *v4;
  v47 = v3;
  v48 = v6;
  v7 = sub_1E1AEFEAC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF380C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - v18;
  v56 = a1;
  sub_1E1AF381C();
  v20 = sub_1E1AF37CC();
  if (v21)
  {
    v51 = v20;
    v52 = v21;
  }

  else
  {
    sub_1E1AEFE9C();
    v22 = sub_1E1AEFE7C();
    v23 = v8;
    v25 = v24;
    (*(v23 + 8))(v10, v7);
    v51 = v22;
    v52 = v25;
  }

  sub_1E1AF6F6C();
  v26 = *(v12 + 8);
  v26(v19, v11);
  v27 = 0x656C746974;
  v28 = v54;
  *(v4 + 3) = v53;
  *(v4 + 4) = v28;
  v4[10] = v55;
  v29 = v56;
  sub_1E1AF381C();
  v30 = sub_1E1AF37CC();
  v32 = v31;
  v26(v16, v11);
  if (!v32)
  {
    goto LABEL_8;
  }

  v45 = v30;
  v46 = v4;
  v27 = 0x65756C6176;
  v33 = v26;
  v34 = v49;
  sub_1E1AF381C();
  v35 = sub_1E1AF37CC();
  v37 = v36;
  v38 = v34;
  v26 = v33;
  v33(v38, v11);
  if (!v37)
  {

    v4 = v46;
LABEL_8:
    v40 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v41 = v27;
    v41[1] = 0xE500000000000000;
    v41[2] = v48;
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x1E69AB690], v40);
    swift_willThrow();
    v42 = sub_1E1AF39DC();
    (*(*(v42 - 8) + 8))(v50, v42);
    v26(v56, v11);
    sub_1E134B88C((v4 + 6));
    type metadata accessor for AccountSectionInfoListItem();
    swift_deallocPartialClassInstance();
    return v4;
  }

  v39 = sub_1E1AF39DC();
  (*(*(v39 - 8) + 8))(v50, v39);
  v33(v29, v11);
  v4 = v46;
  v46[2] = v45;
  v4[3] = v32;
  v4[4] = v35;
  v4[5] = v37;
  return v4;
}

uint64_t AccountSectionInfoListItem.deinit()
{

  sub_1E134B88C(v0 + 48);
  return v0;
}

uint64_t AccountSectionInfoListItem.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t *sub_1E150A9C4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for AccountSectionInfoListItem();
  v7 = swift_allocObject();
  result = AccountSectionInfoListItem.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t OfferStateAction.preferredAction(for:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 40))(&v12, *(v2 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_includeBetaApps), ObjectType, a2);
  v5 = v16 >> 60;
  if ((v16 >> 60) <= 2)
  {
    if (v5 == 1)
    {
    }

    if (v5 == 2)
    {
      goto LABEL_30;
    }

LABEL_16:
    v6 = v12;
    goto LABEL_17;
  }

  if (v5 == 3 || v5 == 4)
  {
LABEL_30:
    sub_1E139CEA8(&v12);
  }

  if (v5 != 8)
  {
    goto LABEL_16;
  }

  v6 = v12;
  if (!v17 && v16 == 0x8000000000000000 && v12 == 1)
  {
    v7 = vorrq_s8(v14, v15);
    if (!(*&vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL)) | v13))
    {
    }
  }

LABEL_17:
  if (v5 == 8)
  {
    v8 = v15.i64[1] | v17;
    v9 = v14.i64[1] | v14.i64[0] | v13;
    if (v16 == 0x8000000000000000 && !(v8 | v6 | v15.i64[0] | v9))
    {
      goto LABEL_30;
    }

    if (v16 == 0x8000000000000000 && v6 == 4 && !(v8 | v15.i64[0] | v9))
    {
      goto LABEL_30;
    }
  }

  if (v5 != 8)
  {
    goto LABEL_30;
  }

  if (v17)
  {
    goto LABEL_30;
  }

  if (v16 != 0x8000000000000000)
  {
    goto LABEL_30;
  }

  if (v6 != 3)
  {
    goto LABEL_30;
  }

  v10 = vorrq_s8(v14, v15);
  if (*&vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL)) | v13)
  {
    goto LABEL_30;
  }
}

uint64_t OfferStateAction.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_adamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_adamId);
  a1[1] = v2;
}

void *OfferStateAction.__allocating_init(title:adamId:defaultAction:buyAction:updateAction:downloadAction:purchasedAction:installedAction:resumeAction:openAction:subscribePageAction:restrictedAction:cancelAction:includeBetaApps:presentationStyle:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, uint64_t a16)
{
  v53 = a8;
  v42 = a7;
  v49 = a1;
  v50 = a2;
  v51 = a16;
  v44 = a13;
  v43 = a12;
  v41 = a11;
  v52 = a10;
  LODWORD(v48) = a15;
  v40 = sub_1E1AEFEAC();
  v39 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v38 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  v23 = a3[1];
  v24 = (v22 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_adamId);
  *v24 = *a3;
  v24[1] = v23;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_defaultAction) = a4;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_buyAction) = a5;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_updateAction) = a6;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_downloadAction) = v42;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_purchasedAction) = a8;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_installedAction) = a9;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_resumeAction) = a10;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_openAction) = a11;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_subscribePageAction) = v43;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_restrictedAction) = v44;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_cancelAction) = a14;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_includeBetaApps) = v48;
  v60 = 0;
  memset(v59, 0, sizeof(v59));
  v46 = a14;

  v48 = a4;

  v47 = a5;

  v45 = a6;

  sub_1E1AF3DFC();
  v25 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v26 = sub_1E1AF46DC();
  (*(*(v26 - 8) + 56))(v22 + v25, 1, 1, v26);
  v27 = (v22 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v27 = 0u;
  v27[1] = 0u;
  v28 = v22 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v59, &v56);
  if (*(&v57 + 1))
  {
    v29 = v57;
    *v28 = v56;
    *(v28 + 1) = v29;
    *(v28 + 4) = v58;
  }

  else
  {
    v30 = v38;
    sub_1E1AEFE9C();
    v31 = sub_1E1AEFE7C();
    v33 = v32;
    (*(v39 + 8))(v30, v40);
    v54 = v31;
    v55 = v33;
    sub_1E1AF6F6C();
    sub_1E1308058(&v56, &unk_1ECEB5670);
  }

  sub_1E1308058(v59, &unk_1ECEB5670);
  v34 = v50;
  v22[2] = v49;
  v22[3] = v34;
  v35 = v51;
  v22[4] = 0;
  v22[5] = v35;
  return v22;
}

void *OfferStateAction.init(title:adamId:defaultAction:buyAction:updateAction:downloadAction:purchasedAction:installedAction:resumeAction:openAction:subscribePageAction:restrictedAction:cancelAction:includeBetaApps:presentationStyle:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, uint64_t a16)
{
  v17 = v16;
  v61 = a2;
  v60 = a1;
  v62 = a16;
  v64 = a14;
  v50 = a13;
  v65 = a12;
  LODWORD(v57) = a15;
  v48 = sub_1E1AEFEAC();
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v63 = &v45 - v26;
  v59 = sub_1E1AF3E1C();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v49 = &v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a3[1];
  v29 = (v17 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_adamId);
  *v29 = *a3;
  v29[1] = v28;
  *(v17 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_defaultAction) = a4;
  *(v17 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_buyAction) = a5;
  *(v17 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_updateAction) = a6;
  *(v17 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_downloadAction) = a7;
  *(v17 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_purchasedAction) = a8;
  *(v17 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_installedAction) = a9;
  *(v17 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_resumeAction) = a10;
  *(v17 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_openAction) = a11;
  v30 = v64;
  *(v17 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_subscribePageAction) = v65;
  *(v17 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_restrictedAction) = v50;
  *(v17 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_cancelAction) = v30;
  *(v17 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_includeBetaApps) = v57;
  v75 = 0;
  memset(v74, 0, sizeof(v74));

  v51 = a4;

  v52 = a5;

  v53 = a6;

  v54 = a7;
  v31 = v49;

  v55 = a8;

  v56 = a10;

  v57 = a11;

  sub_1E1AF3DFC();
  v32 = sub_1E1AF46DC();
  v33 = v63;
  (*(*(v32 - 8) + 56))();
  v34 = (v17 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v34 = 0u;
  v34[1] = 0u;
  sub_1E138853C(v74, &v68);
  if (*(&v69 + 1))
  {
    v71 = v68;
    v72 = v69;
    v73 = v70;
  }

  else
  {
    v35 = v46;
    sub_1E1AEFE9C();
    v36 = sub_1E1AEFE7C();
    v45 = a9;
    v37 = v36;
    v39 = v38;
    (*(v47 + 8))(v35, v48);
    v66 = v37;
    v67 = v39;
    v33 = v63;
    sub_1E1AF6F6C();
    sub_1E1308058(&v68, &unk_1ECEB5670);
  }

  sub_1E1308058(v74, &unk_1ECEB5670);
  v40 = v17 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v40 + 4) = v73;
  v41 = v72;
  *v40 = v71;
  *(v40 + 1) = v41;
  sub_1E134B7C8(v33, v17 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v42 = v61;
  v17[2] = v60;
  v17[3] = v42;
  v43 = v62;
  v17[4] = 0;
  v17[5] = v43;
  (*(v58 + 32))(v17 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v31, v59);
  return v17;
}

char *OfferStateAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v289 = a2;
  v286 = *v3;
  v290 = sub_1E1AF39DC();
  v287 = *(v290 - 8);
  v5 = MEMORY[0x1EEE9AC00](v290);
  v278 = &v263 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v272 = &v263 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v271 = &v263 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v270 = &v263 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v269 = &v263 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v268 = &v263 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v267 = &v263 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v266 = &v263 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v265 = &v263 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v264 = &v263 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v263 = &v263 - v25;
  v26 = sub_1E1AF380C();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v277 = &v263 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v275 = &v263 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v285 = &v263 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v291 = &v263 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v274 = &v263 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v273 = &v263 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v263 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v263 - v43;
  v45 = a1;
  sub_1E1AF381C();
  v46 = sub_1E1AF37CC();
  v48 = v47;
  v276 = v27;
  v51 = *(v27 + 8);
  v50 = v27 + 8;
  v49 = v51;
  v51(v44, v26);
  if (!v48)
  {
    v42 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v59 = 0x64496D616461;
    v60 = v286;
    v59[1] = 0xE600000000000000;
    v59[2] = v60;
    (*(*(v42 - 1) + 104))(v59, *MEMORY[0x1E69AB690], v42);
    swift_willThrow();
    (*(v287 + 8))(v289, v290);
    v49(v45, v26);
    goto LABEL_5;
  }

  v288 = v49;
  v292 = v50;
  v293 = v26;
  v52 = (v3 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_adamId);
  *v52 = v46;
  v52[1] = v48;
  v53 = type metadata accessor for Action();
  sub_1E1AF381C();
  v54 = v289;
  v55 = v283;
  v56 = static Action.makeInstance(byDeserializing:using:)(v42, v289);
  v279 = v55;
  if (v55)
  {
    (*(v287 + 8))(v54, v290);
    v57 = v293;
    v58 = v288;
    v288(v45, v293);
    v58(v42, v57);

LABEL_5:
    swift_deallocPartialClassInstance();
    return v42;
  }

  v62 = v56;
  v284 = v45;
  v288(v42, v293);
  v63 = OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_defaultAction;
  v283 = v3;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_defaultAction) = v62;
  if (qword_1EE1D2A30 != -1)
  {
    swift_once();
  }

  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4F08);
  v65 = __swift_project_value_buffer(v64, qword_1EE1D2A38);
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEB4F10);
  v281 = v65;
  sub_1E1AF39FC();
  v66 = v295;
  v282 = v53;
  if (!v295)
  {
    v66 = sub_1E159D240(MEMORY[0x1E69E7CC0]);
  }

  v296 = v66;
  v67 = v273;
  sub_1E1AF381C();
  v68 = v274;
  sub_1E1AF381C();
  v69 = v67;
  v70 = v293;
  v71 = v288;
  v288(v69, v293);
  v72 = sub_1E1AF37CC();
  v74 = v73;
  v71(v68, v70);
  if (v74)
  {
    v75 = *(v283 + v63);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v295 = v296;
    sub_1E15983CC(v75, v72, v74, isUniquelyReferenced_nonNull_native);

    v66 = v295;
    v296 = v295;
  }

  v286 = v66;
  v77 = v291;
  sub_1E1AF381C();
  v78 = v285;
  sub_1E1AF381C();
  v79 = v293;
  v80 = v288;
  v288(v77, v293);
  v81 = sub_1E1AF37CC();
  v83 = v82;
  v84 = v78;
  v85 = v286;
  v80(v84, v79);
  v86 = v80;
  if (v83)
  {
    if (*(v85 + 16))
    {

      v87 = sub_1E13018F8(v81, v83);
      v89 = v88;

      if (v89)
      {
        v90 = *(*(v85 + 56) + 8 * v87);

LABEL_22:

        goto LABEL_23;
      }
    }
  }

  v295 = v85;

  v91 = v263;
  sub_1E1AF395C();

  v92 = v291;
  sub_1E1AF381C();
  v90 = static Action.tryToMakeInstance(byDeserializing:using:)(v92, v91);
  v86(v92, v293);
  if (!v90)
  {
    (*(v287 + 8))(v91, v290);
    goto LABEL_22;
  }

  v93 = v287;
  if (v83)
  {
    swift_beginAccess();
    swift_retain_n();
    v94 = swift_isUniquelyReferenced_nonNull_native();
    v294 = v296;
    sub_1E15983CC(v90, v81, v83, v94);

    v286 = v294;
    v296 = v294;
    swift_endAccess();
  }

  (*(v93 + 8))(v91, v290);
LABEL_23:
  *(v283 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_buyAction) = v90;
  v95 = v291;
  sub_1E1AF381C();
  v96 = v285;
  sub_1E1AF381C();
  v97 = v293;
  v98 = v288;
  v288(v95, v293);
  v99 = sub_1E1AF37CC();
  v101 = v100;
  v98(v96, v97);
  v102 = v98;
  v103 = v286;
  if (v101)
  {
    if (*(v286 + 16))
    {

      v104 = sub_1E13018F8(v99, v101);
      v106 = v105;

      if (v106)
      {
        v107 = *(*(v103 + 56) + 8 * v104);

LABEL_32:

        goto LABEL_33;
      }
    }
  }

  v295 = v103;

  v108 = v264;
  sub_1E1AF395C();

  v109 = v291;
  v110 = v108;
  sub_1E1AF381C();
  v107 = static Action.tryToMakeInstance(byDeserializing:using:)(v109, v108);
  v102(v109, v293);
  if (!v107)
  {
    (*(v287 + 8))(v110, v290);
    goto LABEL_32;
  }

  v111 = v287;
  if (v101)
  {
    swift_beginAccess();
    swift_retain_n();
    v112 = swift_isUniquelyReferenced_nonNull_native();
    v294 = v296;
    sub_1E15983CC(v107, v99, v101, v112);

    v286 = v294;
    v296 = v294;
    swift_endAccess();
  }

  (*(v111 + 8))(v110, v290);
LABEL_33:
  *(v283 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_updateAction) = v107;
  v113 = v291;
  sub_1E1AF381C();
  v114 = v285;
  sub_1E1AF381C();
  v115 = v293;
  v116 = v288;
  v288(v113, v293);
  v117 = sub_1E1AF37CC();
  v119 = v118;
  v116(v114, v115);
  v120 = v116;
  v121 = v286;
  if (v119)
  {
    if (*(v286 + 16))
    {

      v122 = sub_1E13018F8(v117, v119);
      v124 = v123;

      if (v124)
      {
        v125 = *(*(v121 + 56) + 8 * v122);

LABEL_42:

        goto LABEL_43;
      }
    }
  }

  v295 = v121;

  v126 = v265;
  sub_1E1AF395C();

  v127 = v291;
  sub_1E1AF381C();
  v125 = static Action.tryToMakeInstance(byDeserializing:using:)(v127, v126);
  v120(v127, v293);
  if (!v125)
  {
    (*(v287 + 8))(v126, v290);
    goto LABEL_42;
  }

  if (v119)
  {
    swift_beginAccess();
    swift_retain_n();
    v128 = swift_isUniquelyReferenced_nonNull_native();
    v294 = v296;
    sub_1E15983CC(v125, v117, v119, v128);

    v286 = v294;
    v296 = v294;
    swift_endAccess();
  }

  (*(v287 + 8))(v126, v290);
LABEL_43:
  *(v283 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_downloadAction) = v125;
  v129 = v291;
  sub_1E1AF381C();
  v130 = v285;
  sub_1E1AF381C();
  v131 = v293;
  v132 = v288;
  v288(v129, v293);
  v133 = sub_1E1AF37CC();
  v135 = v134;
  v132(v130, v131);
  v136 = v132;
  v137 = v286;
  if (v135)
  {
    if (*(v286 + 16))
    {

      v138 = sub_1E13018F8(v133, v135);
      v140 = v139;

      if (v140)
      {
        v141 = *(*(v137 + 56) + 8 * v138);

LABEL_52:

        goto LABEL_53;
      }
    }
  }

  v295 = v137;

  v142 = v266;
  sub_1E1AF395C();

  v143 = v291;
  v144 = v142;
  sub_1E1AF381C();
  v141 = static Action.tryToMakeInstance(byDeserializing:using:)(v143, v142);
  v136(v143, v293);
  if (!v141)
  {
    (*(v287 + 8))(v144, v290);
    goto LABEL_52;
  }

  if (v135)
  {
    swift_beginAccess();
    swift_retain_n();
    v145 = swift_isUniquelyReferenced_nonNull_native();
    v294 = v296;
    sub_1E15983CC(v141, v133, v135, v145);

    v286 = v294;
    v296 = v294;
    swift_endAccess();
  }

  (*(v287 + 8))(v144, v290);
LABEL_53:
  *(v283 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_purchasedAction) = v141;
  v146 = v291;
  sub_1E1AF381C();
  v147 = v285;
  sub_1E1AF381C();
  v148 = v293;
  v149 = v288;
  v288(v146, v293);
  v150 = sub_1E1AF37CC();
  v152 = v151;
  v149(v147, v148);
  v153 = v149;
  v154 = v286;
  if (v152 && *(v286 + 16) && (, v155 = sub_1E13018F8(v150, v152), v157 = v156, , (v157 & 1) != 0))
  {
    v158 = *(*(v154 + 56) + 8 * v155);
  }

  else
  {
    v295 = v154;

    v159 = v267;
    sub_1E1AF395C();

    v160 = v291;
    sub_1E1AF381C();
    v158 = static Action.tryToMakeInstance(byDeserializing:using:)(v160, v159);
    v153(v160, v293);
    if (v158)
    {
      v161 = v287;
      if (v152)
      {
        swift_beginAccess();
        swift_retain_n();
        v162 = swift_isUniquelyReferenced_nonNull_native();
        v294 = v296;
        sub_1E15983CC(v158, v150, v152, v162);

        v286 = v294;
        v296 = v294;
        swift_endAccess();
      }

      (*(v161 + 8))(v159, v290);
    }

    else
    {
      (*(v287 + 8))(v159, v290);
    }
  }

  *(v283 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_installedAction) = v158;
  v163 = v291;
  sub_1E1AF381C();
  v164 = v285;
  sub_1E1AF381C();
  v165 = v293;
  v166 = v288;
  v288(v163, v293);
  v167 = sub_1E1AF37CC();
  v169 = v168;
  v166(v164, v165);
  v170 = v166;
  v171 = v286;
  if (v169)
  {
    if (*(v286 + 16))
    {

      v172 = sub_1E13018F8(v167, v169);
      v174 = v173;

      if (v174)
      {
        v175 = *(*(v171 + 56) + 8 * v172);

LABEL_71:

        goto LABEL_72;
      }
    }
  }

  v295 = v171;

  v176 = v268;
  sub_1E1AF395C();
  v177 = v176;

  v178 = v291;
  sub_1E1AF381C();
  v175 = static Action.tryToMakeInstance(byDeserializing:using:)(v178, v176);
  v170(v178, v293);
  if (!v175)
  {
    (*(v287 + 8))(v177, v290);
    goto LABEL_71;
  }

  v179 = v287;
  if (v169)
  {
    swift_beginAccess();
    swift_retain_n();
    v180 = swift_isUniquelyReferenced_nonNull_native();
    v294 = v296;
    sub_1E15983CC(v175, v167, v169, v180);

    v286 = v294;
    v296 = v294;
    swift_endAccess();
  }

  (*(v179 + 8))(v177, v290);
LABEL_72:
  *(v283 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_resumeAction) = v175;
  v181 = v291;
  sub_1E1AF381C();
  v182 = v285;
  sub_1E1AF381C();
  v183 = v293;
  v184 = v288;
  v288(v181, v293);
  v185 = sub_1E1AF37CC();
  v187 = v186;
  v184(v182, v183);
  v188 = v184;
  v189 = v286;
  if (v187 && *(v286 + 16) && (, v190 = sub_1E13018F8(v185, v187), v192 = v191, , (v192 & 1) != 0))
  {
    v193 = *(*(v189 + 56) + 8 * v190);
  }

  else
  {
    v295 = v189;

    v194 = v269;
    sub_1E1AF395C();
    v195 = v194;

    v196 = v291;
    sub_1E1AF381C();
    v193 = static Action.tryToMakeInstance(byDeserializing:using:)(v196, v194);
    v188(v196, v293);
    if (v193)
    {
      v197 = v287;
      v198 = v283;
      if (v187)
      {
        swift_beginAccess();
        swift_retain_n();
        v199 = swift_isUniquelyReferenced_nonNull_native();
        v294 = v296;
        sub_1E15983CC(v193, v185, v187, v199);

        v286 = v294;
        v296 = v294;
        swift_endAccess();
      }

      (*(v197 + 8))(v195, v290);
      goto LABEL_82;
    }

    (*(v287 + 8))(v195, v290);
  }

  v198 = v283;
LABEL_82:
  *(v198 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_openAction) = v193;
  v200 = v291;
  sub_1E1AF381C();
  v201 = v285;
  sub_1E1AF381C();
  v202 = v293;
  v203 = v288;
  v288(v200, v293);
  v204 = sub_1E1AF37CC();
  v206 = v205;
  v203(v201, v202);
  v207 = v286;
  if (v206 && *(v286 + 16) && (, v208 = sub_1E13018F8(v204, v206), v210 = v209, , (v210 & 1) != 0))
  {
    v211 = *(*(v207 + 56) + 8 * v208);

    v212 = v283;
  }

  else
  {
    v295 = v207;

    v213 = v270;
    sub_1E1AF395C();

    v214 = v291;
    sub_1E1AF381C();
    v211 = static Action.tryToMakeInstance(byDeserializing:using:)(v214, v213);
    v203(v214, v293);
    if (v211)
    {
      v215 = v287;
      v212 = v283;
      if (v206)
      {
        swift_beginAccess();
        swift_retain_n();
        v216 = swift_isUniquelyReferenced_nonNull_native();
        v294 = v296;
        sub_1E15983CC(v211, v204, v206, v216);

        v286 = v294;
        v296 = v294;
        swift_endAccess();
      }

      (*(v215 + 8))(v213, v290);
    }

    else
    {
      (*(v287 + 8))(v213, v290);

      v212 = v283;
    }
  }

  *(v212 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_subscribePageAction) = v211;
  v217 = v291;
  sub_1E1AF381C();
  v218 = v285;
  sub_1E1AF381C();
  v219 = v293;
  v220 = v288;
  v288(v217, v293);
  v221 = sub_1E1AF37CC();
  v223 = v222;
  v220(v218, v219);
  v224 = v286;
  if (v223 && *(v286 + 16) && (, v225 = sub_1E13018F8(v221, v223), v227 = v226, , (v227 & 1) != 0))
  {
    v228 = *(*(v224 + 56) + 8 * v225);
  }

  else
  {
    v295 = v224;

    v229 = v271;
    sub_1E1AF395C();

    v230 = v291;
    sub_1E1AF381C();
    v228 = static Action.tryToMakeInstance(byDeserializing:using:)(v230, v229);
    v220(v230, v293);
    if (v228)
    {
      v231 = v287;
      if (v223)
      {
        swift_beginAccess();
        swift_retain_n();
        v232 = swift_isUniquelyReferenced_nonNull_native();
        v294 = v296;
        sub_1E15983CC(v228, v221, v223, v232);

        v286 = v294;
        v296 = v294;
        swift_endAccess();
      }

      (*(v231 + 8))(v229, v290);
    }

    else
    {
      (*(v287 + 8))(v229, v290);
    }

    v212 = v283;
  }

  *(v212 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_restrictedAction) = v228;
  v233 = v291;
  sub_1E1AF381C();
  v234 = v285;
  sub_1E1AF381C();
  v235 = v293;
  v236 = v288;
  v288(v233, v293);
  v237 = sub_1E1AF37CC();
  v239 = v238;
  v236(v234, v235);
  v240 = v236;
  v241 = v286;
  if (v239 && *(v286 + 16) && (, v242 = sub_1E13018F8(v237, v239), v244 = v243, , (v244 & 1) != 0))
  {
    v245 = *(*(v241 + 56) + 8 * v242);

    v246 = v212;
    v247 = v287;
    v248 = v284;
  }

  else
  {
    v285 = v237;
    v295 = v241;

    v249 = v272;
    sub_1E1AF395C();

    v250 = v291;
    v248 = v284;
    sub_1E1AF381C();
    v245 = static Action.tryToMakeInstance(byDeserializing:using:)(v250, v249);
    v240(v250, v293);
    if (v245)
    {
      v247 = v287;
      if (v239)
      {
        swift_beginAccess();
        swift_retain_n();
        v251 = swift_isUniquelyReferenced_nonNull_native();
        v294 = v296;
        sub_1E15983CC(v245, v285, v239, v251);

        v286 = v294;
        swift_endAccess();
      }

      (*(v247 + 8))(v249, v290);
    }

    else
    {
      v247 = v287;
      (*(v287 + 8))(v249, v290);
    }

    v246 = v283;
  }

  *(v246 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_cancelAction) = v245;
  v252 = v275;
  sub_1E1AF381C();
  v253 = sub_1E1AF370C();
  v254 = v252;
  v255 = v293;
  v256 = v288;
  v288(v254, v293);
  *(v246 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_includeBetaApps) = v253 & 1;
  v257 = v277;
  (*(v276 + 16))(v277, v248, v255);
  v258 = v247;
  v259 = *(v247 + 16);
  v42 = v278;
  v260 = v289;
  v259(v278, v289, v290);
  v261 = v279;
  v262 = Action.init(deserializing:using:)(v257, v42);
  if (!v261)
  {
    v42 = v262;
  }

  (*(v258 + 8))(v260, v290);
  v256(v248, v255);

  return v42;
}

uint64_t sub_1E150D7BC()
{
}

uint64_t OfferStateAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t OfferStateAction.__deallocating_deinit()
{
  OfferStateAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E150DA8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4F08);
  __swift_allocate_value_buffer(v0, qword_1EE1D2A38);
  __swift_project_value_buffer(v0, qword_1EE1D2A38);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEB4F10);
  return sub_1E1AF39AC();
}

uint64_t type metadata accessor for OfferStateAction()
{
  result = qword_1EE1F2738;
  if (!qword_1EE1F2738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Queue.contents.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Queue.init()@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E1AF5C5C();
  *a1 = result;
  return result;
}

uint64_t Queue.enqueue(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v2, v3);
  sub_1E1AF635C();
  return sub_1E1AF62CC();
}

uint64_t Queue.dequeue()()
{
  v1 = v0;
  sub_1E1AF635C();
  swift_getWitnessTable();
  sub_1E1AF66BC();

  sub_1E1AF66DC();
  sub_1E1AF6ECC();
  swift_getWitnessTable();
  v2 = sub_1E1AF639C();

  *v1 = v2;
  return result;
}

uint64_t sub_1E150DF04(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = sub_1E1AF635C();
  WitnessTable = swift_getWitnessTable();
  return a3(v4, WitnessTable);
}

uint64_t sub_1E150DF80()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E150DFD4()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_roundedCorners;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E150E018(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_roundedCorners;
  swift_beginAccess();
  *(v1 + v3) = a1;
  if ((a1 & 1) == 0)
  {
    if ((a1 & 2) != 0)
    {
      v4 = 2;
      if ((a1 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v4 = 0;
    if ((a1 & 8) != 0)
    {
LABEL_12:
      v4 |= 8uLL;
      goto LABEL_13;
    }

LABEL_7:
    if ((a1 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if ((a1 & 2) == 0)
  {
    v4 = 1;
    if ((a1 & 8) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v4 = 3;
  if ((a1 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if ((a1 & 4) != 0 && (v4 & 4) == 0)
  {
LABEL_15:
    v4 |= 4uLL;
  }

LABEL_16:
  v5 = [v1 layer];
  [v5 setMaskedCorners_];

  return (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE8))();
}

void (*sub_1E150E118(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_roundedCorners;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1E150E1A0;
}

void sub_1E150E1A0(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 24);
    v5 = *(v4 + *(v3 + 32));
    if (v5)
    {
      if ((v5 & 2) != 0)
      {
        v6 = 3;
        if ((v5 & 8) == 0)
        {
LABEL_14:
          if ((v5 & 4) == 0 || (v6 & 4) != 0)
          {
            goto LABEL_17;
          }

LABEL_16:
          v6 |= 4uLL;
LABEL_17:
          v7 = [*(v3 + 24) layer];
          [v7 setMaskedCorners_];

          (*((*MEMORY[0x1E69E7D40] & *v4) + 0xE8))();
          goto LABEL_18;
        }

        goto LABEL_13;
      }

      v6 = 1;
      if ((v5 & 8) != 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if ((v5 & 2) != 0)
      {
        v6 = 2;
        if ((v5 & 8) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v6 = 0;
      if ((v5 & 8) != 0)
      {
LABEL_13:
        v6 |= 8uLL;
        goto LABEL_14;
      }
    }

    if ((v5 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_18:

  free(v3);
}

double sub_1E150E2A4()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_cornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E150E2E8@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_cornerStyle;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

void *sub_1E150E33C()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_borderView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E150E388(void *a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_borderView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    [v1 addSubview_];
  }
}

void (*sub_1E150E420(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_borderView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1E150E4BC;
}

void sub_1E150E4BC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    v4 = v3;
    sub_1E150E388(v3);
    v5 = *(v2 + 24);
  }

  else
  {
    v7 = *(v2 + 32);
    v6 = *(v2 + 40);
    v8 = *(v7 + v6);
    if (v8)
    {
      [v8 removeFromSuperview];
      v9 = *(v7 + v6);
      v7 = *(v2 + 32);
      v6 = *(v2 + 40);
    }

    else
    {
      v9 = 0;
    }

    *(v7 + v6) = v3;
    v5 = v3;

    if (!v3)
    {
      goto LABEL_9;
    }

    [*(v2 + 32) addSubview_];
  }

LABEL_9:

  free(v2);
}

void sub_1E150E578()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_borderWidth;
  swift_beginAccess();
  v2 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_borderView;
  if (*(v0 + v1) >= COERCE_DOUBLE(1))
  {
    swift_beginAccess();
    v5 = *(v0 + v2);
    if (v5)
    {
      v6 = *(v0 + v2);
    }

    else
    {
      type metadata accessor for BorderView();
      v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v8 = *(v0 + v2);
      v9 = v7;
      if (v8)
      {
        [v8 removeFromSuperview];
        v8 = *(v0 + v2);
      }

      *(v0 + v2) = v7;
      v6 = v7;

      [v0 addSubview_];
      v5 = 0;
    }

    v10 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_borderColor;
    swift_beginAccess();
    v11 = *(v0 + v10);
    v12 = v5;
    v13 = v11;
    v14 = v6;
    v15 = [v14 layer];
    v16 = [v13 CGColor];
    [v15 setBorderColor_];

    v17 = *(v0 + v1);
    v18 = [v14 layer];
    [v18 setBorderWidth_];

    v19 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB8))();
    v20 = [v14 layer];
    v21 = v20;
    if (v19)
    {
      if ((v19 & 2) != 0)
      {
        v22 = 3;
        if ((v19 & 8) == 0)
        {
LABEL_23:
          if ((v19 & 4) == 0 || (v22 & 4) != 0)
          {
            goto LABEL_26;
          }

LABEL_25:
          v22 |= 4uLL;
LABEL_26:
          [v20 setMaskedCorners_];

          swift_beginAccess();
          v23 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_cornerRadius;
          swift_beginAccess();
          CornerStyle.apply(withRadius:to:)(v14, *(v0 + v23));

          return;
        }

        goto LABEL_22;
      }

      v22 = 1;
      if ((v19 & 8) != 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if ((v19 & 2) != 0)
      {
        v22 = 2;
        if ((v19 & 8) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      v22 = 0;
      if ((v19 & 8) != 0)
      {
LABEL_22:
        v22 |= 8uLL;
        goto LABEL_23;
      }
    }

    if ((v19 & 4) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *(v0 + v2);
  }

  else
  {
    v4 = 0;
  }

  *(v0 + v2) = 0;
}

id sub_1E150E88C()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_borderColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1E150E8E0(void *a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_borderColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE8))();
}

uint64_t (*sub_1E150E978(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E150E9DC;
}

double sub_1E150E9E0()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_borderWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E150EA24(double a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_borderWidth;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  return (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE8))(v4);
}

uint64_t (*sub_1E150EAA8(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E150F8D8;
}

uint64_t sub_1E150EB0C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0xE8))(result);
  }

  return result;
}

BOOL sub_1E150EB70(char *a1, double a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = [v2 superview];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for RoundedCornerView();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v11[0] = v5;
      (*((*MEMORY[0x1E69E7D40] & *v8) + 0xB0))(v11, a2);
      v9 = [v2 superview];
      [v9 setNeedsLayout];
    }
  }

  v11[1] = v5;
  return CornerStyle.apply(withRadius:to:)(v3, a2);
}

uint64_t sub_1E150EC74(char *a1, double a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_cornerRadius;
  swift_beginAccess();
  *(v3 + v6) = a2;
  v7 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_cornerStyle;
  swift_beginAccess();
  *(v3 + v7) = v5;
  v8 = CornerStyle.apply(withRadius:to:)(v3, a2);
  return (*((*MEMORY[0x1E69E7D40] & *v3) + 0xE8))(v8);
}

uint64_t sub_1E150ED40(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_borderColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  return (*((*MEMORY[0x1E69E7D40] & *v3) + 0xE8))();
}

id RoundedCornerView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id RoundedCornerView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_cornerRadius] = 0;
  v4[OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_cornerStyle] = 1;
  *&v4[OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_roundedCorners] = -1;
  *&v4[OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_borderView] = 0;
  v9 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_borderColor;
  *&v4[v9] = [objc_opt_self() clearColor];
  *&v4[OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_borderWidth] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for RoundedCornerView();
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  [v10 setClipsToBounds_];
  return v10;
}

id RoundedCornerView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void *RoundedCornerView.__allocating_init(radius:style:)(char *a1, double a2)
{
  v4 = *a1;
  v5 = [objc_allocWithZone(v2) initWithFrame_];
  v9 = v4;
  v6 = *((*MEMORY[0x1E69E7D40] & *v5) + 0xB0);
  v7 = v5;
  v6(&v9, a2);

  return v7;
}

void sub_1E150F070()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for RoundedCornerView();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_borderView;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame_];
  }
}

id sub_1E150F19C(void *a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for RoundedCornerView();
  objc_msgSendSuper2(&v6, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (!a1)
  {
    return (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE8))();
  }

  result = [a1 userInterfaceStyle];
  if (v4 != result)
  {
    return (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE8))();
  }

  return result;
}

id RoundedCornerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoundedCornerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s11AppStoreKit17RoundedCornerViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_cornerRadius) = 0;
  *(v0 + OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_cornerStyle) = 1;
  *(v0 + OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_roundedCorners) = -1;
  *(v0 + OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_borderView) = 0;
  v1 = OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_borderColor;
  *(v0 + v1) = [objc_opt_self() clearColor];
  *(v0 + OBJC_IVAR____TtC11AppStoreKit17RoundedCornerView_borderWidth) = 0;
  sub_1E1AF71FC();
  __break(1u);
}

double keypath_getTm_2@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

Swift::Bool __swiftcall String.isValid(expansionFor:)(Swift::String_optional expansionFor)
{
  if (!expansionFor.value._object)
  {
    return 0;
  }

  object = expansionFor.value._object;
  countAndFlagsBits = expansionFor.value._countAndFlagsBits;
  v5 = HIBYTE(expansionFor.value._object) & 0xF;
  if ((expansionFor.value._object & 0x2000000000000000) == 0)
  {
    v5 = expansionFor.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = v1;
    v7 = v2;
    sub_1E1AF5E9C();
    sub_1E1AF5E9C();
    v8 = sub_1E1AF602C();

    if ((v8 & 1) == 0 || countAndFlagsBits == v6 && v7 == object)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      LOBYTE(v5) = sub_1E1AF74AC() ^ 1;
    }
  }

  return v5 & 1;
}

Swift::Bool __swiftcall String.isValid(trailingExtensionFor:)(Swift::String trailingExtensionFor)
{
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  sub_1E1AF5E9C();
  sub_1E1AF5E9C();
  v4 = sub_1E1AF603C();

  return v4 & 1;
}

uint64_t sub_1E150FA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  sub_1E1AF5E9C();
  v6 = sub_1E1AF5E9C();
  LOBYTE(a5) = a5(v6);

  return a5 & 1;
}

uint64_t static String.trailingExtension(expanding:into:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    return 0;
  }

  sub_1E1AF5E9C();
  sub_1E1AF5E9C();
  v9 = sub_1E1AF602C();

  if ((v9 & 1) == 0 || a1 == a3 && a4 == a2)
  {
    return 0;
  }

  if (sub_1E1AF74AC())
  {
    return 0;
  }

  v11 = sub_1E1AF5F1C();
  v12 = sub_1E150FD68(v11, a3, a4);
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = MEMORY[0x1E68FEBF0](v12, v14, v16, v18);

  return v19;
}

uint64_t static String.prefixText(undoingExpansionOf:with:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a4)
  {
    goto LABEL_7;
  }

  v5 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v5 && (sub_1E1AF5E9C(), sub_1E1AF5E9C(), v6 = sub_1E1AF603C(), , , (v6 & 1) != 0))
  {
    v7 = sub_1E1AF5F1C();

    v8 = sub_1E150FE18(v7);
    v10 = v9;
    v12 = v11;
    v14 = v13;

    a1 = MEMORY[0x1E68FEBF0](v8, v10, v12, v14);
  }

  else
  {
LABEL_7:
  }

  return a1;
}

unint64_t sub_1E150FD68(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1E1AF5F4C();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1E1AF609C();
}

uint64_t sub_1E150FE18(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1E1AF5F4C();

    return sub_1E1AF609C();
  }

  return result;
}

unint64_t sub_1E150FF24()
{
  result = qword_1ECEB4FC8;
  if (!qword_1ECEB4FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4FC8);
  }

  return result;
}

unint64_t sub_1E150FF7C()
{
  result = qword_1ECEB4FD0;
  if (!qword_1ECEB4FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4FD0);
  }

  return result;
}

unint64_t sub_1E150FFD0(uint64_t a1)
{
  *(a1 + 8) = sub_1E1510000();
  result = sub_1E1510054();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E1510000()
{
  result = qword_1ECEB4FD8;
  if (!qword_1ECEB4FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4FD8);
  }

  return result;
}

unint64_t sub_1E1510054()
{
  result = qword_1ECEB4FE0;
  if (!qword_1ECEB4FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4FE0);
  }

  return result;
}

unint64_t sub_1E15100AC()
{
  result = qword_1EE1EC778[0];
  if (!qword_1EE1EC778[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1EC778);
  }

  return result;
}

unint64_t sub_1E1510104()
{
  result = qword_1EE1EC770;
  if (!qword_1EE1EC770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1EC770);
  }

  return result;
}

uint64_t sub_1E1510158()
{
  sub_1E1803CD0(*v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10);
  sub_1E130C384();
  v1 = sub_1E1AF5D6C();

  return v1;
}

uint64_t UpsellGridContent.__allocating_init(primaryIcon:remainingIcons:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t UpsellGridContent.init(primaryIcon:remainingIcons:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t UpsellGridContent.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  UpsellGridContent.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t UpsellGridContent.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v29 = &v28 - v4;
  v5 = sub_1E1AF39DC();
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  type metadata accessor for ImpressionableArtwork();
  sub_1E1AF381C();
  v13 = *(v36 + 16);
  v33 = v5;
  v13(v7, v35, v5);
  sub_1E151067C();
  sub_1E1AF464C();
  *(v37 + 16) = v38;
  v34 = a1;
  sub_1E1AF381C();
  v14 = v29;
  sub_1E1AF374C();
  v15 = *(v9 + 8);
  v30 = v9 + 8;
  v31 = v8;
  v16 = v8;
  v17 = v14;
  v15(v11, v16);
  v18 = sub_1E1AF5A6C();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 48))(v17, 1, v18);
  if (v20 == 1)
  {
    v21 = v35;
    sub_1E14352B8(v17);
    v22 = MEMORY[0x1E69E7CC0];
LABEL_5:
    v15(v34, v31);
    v25 = v36;
    v26 = v37;
    *(v37 + 24) = v22;
    (*(v25 + 8))(v21, v33);
    return v26;
  }

  MEMORY[0x1EEE9AC00](v20);
  v21 = v35;
  *(&v28 - 2) = v35;
  v23 = v32;
  v24 = sub_1E1AF59FC();
  if (!v23)
  {
    v22 = v24;
    (*(v19 + 8))(v17, v18);
    goto LABEL_5;
  }

  type metadata accessor for UpsellGridContent();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

unint64_t sub_1E151067C()
{
  result = qword_1EE1DA948[0];
  if (!qword_1EE1DA948[0])
  {
    type metadata accessor for ImpressionableArtwork();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1DA948);
  }

  return result;
}

uint64_t sub_1E15106D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14[1] = a3;
  v5 = sub_1E1AF39DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ImpressionableArtwork();
  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  sub_1E151067C();
  return sub_1E1AF464C();
}

uint64_t UpsellGridContent.deinit()
{

  return v0;
}

uint64_t UpsellGridContent.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E1510938@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for UpsellGridContent();
  v7 = swift_allocObject();
  result = UpsellGridContent.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E15109F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E1510B04();
  sub_1E1AF04EC();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1E1510A94()
{
  swift_getKeyPath();
  sub_1E1510B04();
  sub_1E1AF04EC();

  return *(v0 + 16);
}

unint64_t sub_1E1510B04()
{
  result = qword_1ECEB4FF0;
  if (!qword_1ECEB4FF0)
  {
    type metadata accessor for TruncationState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4FF0);
  }

  return result;
}

uint64_t type metadata accessor for TruncationState()
{
  result = qword_1ECEB4FF8;
  if (!qword_1ECEB4FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1510BA8(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E1510B04();
    sub_1E1AF04DC();
  }

  return result;
}

uint64_t TruncationState.__allocating_init(isTruncated:)(char a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  sub_1E1AF051C();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t TruncationState.init(isTruncated:)(char a1)
{
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  sub_1E1AF051C();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_1E1510D24(double a1, double a2)
{
  if (*(v2 + 24) == a1 && *(v2 + 32) == a2)
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;

    return sub_1E1511124();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E1510B04();
    sub_1E1AF04DC();
  }
}

uint64_t sub_1E1510E3C(double a1, double a2)
{
  if (*(v2 + 40) == a1 && *(v2 + 48) == a2)
  {
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;

    return sub_1E1511124();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E1510B04();
    sub_1E1AF04DC();
  }
}

double sub_1E1510F54()
{
  swift_getKeyPath();
  sub_1E1510B04();
  sub_1E1AF04EC();

  return *(v0 + 24);
}

__n128 sub_1E1510FC4@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E1510B04();
  sub_1E1AF04EC();

  result = *(v3 + 24);
  *a2 = result;
  return result;
}

double sub_1E151103C()
{
  swift_getKeyPath();
  sub_1E1510B04();
  sub_1E1AF04EC();

  return *(v0 + 40);
}

__n128 sub_1E15110AC@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E1510B04();
  sub_1E1AF04EC();

  result = *(v3 + 40);
  *a2 = result;
  return result;
}

uint64_t sub_1E1511124()
{
  swift_getKeyPath();
  sub_1E1510B04();
  sub_1E1AF04EC();

  v1 = *(v0 + 32);
  swift_getKeyPath();
  sub_1E1AF04EC();

  v3 = *(v0 + 48);
  if ((*(v0 + 16) ^ (v3 < v1)))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E1AF04DC();
  }

  else
  {
    *(v0 + 16) = v3 < v1;
  }

  return result;
}

uint64_t TruncationState.deinit()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit15TruncationState___observationRegistrar;
  v2 = sub_1E1AF052C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TruncationState.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit15TruncationState___observationRegistrar;
  v2 = sub_1E1AF052C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1E151138C()
{
  result = sub_1E1AF052C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E1511518(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E1511560(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E15115CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v31 = a5;
  v29 = a4;
  v6 = a3;
  v28 = a3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5020) - 8;
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = sub_1E1AF217C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v30 = sub_1E1AF2AEC();
  (*(v15 + 16))(&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14);
  v17 = (*(v15 + 80) + 33) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = v6;
  LOBYTE(v6) = v29;
  *(v18 + 32) = v29;
  (*(v15 + 32))(v18 + v17, &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5008);
  (*(*(v19 - 8) + 16))(v13, v31, v19);
  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5028) + 36)] = 256;
  v20 = swift_allocObject();
  v21 = v28;
  *(v20 + 16) = a2;
  *(v20 + 24) = v21;
  *(v20 + 32) = v6;
  swift_retain_n();
  v22 = sub_1E1AF2D1C();
  v23 = v33;
  v24 = &v13[*(v32 + 44)];
  *v24 = sub_1E1511F04;
  v24[1] = v20;
  v24[2] = v22;
  v24[3] = v25;
  sub_1E1511F10(v13, v23);
  *a6 = v30;
  a6[1] = sub_1E1511EEC;
  a6[2] = v18;
  a6[3] = 0;
  a6[4] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5030);
  sub_1E1511F10(v23, a6 + *(v26 + 48));

  sub_1E1300E34(sub_1E1511EEC);
  sub_1E1300E34(0);
  sub_1E1511F80(v13);
  sub_1E1511F80(v23);

  sub_1E1361B18(sub_1E1511EEC, v18);
  return sub_1E1361B18(0, 0);
}

uint64_t sub_1E15118F4(uint64_t a1)
{
  sub_1E1AF216C();
  if (*(a1 + 40) == v2 && *(a1 + 48) == v3)
  {
    *(a1 + 40) = v2;
    *(a1 + 48) = v3;
    return sub_1E1511124();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E1510B04();
    sub_1E1AF04DC();
  }
}

uint64_t sub_1E15119F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v17 = a4;
  v9 = sub_1E1AF217C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = sub_1E1AF2AEC();
  (*(v10 + 16))(&v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v9);
  v13 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = v17;
  (*(v10 + 32))(v14 + v13, &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], v9);
  *a5 = v12;
  a5[1] = sub_1E15120AC;
  a5[2] = v14;
  a5[3] = 0;
  a5[4] = 0;
}

uint64_t sub_1E1511B60(uint64_t a1)
{
  sub_1E1AF216C();
  if (*(a1 + 24) == v2 && *(a1 + 32) == v3)
  {
    *(a1 + 24) = v2;
    *(a1 + 32) = v3;
    return sub_1E1511124();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E1510B04();
    sub_1E1AF04DC();
  }
}

uint64_t sub_1E1511C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5008);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = *v2;
  v10 = v2[1];
  v11 = *(v2 + 16);
  sub_1E1302CD4(&qword_1ECEB5010, &qword_1ECEB5008);
  sub_1E1AF2A8C();
  (*(v6 + 16))(v8, a1, v5);
  v12 = (*(v6 + 80) + 33) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  *(v13 + 24) = v10;
  *(v13 + 32) = v11;
  (*(v6 + 32))(v13 + v12, v8, v5);

  v14 = sub_1E1AF2D1C();
  v16 = v15;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5018);
  v18 = (a2 + *(result + 36));
  *v18 = sub_1E1511E58;
  v18[1] = v13;
  v18[2] = v14;
  v18[3] = v16;
  return result;
}

uint64_t sub_1E1511E58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5008) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = v2 + ((*(v5 + 80) + 33) & ~*(v5 + 80));

  return sub_1E15115CC(a1, v6, v7, v8, v9, a2);
}

uint64_t sub_1E1511F10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1511F80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_30Tm()
{
  v1 = sub_1E1AF217C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E15120C4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_1E1AF217C() - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = v1 + ((*(v2 + 80) + 33) & ~*(v2 + 80));

  return a1(v3, v4, v5, v6);
}

unint64_t sub_1E1512140()
{
  result = qword_1ECEB5038;
  if (!qword_1ECEB5038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB5018);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB5008);
    sub_1E1302CD4(&qword_1ECEB5010, &qword_1ECEB5008);
    swift_getOpaqueTypeConformance2();
    sub_1E1302CD4(&qword_1ECEB5040, &qword_1ECEB5048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5038);
  }

  return result;
}

char *ArcadeAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v60 = a2;
  v5 = sub_1E1AF39DC();
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v50 = &v49 - v8;
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v53 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v51 = &v49 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v49 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v49 - v18;
  sub_1E1AF381C();
  v20 = sub_1E1AF37CC();
  v22 = v21;
  v52 = v10;
  v23 = *(v10 + 8);
  v23(v19, v9);
  v24 = (v3 + OBJC_IVAR____TtC11AppStoreKit12ArcadeAction_productId);
  *v24 = v20;
  v24[1] = v22;
  sub_1E1AF381C();
  v25 = sub_1E1AF37CC();
  v27 = v26;
  v23(v17, v9);
  if (v27)
  {
    v28 = v25;
  }

  else
  {
    v28 = 0;
  }

  v29 = (v3 + OBJC_IVAR____TtC11AppStoreKit12ArcadeAction_appAdamId);
  *v29 = v28;
  v29[1] = v27;
  type metadata accessor for Action();
  sub_1E1AF381C();
  v30 = v50;
  v31 = static Action.tryToMakeInstance(byDeserializing:using:)(v19, v60);
  v23(v19, v9);
  v32 = v3;
  v33 = v23;
  v34 = v9;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit12ArcadeAction_postSubscribeAction) = v31;
  sub_1E1AF381C();
  sub_1E1AF37EC();
  v33(v19, v9);
  v55 = v32;
  v35 = (v32 + OBJC_IVAR____TtC11AppStoreKit12ArcadeAction_subscriptionToken);
  v36 = v59;
  *v35 = v58;
  v35[1] = v36;
  v37 = v51;
  v38 = a1;
  sub_1E1AF381C();
  sub_1E1AF368C();
  v33(v37, v34);
  v39 = sub_1E1AF40DC();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v30, 1, v39) == 1)
  {
    sub_1E1308058(v30, &qword_1ECEB2B28);
    v41 = 0;
  }

  else
  {
    v41 = sub_1E1AF40BC();
    (*(v40 + 8))(v30, v39);
  }

  *(v55 + OBJC_IVAR____TtC11AppStoreKit12ArcadeAction_paymentMetricsOverlay) = v41;
  v42 = v53;
  v43 = v38;
  (*(v52 + 16))(v53, v38, v34);
  v45 = v56;
  v44 = v57;
  v46 = v54;
  (*(v56 + 16))(v54, v60, v57);
  v47 = Action.init(deserializing:using:)(v42, v46);
  (*(v45 + 8))(v60, v44);
  v33(v43, v34);
  return v47;
}

uint64_t ArcadeAction.__allocating_init(appAdamId:productId:postSubscribeAction:paymentMetricsOverlay:actionMetrics:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a6;
  v38 = a5;
  v36 = sub_1E1AEFEAC();
  v35 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v34 - v13;
  v15 = sub_1E1AF3E1C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v20 = a1[1];
  v21 = (v19 + OBJC_IVAR____TtC11AppStoreKit12ArcadeAction_appAdamId);
  *v21 = *a1;
  v21[1] = v20;
  v22 = (v19 + OBJC_IVAR____TtC11AppStoreKit12ArcadeAction_productId);
  *v22 = a2;
  v22[1] = a3;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit12ArcadeAction_postSubscribeAction) = a4;
  v24 = v37;
  v23 = v38;
  v25 = (v19 + OBJC_IVAR____TtC11AppStoreKit12ArcadeAction_subscriptionToken);
  *v25 = 0u;
  v25[1] = 0u;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit12ArcadeAction_paymentMetricsOverlay) = v23;
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  (*(v16 + 16))(v18, v24, v15);
  v26 = sub_1E1AF46DC();
  (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
  v27 = (v19 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v27 = 0u;
  v27[1] = 0u;
  sub_1E134FD1C(v47, &v41, &unk_1ECEB5670);
  if (*(&v42 + 1))
  {
    v44 = v41;
    v45 = v42;
    v46 = v43;
  }

  else
  {
    sub_1E1AEFE9C();
    v28 = sub_1E1AEFE7C();
    v30 = v29;
    (*(v35 + 8))(v11, v36);
    v39 = v28;
    v40 = v30;
    sub_1E1AF6F6C();
    sub_1E1308058(&v41, &unk_1ECEB5670);
  }

  (*(v16 + 8))(v24, v15);
  sub_1E1308058(v47, &unk_1ECEB5670);
  v31 = v19 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  v32 = v45;
  *v31 = v44;
  *(v31 + 16) = v32;
  *(v31 + 32) = v46;
  sub_1E134B7C8(v14, v19 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v19 + 16) = xmmword_1E1B13740;
  *(v19 + 32) = 0;
  *(v19 + 40) = 0;
  (*(v16 + 32))(v19 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v18, v15);
  return v19;
}

uint64_t ArcadeAction.init(appAdamId:productId:postSubscribeAction:paymentMetricsOverlay:actionMetrics:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v38 = a6;
  v39 = a5;
  v37 = sub_1E1AEFEAC();
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v35 - v15;
  v17 = sub_1E1AF3E1C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[1];
  v22 = (v7 + OBJC_IVAR____TtC11AppStoreKit12ArcadeAction_appAdamId);
  *v22 = *a1;
  v22[1] = v21;
  v23 = (v7 + OBJC_IVAR____TtC11AppStoreKit12ArcadeAction_productId);
  *v23 = a2;
  v23[1] = a3;
  *(v7 + OBJC_IVAR____TtC11AppStoreKit12ArcadeAction_postSubscribeAction) = a4;
  v25 = v38;
  v24 = v39;
  v26 = (v7 + OBJC_IVAR____TtC11AppStoreKit12ArcadeAction_subscriptionToken);
  *v26 = 0u;
  v26[1] = 0u;
  *(v7 + OBJC_IVAR____TtC11AppStoreKit12ArcadeAction_paymentMetricsOverlay) = v24;
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  (*(v18 + 16))(v20, v25, v17);
  v27 = sub_1E1AF46DC();
  (*(*(v27 - 8) + 56))(v16, 1, 1, v27);
  v28 = (v7 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v28 = 0u;
  v28[1] = 0u;
  sub_1E134FD1C(v48, &v42, &unk_1ECEB5670);
  if (*(&v43 + 1))
  {
    v45 = v42;
    v46 = v43;
    v47 = v44;
  }

  else
  {
    sub_1E1AEFE9C();
    v29 = sub_1E1AEFE7C();
    v31 = v30;
    (*(v36 + 8))(v13, v37);
    v40 = v29;
    v41 = v31;
    sub_1E1AF6F6C();
    sub_1E1308058(&v42, &unk_1ECEB5670);
  }

  (*(v18 + 8))(v25, v17);
  sub_1E1308058(v48, &unk_1ECEB5670);
  v32 = v7 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v32 + 32) = v47;
  v33 = v46;
  *v32 = v45;
  *(v32 + 16) = v33;
  sub_1E134B7C8(v16, v7 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v7 + 16) = xmmword_1E1B13740;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  (*(v18 + 32))(v7 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v20, v17);
  return v7;
}

uint64_t ArcadeAction.productId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit12ArcadeAction_productId);

  return v1;
}

uint64_t ArcadeAction.appAdamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit12ArcadeAction_appAdamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC11AppStoreKit12ArcadeAction_appAdamId);
  a1[1] = v2;
}

uint64_t sub_1E15130B8()
{

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit12ArcadeAction_subscriptionToken, &qword_1ECEB2DF0);
}

uint64_t ArcadeAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit12ArcadeAction_subscriptionToken, &qword_1ECEB2DF0);

  return v0;
}

uint64_t ArcadeAction.__deallocating_deinit()
{
  ArcadeAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArcadeAction()
{
  result = qword_1EE1F6350;
  if (!qword_1EE1F6350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShelfBasedCollectionViewController.collectionViewCellProvider(indexPath:item:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = a1;
  v9 = sub_1E1AF591C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4408);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v48 - v13;
  v15 = type metadata accessor for ItemLayoutContext();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a5 + 32);
  v51 = a4;
  v52 = v5;
  v21 = v20(a4, a5, v17);
  if (v21)
  {
    v22 = v21;
    if (a3)
    {

      ShelfBasedCollectionViewController.itemLayoutContext(at:)(v50, v51, a5, v14);
      if ((*(v16 + 48))(v14, 1, v15) == 1)
      {

        sub_1E1308058(v14, &qword_1ECEB4408);
      }

      else
      {
        sub_1E1515094(v14, v19, type metadata accessor for ItemLayoutContext);
        ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter(a5, &v54);
        v23 = v57;
        v24 = v58;
        __swift_project_boxed_opaque_existential_1Tm(&v54, v57);
        v25 = (*(v24 + 16))(v19, a3, v23, v24);
        if (v25)
        {
          v27 = v25;
          v28 = v26;
          __swift_destroy_boxed_opaque_existential_1(&v54);
          v29 = *(v28 + 16);
          v30 = v22;
          v31 = v29(v19, v30, a3, v27, v28);
          ShelfBasedCollectionViewController.collectionElementsObserver.getter(v51, a5);
          v33 = v32;
          ObjectType = swift_getObjectType();
          (*(v33 + 16))(v31, v19, v30, a3, ObjectType, v33);
          swift_unknownObjectRelease();

          sub_1E15150FC(v19, type metadata accessor for ItemLayoutContext);
          return v31;
        }

        sub_1E15150FC(v19, type metadata accessor for ItemLayoutContext);

        __swift_destroy_boxed_opaque_existential_1(&v54);
      }
    }

    else
    {
    }
  }

  if (qword_1EE1E35E8 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v9, qword_1EE216188);
  v49 = v10;
  (*(v10 + 16))(v53, v36, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B05090;
  v37 = MEMORY[0x1E69E6158];
  v57 = MEMORY[0x1E69E6158];
  v54 = 0xD000000000000033;
  v55 = 0x80000001E1B64080;
  sub_1E1AF38BC();
  sub_1E1308058(&v54, &qword_1ECEB2DF0);
  v38 = sub_1E1AF01FC();
  v57 = v38;
  v39 = __swift_allocate_boxed_opaque_existential_0(&v54);
  (*(*(v38 - 8) + 16))(v39, v50, v38);
  sub_1E1AF38BC();
  sub_1E1308058(&v54, &qword_1ECEB2DF0);
  v57 = v37;
  v54 = 0xD000000000000038;
  v55 = 0x80000001E1B640C0;
  sub_1E1AF38BC();
  sub_1E1308058(&v54, &qword_1ECEB2DF0);
  v40 = (*(a5 + 56))(v51, a5);
  if (v40)
  {
    v41 = v40 + *((*MEMORY[0x1E69E7D40] & *v40) + class metadata base offset for ModelMappedDiffableDataSource + 16);
    v42 = v40;
    swift_beginAccess();
    v43 = &v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24A0) + 52)];
    v45 = *v43;
    v44 = v43[1];

    v46 = MEMORY[0x1E69E6158];
  }

  else
  {
    v45 = 0;
    v44 = 0;
    v46 = 0;
    v56 = 0;
  }

  v54 = v45;
  v55 = v44;
  v57 = v46;
  sub_1E1AF38BC();
  sub_1E1308058(&v54, &qword_1ECEB2DF0);
  v47 = v53;
  sub_1E1AF54BC();

  (*(v49 + 8))(v47, v9);
  return 0;
}

void *ShelfBasedCollectionViewController.supplementaryViewProvider(elementKind:indexPath:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v101 = a3;
  v102 = a2;
  v103 = a1;
  v10 = sub_1E1AF591C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4408);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v94 = &v84 - v15;
  v93 = type metadata accessor for ItemLayoutContext();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v91 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5050);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v96 = &v84 - v18;
  v19 = sub_1E1AF01FC();
  v97 = *(v19 - 8);
  v98 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v95 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35C0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v84 - v22;
  v24 = type metadata accessor for ShelfLayoutContext();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v99 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = a6;
  result = (*(a6 + 32))(a5, a6, v26);
  if (result)
  {
    v29 = result;
    if (!a4)
    {

      return 0;
    }

    v88 = v25;
    v87 = v13;
    v85 = v11;
    v86 = v10;
    v104 = v6;
    v30 = a4;
    v89 = v6;
    v31 = v100;
    v32 = *(v100 + 8);
    v33 = *(v32 + 16);

    v90 = a5;
    v33(&v105, v103, v102, a5, v32);
    if (*(&v106 + 1))
    {
      sub_1E1361B28(&v105, &v108);
      v34 = *(&v109 + 1);
      v35 = v110;
      __swift_project_boxed_opaque_existential_1Tm(&v108, *(&v109 + 1));
      v36 = *(v35 + 24);
      v37 = v29;
      v38 = v36(v101, v37, v34, v35);

      __swift_destroy_boxed_opaque_existential_1(&v108);
      return v38;
    }

    v84 = v30;
    sub_1E1308058(&v105, &qword_1ECEB4638);
    v39 = v101;
    ShelfBasedCollectionViewController.shelfLayoutContext(containing:)(v90, v31, v23);
    if ((v88)[6](v23, 1, v24) == 1)
    {

      sub_1E1308058(v23, &qword_1ECEB35C0);
      return 0;
    }

    v40 = v31;
    v41 = v99;
    sub_1E1515094(v23, v99, type metadata accessor for ShelfLayoutContext);
    ShelfBasedCollectionViewController.shelfSupplementaryProvider.getter(v90, v31);
    v43 = v42;
    ObjectType = swift_getObjectType();
    v45 = v29;
    v47 = v102;
    v46 = v103;
    v48 = v39;
    v49 = v84;
    v50 = ShelfSupplementaryProvider.dequeueSupplementaryView(elementKind:at:for:in:asPartOf:)(v103, v102, v48, v41, v45, v84, ObjectType, v43);
    swift_unknownObjectRelease();
    if (v50)
    {

      sub_1E15150FC(v41, type metadata accessor for ShelfLayoutContext);
      return v50;
    }

    v88 = v45;
    String.extractElementKindContentIdentifier()(v46, v47, &v105);
    if (!*(&v106 + 1))
    {

      sub_1E1308058(&v105, &qword_1ECEB4720);
      v52 = v87;
LABEL_18:
      if (qword_1EE1E35E8 != -1)
      {
        swift_once();
      }

      v59 = v86;
      v60 = __swift_project_value_buffer(v86, qword_1EE216188);
      (*(v85 + 16))(v52, v60, v59);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B09FF0;
      v61 = MEMORY[0x1E69E6158];
      *(&v109 + 1) = MEMORY[0x1E69E6158];
      *&v108 = 0xD00000000000003ELL;
      *(&v108 + 1) = 0x80000001E1B64100;
      sub_1E1AF38BC();
      sub_1E1308058(&v108, &qword_1ECEB2DF0);
      *(&v109 + 1) = v61;
      *&v108 = v103;
      *(&v108 + 1) = v102;

      sub_1E1AF38BC();
      sub_1E1308058(&v108, &qword_1ECEB2DF0);
      *(&v109 + 1) = v61;
      strcpy(&v108, "at indexPath:");
      HIWORD(v108) = -4864;
      sub_1E1AF38BC();
      sub_1E1308058(&v108, &qword_1ECEB2DF0);
      v62 = v98;
      *(&v109 + 1) = v98;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v108);
      (*(v97 + 16))(boxed_opaque_existential_0, v101, v62);
      sub_1E1AF38BC();
      sub_1E1308058(&v108, &qword_1ECEB2DF0);
      *(&v109 + 1) = v61;
      *&v108 = 0xD000000000000028;
      *(&v108 + 1) = 0x80000001E1B64140;
      sub_1E1AF38BC();
      sub_1E1308058(&v108, &qword_1ECEB2DF0);
      *(&v109 + 1) = v61;
      *&v108 = 0xD000000000000011;
      *(&v108 + 1) = 0x80000001E1B64170;
      sub_1E1AF38BC();
      sub_1E1308058(&v108, &qword_1ECEB2DF0);
      v64 = (*(v100 + 56))(v90);
      if (v64)
      {
        v65 = v64 + *((*MEMORY[0x1E69E7D40] & *v64) + class metadata base offset for ModelMappedDiffableDataSource + 16);
        v66 = v64;
        swift_beginAccess();
        v67 = &v65[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24A0) + 52)];
        v69 = *v67;
        v68 = *(v67 + 1);

        v70 = MEMORY[0x1E69E6158];
      }

      else
      {
        v69 = 0;
        v68 = 0;
        v70 = 0;
        *&v109 = 0;
      }

      v71 = v99;
      v72 = v88;
      *&v108 = v69;
      *(&v108 + 1) = v68;
      *(&v109 + 1) = v70;
      sub_1E1AF38BC();
      sub_1E1308058(&v108, &qword_1ECEB2DF0);
      v73 = v86;
      v74 = v87;
      sub_1E1AF54BC();

      (*(v85 + 8))(v74, v73);
      sub_1E15150FC(v71, type metadata accessor for ShelfLayoutContext);
      return 0;
    }

    v108 = v105;
    v109 = v106;
    v110 = v107;
    v51 = (*(v40 + 56))(v90, v40);
    v52 = v87;
    if (v51)
    {
      v53 = v51;
      v54 = v96;
      sub_1E1AF1FBC();

      v56 = v97;
      v55 = v98;
      if ((*(v97 + 48))(v54, 1, v98) != 1)
      {
        v75 = v95;
        (*(v56 + 32))(v95, v54, v55);
        v76 = v94;
        v77 = v90;
        ShelfBasedCollectionViewController.itemLayoutContext(at:)(v75, v90, v40, v94);
        if ((*(v92 + 48))(v76, 1, v93) != 1)
        {
          v78 = v91;
          sub_1E1515094(v76, v91, type metadata accessor for ItemLayoutContext);
          ShelfBasedCollectionViewController.itemSupplementaryProvider.getter(v77, v40);
          v80 = v79;
          v81 = swift_getObjectType();
          v82 = v88;
          v83 = ItemSupplementaryProvider.dequeueSupplementaryView(elementKind:at:for:in:asPartOf:)(v103, v47, v101, v78, v88, v49, v81, v80);
          swift_unknownObjectRelease();

          sub_1E15150FC(v78, type metadata accessor for ItemLayoutContext);
          (*(v97 + 8))(v95, v98);
          sub_1E138867C(&v108);
          if (v83)
          {
            sub_1E15150FC(v41, type metadata accessor for ShelfLayoutContext);

            return v83;
          }

          goto LABEL_18;
        }

        (*(v97 + 8))(v75, v98);
        sub_1E138867C(&v108);
        v57 = &qword_1ECEB4408;
        v58 = v76;
        goto LABEL_17;
      }

      sub_1E138867C(&v108);
    }

    else
    {

      sub_1E138867C(&v108);
      v54 = v96;
      (*(v97 + 56))(v96, 1, 1, v98);
    }

    v57 = &qword_1ECEB5050;
    v58 = v54;
LABEL_17:
    sub_1E1308058(v58, v57);
    goto LABEL_18;
  }

  return result;
}

id ShelfBasedCollectionViewController.compositionalLayoutSectionProvider(section:layoutEnvironment:asPartOf:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a3;
  v60 = a1;
  v8 = sub_1E1AF591C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35C0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v56 - v16;
  v18 = type metadata accessor for ShelfLayoutContext();
  ObjectType = *(v18 - 1);
  v62 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = (*(a5 + 32))(a4, a5, v19);
  if (v22)
  {
    v23 = v22;
    if (v63)
    {
      v59 = v8;

      v24 = v60;
      ShelfBasedCollectionViewController.shelfLayoutContext(for:)(v60, a4, a5, v17);
      if ((ObjectType[6])(v17, 1, v62) != 1)
      {
        v62 = type metadata accessor for ShelfLayoutContext;
        v58 = v21;
        sub_1E1515094(v17, v21, type metadata accessor for ShelfLayoutContext);
        v57 = ShelfBasedCollectionViewController.itemLayoutContexts(for:)(v24, a4, a5);
        ShelfBasedCollectionViewController.collectionElementsObserver.getter(a4, a5);
        v40 = v39;
        ObjectType = swift_getObjectType();
        v56 = *(v40 + 8);
        v59 = v23;
        v41 = v21;
        v42 = v57;
        v56(v24, v59, v41, v57, v63, ObjectType, v40);
        swift_unknownObjectRelease();
        ShelfBasedCollectionViewController.layoutSectionProvider.getter(a5, &v65);
        v43 = v68;
        v44 = v69;
        v60 = __swift_project_boxed_opaque_existential_1Tm(&v65, v68);
        ObjectType = &v56;
        MEMORY[0x1EEE9AC00](v60);
        v54 = v42;
        ShelfBasedCollectionViewController.shelfLayoutSpacingProvider.getter(a5, v64);
        v45 = ShelfBasedCollectionViewController.shelfSupplementaryProvider.getter(a4, a5);
        v47 = v46;
        v48 = ShelfBasedCollectionViewController.itemSupplementaryProvider.getter(a4, a5);
        v49 = *(v44 + 8);
        v54 = v43;
        v55 = v44;
        v53[0] = v50;
        v53[1] = v63;
        v51 = v58;
        v52 = v59;
        v37 = v49(v58, sub_1E151515C, v53, v59, v64, v45, v47, v48);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1(v64);
        sub_1E15150FC(v51, v62);
        __swift_destroy_boxed_opaque_existential_1(&v65);
        return v37;
      }

      sub_1E1308058(v17, &qword_1ECEB35C0);
      v8 = v59;
    }

    else
    {
    }
  }

  v57 = v14;
  v58 = a4;
  v63 = v5;
  if (qword_1EE1E35E8 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v8, qword_1EE216188);
  v59 = v9;
  v26 = v9[2];
  v56 = v11;
  v26(v11, v25, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B04930;
  v27 = MEMORY[0x1E69E6158];
  v68 = MEMORY[0x1E69E6158];
  v65 = 0xD000000000000037;
  v66 = 0x80000001E1B64190;
  sub_1E1AF38BC();
  sub_1E1308058(&v65, &qword_1ECEB2DF0);
  v68 = MEMORY[0x1E69E6530];
  v65 = v60;
  sub_1E1AF38BC();
  sub_1E1308058(&v65, &qword_1ECEB2DF0);
  v68 = v27;
  v65 = 0xD000000000000021;
  v66 = 0x80000001E1B641D0;
  sub_1E1AF38BC();
  sub_1E1308058(&v65, &qword_1ECEB2DF0);
  v68 = v27;
  v65 = 0xD000000000000011;
  v66 = 0x80000001E1B64170;
  sub_1E1AF38BC();
  sub_1E1308058(&v65, &qword_1ECEB2DF0);
  v28 = (*(a5 + 56))(v58, a5);
  if (v28)
  {
    v29 = v28 + *((*MEMORY[0x1E69E7D40] & *v28) + class metadata base offset for ModelMappedDiffableDataSource + 16);
    v30 = v28;
    swift_beginAccess();
    v31 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24A0) + 52)];
    v33 = *v31;
    v32 = *(v31 + 1);

    v34 = MEMORY[0x1E69E6158];
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v34 = 0;
    v67 = 0;
  }

  v35 = v57;
  v65 = v33;
  v66 = v32;
  v68 = v34;
  sub_1E1AF38BC();
  sub_1E1308058(&v65, &qword_1ECEB2DF0);
  v36 = v56;
  sub_1E1AF54BC();

  (*(v59 + 1))(v36, v8);
  (ObjectType[7])(v35, 1, 1, v62);
  v37 = _sSo25NSCollectionLayoutSectionC11AppStoreKitE05emptybC03forAbC05ShelfB7ContextVSg_tFZ_0(v35);
  sub_1E1308058(v35, &qword_1ECEB35C0);
  return v37;
}

double ShelfBasedCollectionViewController.globalSupplementaryRegistration(for:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

Swift::Void __swiftcall ShelfBasedCollectionViewController.updateGlobalSupplementaries(fitting:)(CGSize fitting)
{
  v3 = v2;
  v4 = v1;
  height = fitting.height;
  width = fitting.width;
  v7 = (*(v2 + 80))();
  if (v7)
  {
    v8 = v7;
    v9 = [v8 configuration];
    [v9 copyWithZone_];
    sub_1E1AF6EBC();
    swift_unknownObjectRelease();

    sub_1E13006E4(0, &qword_1EE1E32C8);
    swift_dynamicCast();
    (*(*(v3 + 8) + 8))(v4, width, height);
    sub_1E13006E4(0, &qword_1EE1E32D0);
    v10 = sub_1E1AF620C();

    [v11 setBoundarySupplementaryItems_];

    [v8 setConfiguration_];
  }
}

uint64_t sub_1E1515094(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E15150FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E1515164(double a1, double a2)
{
  v5 = sub_1E1AEFEAC();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_1E1AEF4AC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v2;
  v17 = [v2 playerID];
  v18 = sub_1E1AF5DFC();
  v20 = v19;

  v37[0] = v18;
  v37[1] = v20;
  sub_1E1AEF43C();
  sub_1E13B8AA4();
  v21 = sub_1E1AF6E3C();
  v23 = v22;
  (*(v12 + 8))(v15, v11);

  if (!v23)
  {
    v24 = [v16 playerID];
    v21 = sub_1E1AF5DFC();
    v23 = v25;
  }

  strcpy(v37, "avatarimage://");
  HIBYTE(v37[1]) = -18;
  MEMORY[0x1E68FECA0](v21, v23);

  v26 = v37[0];
  v27 = v37[1];
  v28 = sub_1E1AF46DC();
  (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
  type metadata accessor for Artwork();
  v29 = swift_allocObject();
  *(v29 + 152) = 0u;
  *(v29 + 168) = 0u;
  *(v29 + 184) = 0;
  sub_1E1AEFE9C();
  v30 = sub_1E1AEFE7C();
  v32 = v31;
  (*(v35 + 8))(v7, v36);
  v37[0] = v30;
  v37[1] = v32;
  sub_1E1AF6F6C();
  sub_1E13815A4(v10, v29 + OBJC_IVAR____TtC11AppStoreKit7Artwork_impressionMetrics);
  *(v29 + 16) = v26;
  *(v29 + 24) = v27;
  *(v29 + 32) = a1;
  *(v29 + 40) = a2;
  *(v29 + 48) = 0;
  *(v29 + 56) = 0;
  *(v29 + 72) = 25186;
  *(v29 + 80) = 0xE200000000000000;
  *(v29 + 64) = 0;
  *(v29 + 104) = MEMORY[0x1E69E7CC0];
  v37[0] = 25186;
  v37[1] = 0xE200000000000000;
  v33 = Artwork.Crop.preferredContentMode.getter();
  sub_1E13814C0(v10);
  *(v29 + 88) = v33;
  *(v29 + 96) = 3;
  return v29;
}

uint64_t AppEventDetailPage.__allocating_init(appEvent:artwork:video:shareAction:mediaOverlayStyle:includeBorderInDarkMode:pageMetrics:pageRenderEvent:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v56 = a8;
  LODWORD(v55) = a6;
  v54 = a5;
  v61 = a9;
  v62 = a7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v52 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - v19;
  v21 = sub_1E1AF3C3C();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = swift_allocObject();
  v57 = a1;
  v58 = a2;
  *(v25 + OBJC_IVAR____TtC11AppStoreKit18AppEventDetailPage_appEvent) = a1;
  *(v25 + OBJC_IVAR____TtC11AppStoreKit18AppEventDetailPage_artwork) = a2;
  v59 = a3;
  v60 = a4;
  *(v25 + OBJC_IVAR____TtC11AppStoreKit18AppEventDetailPage_video) = a3;
  *(v25 + OBJC_IVAR____TtC11AppStoreKit18AppEventDetailPage_shareAction) = a4;
  v26 = v62;
  *(v25 + OBJC_IVAR____TtC11AppStoreKit18AppEventDetailPage_mediaOverlayStyle) = *v54;
  *(v25 + OBJC_IVAR____TtC11AppStoreKit18AppEventDetailPage_includeBorderInDarkMode) = v55;
  v27 = *(v22 + 16);
  v27(v24, v26, v21);
  v28 = v61;
  sub_1E142CF54(v61, v20);
  *(v25 + 16) = 0;
  v27((v25 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v24, v21);
  *(v25 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v56;
  sub_1E142CF54(v20, v17);
  v29 = sub_1E1AF39DC();
  v55 = *(v29 - 8);
  v30 = *(v55 + 48);
  v53 = v29;
  v51 = v30;
  if ((v30)(v17, 1) == 1)
  {
    sub_1E142CFC4(v28);
    v31 = *(v22 + 8);
    v31(v26, v21);
    sub_1E142CFC4(v20);
    v31(v24, v21);
    v32 = v17;
  }

  else
  {
    v54 = v17;
    v49 = v24;
    v50 = v22;
    v33 = qword_1EE1E3BC8;

    if (v33 != -1)
    {
      swift_once();
    }

    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
    __swift_project_value_buffer(v34, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
    sub_1E1AF39EC();
    v35 = v63;
    v36 = v20;
    v37 = v55;
    v38 = v53;
    if (v63)
    {
    }

    v39 = *(v37 + 8);
    v39(v54, v38);
    v40 = v21;
    if (!v35)
    {

      sub_1E142CFC4(v61);
      v45 = *(v50 + 8);
      v45(v62, v21);
      sub_1E142CFC4(v36);
      v45(v49, v21);
      return v25;
    }

    v41 = v52;
    sub_1E142CF54(v36, v52);
    v42 = v51(v41, 1, v38);
    v43 = v50;
    if (v42 != 1)
    {
      sub_1E15F0974();

      sub_1E142CFC4(v61);
      v46 = *(v43 + 8);
      v46(v62, v40);
      sub_1E142CFC4(v36);
      v46(v49, v40);
      v39(v41, v38);
      return v25;
    }

    sub_1E142CFC4(v61);
    v44 = *(v43 + 8);
    v44(v62, v40);
    sub_1E142CFC4(v36);
    v44(v49, v40);
    v32 = v41;
  }

  sub_1E142CFC4(v32);
  return v25;
}

uint64_t AppEventDetailPage.init(appEvent:artwork:video:shareAction:mediaOverlayStyle:includeBorderInDarkMode:pageMetrics:pageRenderEvent:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v55 = a5;
  v56 = a8;
  LODWORD(v57) = a6;
  v62 = a9;
  v63 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v54 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v49 - v20;
  v22 = sub_1E1AF3C3C();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a1;
  v59 = a2;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit18AppEventDetailPage_appEvent) = a1;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit18AppEventDetailPage_artwork) = a2;
  v60 = a3;
  v61 = a4;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit18AppEventDetailPage_video) = a3;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit18AppEventDetailPage_shareAction) = a4;
  v27 = v63;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit18AppEventDetailPage_mediaOverlayStyle) = *v55;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit18AppEventDetailPage_includeBorderInDarkMode) = v57;
  v28 = *(v23 + 16);
  v28(v26, v27, v22, v24);
  v29 = v62;
  sub_1E142CF54(v62, v21);
  *(v9 + 16) = 0;
  (v28)(v9 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics, v26, v22);
  v57 = v9;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v56;
  v30 = v18;
  sub_1E142CF54(v21, v18);
  v31 = sub_1E1AF39DC();
  v55 = *(v31 - 8);
  v53 = *(v55 + 48);
  if (v53(v30, 1, v31) == 1)
  {
    sub_1E142CFC4(v29);
    v32 = *(v23 + 8);
    v32(v27, v22);
    sub_1E142CFC4(v21);
    v32(v26, v22);
    v33 = v30;
  }

  else
  {
    v50 = v31;
    v51 = v26;
    v52 = v23;
    v34 = qword_1EE1E3BC8;

    if (v34 != -1)
    {
      swift_once();
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
    __swift_project_value_buffer(v35, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
    sub_1E1AF39EC();
    v36 = v64;
    v37 = v21;
    v38 = v55;
    if (v64)
    {
    }

    v39 = *(v38 + 8);
    v40 = v50;
    v39(v30, v50);
    v41 = v22;
    if (!v36)
    {

      sub_1E142CFC4(v62);
      v46 = *(v52 + 8);
      v46(v63, v22);
      sub_1E142CFC4(v37);
      v46(v51, v22);
      return v57;
    }

    v42 = v54;
    sub_1E142CF54(v37, v54);
    v43 = v53(v42, 1, v40);
    v44 = v52;
    if (v43 != 1)
    {
      sub_1E15F0974();

      sub_1E142CFC4(v62);
      v47 = *(v44 + 8);
      v47(v63, v41);
      sub_1E142CFC4(v37);
      v47(v51, v41);
      v39(v42, v40);
      return v57;
    }

    sub_1E142CFC4(v62);
    v45 = *(v44 + 8);
    v45(v63, v41);
    sub_1E142CFC4(v37);
    v45(v51, v41);
    v33 = v42;
  }

  sub_1E142CFC4(v33);
  return v57;
}

void (*AppEventDetailPage.init(deserializing:using:)(char *a1, uint64_t a2))(char *, uint64_t)
{
  v3 = v2;
  v47 = v3;
  v41 = *v3;
  v6 = sub_1E1AF39DC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v44 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v40 - v10;
  v12 = sub_1E1AF380C();
  v48 = *(v12 - 8);
  v49 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v43 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v42 = v40 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = v40 - v17;
  type metadata accessor for AppEvent();
  v50 = a1;
  sub_1E1AF381C();
  v19 = *(v7 + 16);
  v51 = v6;
  v52 = a2;
  v20 = v19;
  (v19)(v11, a2, v6);
  sub_1E1516B04(&qword_1EE1E10D8, type metadata accessor for AppEvent);
  sub_1E1AF464C();
  v21 = v53;
  if (v53)
  {
    v41 = v7;
    type metadata accessor for Artwork();
    sub_1E1AF381C();
    v46 = v7 + 16;
    v22 = v51;
    v20(v11, v52);
    v40[0] = v20;
    sub_1E1516B04(&qword_1EE1E4BB8, type metadata accessor for Artwork);
    sub_1E1AF464C();
    v23 = v53;
    type metadata accessor for Video();
    sub_1E1AF381C();
    v24 = v52;
    (v20)(v11, v52, v22);
    sub_1E1516B04(&qword_1EE1E52D0, type metadata accessor for Video);
    sub_1E1AF464C();
    v25 = v53;
    v20 = v47;
    *&v47[OBJC_IVAR____TtC11AppStoreKit18AppEventDetailPage_appEvent] = v21;
    *(v20 + OBJC_IVAR____TtC11AppStoreKit18AppEventDetailPage_artwork) = v23;
    *(v20 + OBJC_IVAR____TtC11AppStoreKit18AppEventDetailPage_video) = v25;
    type metadata accessor for Action();
    v40[1] = v25;

    v40[3] = v21;

    v40[2] = v23;

    v26 = v50;
    sub_1E1AF381C();
    v27 = static Action.tryToMakeInstance(byDeserializing:using:)(v18, v24);
    v29 = v48;
    v28 = v49;
    v30 = *(v48 + 8);
    v30(v18, v49);
    *(v20 + OBJC_IVAR____TtC11AppStoreKit18AppEventDetailPage_shareAction) = v27;
    sub_1E1AF381C();
    sub_1E14056C8();
    sub_1E1AF369C();
    v30(v18, v28);
    *(v20 + OBJC_IVAR____TtC11AppStoreKit18AppEventDetailPage_mediaOverlayStyle) = v53;
    v31 = v42;
    sub_1E1AF381C();
    LOBYTE(v27) = sub_1E1AF370C();
    v30(v31, v28);
    *(v20 + OBJC_IVAR____TtC11AppStoreKit18AppEventDetailPage_includeBorderInDarkMode) = v27 & 1;
    v32 = v43;
    (*(v29 + 16))(v43, v26, v28);
    v33 = v44;
    (v40[0])(v44, v24, v51);
    v34 = v45;
    v35 = BasePage.init(deserializing:using:)(v32, v33);
    if (!v34)
    {
      v20 = v35;
    }

    (*(v41 + 8))(v52, v51);
    v30(v50, v49);
  }

  else
  {
    v36 = sub_1E1AF5A7C();
    sub_1E1516B04(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v37 = 0x746E657645707061;
    v38 = v41;
    v37[1] = 0xE800000000000000;
    v37[2] = v38;
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x1E69AB690], v36);
    swift_willThrow();
    (*(v7 + 8))(v52, v51);
    (*(v48 + 8))(v50, v49);
    type metadata accessor for AppEventDetailPage();
    swift_deallocPartialClassInstance();
  }

  return v20;
}

uint64_t sub_1E1516884()
{
}

uint64_t AppEventDetailPage.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AppEventDetailPage.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppEventDetailPage()
{
  result = qword_1EE1E18C8;
  if (!qword_1EE1E18C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1516B04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TodayCardMediaHero.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v57 = *v2;
  v74 = sub_1E1AF39DC();
  v5 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v61 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v57 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v57 - v10;
  v70 = sub_1E1AF380C();
  v67 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v60 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v57 - v17;
  sub_1E1AF46DC();

  sub_1E1AF381C();
  v69 = v5;
  v71 = *(v5 + 16);
  v63 = v11;
  v19 = v11;
  v20 = a2;
  v21 = a2;
  v22 = v74;
  v71(v19, v21, v74);
  v66 = v18;
  v64 = v15;
  sub_1E1AF464C();
  v23 = v73;
  v68 = v20;
  v24 = v71;
  v71(v73, v20, v22);
  v72 = a1;
  sub_1E1AF381C();
  v25 = v63;
  v24(v63, v23, v22);
  type metadata accessor for Artwork();
  sub_1E1517448(&qword_1EE1E4BB8, type metadata accessor for Artwork);
  v26 = v25;
  v27 = sub_1E1AF630C();
  v28 = OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaHero_artworks;
  v29 = v65;
  *(v65 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaHero_artworks) = v27;
  sub_1E1AF381C();
  v30 = v25;
  v31 = v74;
  v24(v30, v23, v74);
  type metadata accessor for Video();
  sub_1E1517448(&qword_1EE1E52D0, type metadata accessor for Video);
  v32 = sub_1E1AF630C();
  v58 = OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaHero_videos;
  *(v29 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaHero_videos) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35B0);
  sub_1E1AF381C();
  v59 = v5 + 16;
  v24(v26, v73, v31);
  sub_1E13F6220();
  sub_1E1AF464C();
  *(v29 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaHero_artworkLayoutsWithMetrics) = v75;
  v33 = *(v29 + v28);
  if (v33 >> 62)
  {
    v34 = sub_1E1AF71CC();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v70;
  v36 = v67;
  if (v34)
  {
  }

  else
  {
    v37 = *(v29 + v58);
    if (v37 >> 62)
    {
      v38 = sub_1E1AF71CC();
    }

    else
    {
      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v38)
    {
      v52 = sub_1E1AF5A7C();
      sub_1E1517448(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
      swift_allocError();
      *v53 = 0x736B726F77747261;
      v53[1] = 0xE800000000000000;
      v53[2] = v57;
      (*(*(v52 - 8) + 104))(v53, *MEMORY[0x1E69AB690], v52);
      swift_willThrow();
      v54 = *(v69 + 8);
      v55 = v36;
      v56 = v74;
      v54(v68, v74);
      (*(v55 + 8))(v72, v70);
      v54(v73, v56);
      sub_1E1308058(v66, &unk_1ECEB1770);

      return swift_deallocPartialClassInstance();
    }
  }

  v39 = *(v36 + 16);
  v40 = v36;
  v41 = v60;
  v42 = v72;
  v39(v60, v72, v35);
  v43 = v61;
  v44 = v68;
  v45 = v74;
  v71(v61, v68, v74);
  v46 = v62;
  v47 = TodayCardMedia.init(deserializing:using:)(v41, v43);
  if (v46)
  {
    v48 = *(v69 + 8);
    v48(v44, v45);
    (*(v40 + 8))(v42, v35);
    v48(v73, v45);
    return sub_1E1308058(v66, &unk_1ECEB1770);
  }

  else
  {
    v50 = *(v69 + 8);
    v51 = v47;
    v50(v44, v45);
    (*(v40 + 8))(v42, v35);
    v50(v73, v45);
    sub_1E1308058(v66, &unk_1ECEB1770);
    return v51;
  }
}

uint64_t sub_1E1517448(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TodayCardMediaHero.__allocating_init(artworks:videos:artworkLayoutsWithMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaHero_artworks) = a1;
  *(v12 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaHero_videos) = a2;
  *(v12 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaHero_artworkLayoutsWithMetrics) = a3;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_1E134FD1C(a4, v12 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770);
  sub_1E134FD1C(v22, &v19, &unk_1ECEB5670);
  if (*(&v20 + 1))
  {
    v13 = v20;
    *(v12 + 32) = v19;
    *(v12 + 48) = v13;
    *(v12 + 64) = v21;
  }

  else
  {
    sub_1E1AEFE9C();
    v14 = sub_1E1AEFE7C();
    v16 = v15;
    (*(v9 + 8))(v11, v8);
    v18[1] = v14;
    v18[2] = v16;
    sub_1E1AF6F6C();
    sub_1E1308058(&v19, &unk_1ECEB5670);
  }

  sub_1E1308058(a4, &unk_1ECEB1770);
  sub_1E1308058(v22, &unk_1ECEB5670);
  *(v12 + 16) = 9;
  *(v12 + 24) = 1;
  return v12;
}

uint64_t TodayCardMediaHero.init(artworks:videos:artworkLayoutsWithMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1E1AEFEAC();
  v21[0] = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v21 - v14;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaHero_artworks) = a1;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaHero_videos) = a2;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaHero_artworkLayoutsWithMetrics) = a3;
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  sub_1E134FD1C(a4, v21 - v14, &unk_1ECEB1770);
  sub_1E134FD1C(v28, &v22, &unk_1ECEB5670);
  if (*(&v23 + 1))
  {
    v25 = v22;
    v26 = v23;
    v27 = v24;
  }

  else
  {
    sub_1E1AEFE9C();
    v16 = sub_1E1AEFE7C();
    v18 = v17;
    (*(v21[0] + 8))(v12, v10);
    v21[1] = v16;
    v21[2] = v18;
    sub_1E1AF6F6C();
    sub_1E1308058(&v22, &unk_1ECEB5670);
  }

  sub_1E1308058(a4, &unk_1ECEB1770);
  sub_1E1308058(v28, &unk_1ECEB5670);
  v19 = v26;
  *(v5 + 32) = v25;
  *(v5 + 48) = v19;
  *(v5 + 64) = v27;
  sub_1E134B7C8(v15, v5 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics);
  *(v5 + 16) = 9;
  *(v5 + 24) = 1;
  return v5;
}

uint64_t sub_1E1517980()
{
}

uint64_t TodayCardMediaHero.deinit()
{
  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770);

  return v0;
}

uint64_t TodayCardMediaHero.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TodayCardMediaHero()
{
  result = qword_1EE1DD9D0;
  if (!qword_1EE1DD9D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EditorialMediaFlavor.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_1E1AF37CC();
  if (v7)
  {
    v8 = v6;
    v9 = v7;

    v10 = sub_1E1AF72FC();

    if (v10 < 4)
    {

      v11 = sub_1E1AF39DC();
      (*(*(v11 - 8) + 8))(a2, v11);
      v12 = sub_1E1AF380C();
      result = (*(*(v12 - 8) + 8))(a1, v12);
      *a3 = v10;
      return result;
    }

    v14 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    v16 = v19;
    *v19 = v8;
    v19[1] = v9;
    v19[2] = &type metadata for EditorialMediaFlavor;
    v18 = MEMORY[0x1E69AB680];
  }

  else
  {
    v14 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    v16 = v15;
    v17 = MEMORY[0x1E69E7CC0];
    *v15 = &type metadata for EditorialMediaFlavor;
    v15[1] = v17;
    v18 = MEMORY[0x1E69AB698];
  }

  (*(*(v14 - 8) + 104))(v16, *v18, v14);
  swift_willThrow();
  v20 = sub_1E1AF39DC();
  (*(*(v20 - 8) + 8))(a2, v20);
  v21 = sub_1E1AF380C();
  return (*(*(v21 - 8) + 8))(a1, v21);
}

AppStoreKit::EditorialMediaFlavor_optional __swiftcall EditorialMediaFlavor.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t EditorialMediaFlavor.rawValue.getter()
{
  v1 = 0x69746F4D6F726568;
  v2 = 0xD000000000000014;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1E1517F74()
{
  result = qword_1ECEB5058;
  if (!qword_1ECEB5058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5058);
  }

  return result;
}

uint64_t sub_1E1517FC8()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E15180A4()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E151816C()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E1518250(unint64_t *a1@<X8>)
{
  v2 = 0xEE00397836316E6FLL;
  v3 = 0x69746F4D6F726568;
  v4 = 0x80000001E1B572A0;
  v5 = 0xD000000000000014;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v4 = 0x80000001E1B572C0;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x80000001E1B57280;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1E1518328(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v24 = *(a1 + 16);
  sub_1E135C088(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_1E1AF6EFC();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    v13 = *(v25 + 16);
    v12 = *(v25 + 24);
    if (v13 >= v12 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_1E135C088((v12 > 1), v13 + 1, 1);
      v6 = v24;
      v11 = v22;
      result = v23;
    }

    *(v25 + 16) = v13 + 1;
    v14 = v25 + 16 * v13;
    *(v14 + 32) = 0x6F65646976;
    *(v14 + 40) = 0xE500000000000000;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_1E142EA30(result, v11, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_1E142EA30(result, v11, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t static MediaPlatform.systemImages(platforms:)(unint64_t a1)
{
  v19 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_23:
    v2 = sub_1E1AF71CC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1E68FFD80](v4, a1);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_12;
        }
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_23;
        }

        v5 = *(a1 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_12:
          __break(1u);
LABEL_13:
          v11 = v19;
          v3 = MEMORY[0x1E69E7CC0];
          v12 = *(v19 + 16);
          if (!v12)
          {
            goto LABEL_20;
          }

LABEL_14:
          v20 = v3;
          sub_1E1AF70EC();
          v13 = objc_opt_self();
          v14 = v11 + 40;
          do
          {

            v15 = sub_1E1AF5DBC();
            v16 = [v13 systemImageNamed:v15 withConfiguration:0];

            if (!v16)
            {
              [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
            }

            sub_1E1AF70BC();
            sub_1E1AF70FC();
            sub_1E1AF710C();
            sub_1E1AF70CC();
            v14 += 16;
            --v12;
          }

          while (v12);

          return v20;
        }
      }

      swift_beginAccess();

      v8 = sub_1E1518328(v7);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB56A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E1B02CC0;
      v10 = *(v5 + 32);
      *(inited + 32) = *(v5 + 24);
      *(inited + 40) = v10;
      v18 = inited;

      sub_1E17286F4(v8);

      sub_1E17286F4(v18);
      ++v4;
      if (v6 == v2)
      {
        goto LABEL_13;
      }
    }
  }

  v11 = MEMORY[0x1E69E7CC0];
  v12 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v12)
  {
    goto LABEL_14;
  }

LABEL_20:

  return MEMORY[0x1E69E7CC0];
}

uint64_t static MediaPlatform.systemImageNames(platforms:)(unint64_t a1)
{
  v12 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_14:
    v2 = sub_1E1AF71CC();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1E68FFD80](i, a1);
          v5 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_11:
            __break(1u);
            return v12;
          }
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_14;
          }

          v4 = *(a1 + 8 * i + 32);

          v5 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_11;
          }
        }

        swift_beginAccess();

        v7 = sub_1E1518328(v6);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB56A0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E1B02CC0;
        v9 = *(v4 + 32);
        *(inited + 32) = *(v4 + 24);
        *(inited + 40) = v9;
        v11 = inited;

        sub_1E17286F4(v7);

        sub_1E17286F4(v11);
        if (v5 == v2)
        {
          return v12;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t MediaPlatform.systemImageName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t MediaPlatform.supplementaryAppPlatforms.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t MediaPlatform.isIOS.getter()
{
  if (*(v0 + 16) <= 2u && !*(v0 + 16))
  {
    v2 = 1;
LABEL_9:

    return v2 & 1;
  }

  v1 = sub_1E1AF74AC();

  if ((v1 & 1) == 0)
  {
    if (*(v0 + 16) == 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_1E1AF74AC();
    }

    goto LABEL_9;
  }

  v2 = 1;
  return v2 & 1;
}

uint64_t MediaPlatform.__allocating_init(appPlatform:systemImageName:supplementaryAppPlatforms:deviceCornerRadiusFactor:deviceBorderThickness:outerDeviceCornerRadiusFactor:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9, char a10)
{
  result = swift_allocObject();
  v19 = *a1;
  *(result + 40) = MEMORY[0x1E69E7CD0];
  v20 = (result + 40);
  *(result + 16) = v19;
  *(result + 24) = a2;
  *(result + 32) = a3;
  if (a4)
  {
    v21 = result;
    v22 = sub_1E13C4C50(a4);

    swift_beginAccess();
    result = v21;
    *v20 = v22;
  }

  *(result + 48) = a5;
  *(result + 56) = a6 & 1;
  *(result + 64) = a7;
  *(result + 72) = a8 & 1;
  *(result + 80) = a9;
  *(result + 88) = a10 & 1;
  return result;
}

uint64_t MediaPlatform.init(appPlatform:systemImageName:supplementaryAppPlatforms:deviceCornerRadiusFactor:deviceBorderThickness:outerDeviceCornerRadiusFactor:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9, char a10)
{
  v15 = *a1;
  *(v10 + 40) = MEMORY[0x1E69E7CD0];
  *(v10 + 16) = v15;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  if (a4)
  {
    v16 = sub_1E13C4C50(a4);

    swift_beginAccess();
    *(v10 + 40) = v16;
  }

  *(v10 + 48) = a5;
  *(v10 + 56) = a6 & 1;
  *(v10 + 64) = a7;
  *(v10 + 72) = a8 & 1;
  *(v10 + 80) = a9;
  *(v10 + 88) = a10 & 1;
  return v10;
}

uint64_t MediaPlatform.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v51 - v4;
  v5 = sub_1E1AF5A6C();
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v51 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v51 - v19;
  v21 = 0xEB000000006D726FLL;
  v62 = 0x6674616C50707061;
  v22 = a1;
  sub_1E1AF381C();
  sub_1E1519FE8();
  sub_1E1AF36DC();
  v23 = *(v8 + 8);
  v23(v20, v7);
  if (v64 == 7)
  {
    goto LABEL_6;
  }

  LODWORD(v62) = v64;
  v21 = 0xEF656D614E656761;
  v54 = v22;
  sub_1E1AF381C();
  v24 = sub_1E1AF37CC();
  v26 = v25;
  v23(v17, v7);
  v53 = v26;
  if (!v26)
  {
    v62 = 0x6D496D6574737973;
    v22 = v54;
LABEL_6:
    v34 = sub_1E1AF5A7C();
    sub_1E151A204(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v35 = v63;
    *v36 = v62;
    v36[1] = v21;
    v36[2] = v35;
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69AB690], v34);
    swift_willThrow();
    v37 = sub_1E1AF39DC();
    (*(*(v37 - 8) + 8))(v65, v37);
    v23(v22, v7);
    return v21;
  }

  v51 = v24;
  v27 = v23;
  v28 = v54;
  sub_1E1AF381C();
  v29 = v56;
  sub_1E1AF374C();
  v52 = v7;
  v27(v14, v7);
  v30 = v57;
  v31 = v58;
  v32 = v28;
  if ((*(v57 + 48))(v29, 1, v58) == 1)
  {
    sub_1E14352B8(v29);
    v33 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v38 = v55;
    (*(v30 + 32))(v55, v29, v31);
    v39 = v61;
    v33 = sub_1E1AF59FC();
    v61 = v39;
    (*(v30 + 8))(v38, v31);
  }

  sub_1E1AF381C();
  v58 = sub_1E1AF379C();
  LODWORD(v57) = v40;
  v41 = v52;
  v27(v20, v52);
  v42 = v59;
  sub_1E1AF381C();
  v56 = sub_1E1AF379C();
  LODWORD(v55) = v43;
  v27(v42, v41);
  v44 = v60;
  sub_1E1AF381C();
  v45 = sub_1E1AF379C();
  LODWORD(v59) = v46;
  v27(v44, v41);
  v21 = swift_allocObject();
  *(v21 + 40) = MEMORY[0x1E69E7CD0];
  *(v21 + 16) = v62;
  v47 = v53;
  *(v21 + 24) = v51;
  *(v21 + 32) = v47;
  v48 = sub_1E13C4C50(v33);

  v49 = sub_1E1AF39DC();
  (*(*(v49 - 8) + 8))(v65, v49);
  v27(v32, v41);
  swift_beginAccess();
  *(v21 + 40) = v48;
  *(v21 + 48) = v58;
  *(v21 + 56) = v57 & 1;
  *(v21 + 64) = v56;
  *(v21 + 72) = v55 & 1;
  *(v21 + 80) = v45;
  *(v21 + 88) = v59 & 1;
  return v21;
}

uint64_t MediaPlatform.__allocating_init(from:)(void *a1)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v20 - v9;
  v23 = sub_1E1AF380C();
  v25 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v20 - v14;
  sub_1E1300B24(a1, v24);
  sub_1E1AF372C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v22 = v4;
    v16 = a1[3];
    v21 = a1;
    __swift_project_boxed_opaque_existential_1Tm(a1, v16);
    v20[1] = v1;
    v17 = v22;
    sub_1E1AF76AC();
    sub_1E1AF39BC();
    v18 = v23;
    (*(v25 + 16))(v12, v15, v23);
    (*(v5 + 16))(v7, v10, v17);
    v1 = MediaPlatform.__allocating_init(deserializing:using:)(v12, v7);
    (*(v5 + 8))(v10, v17);
    (*(v25 + 8))(v15, v18);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  return v1;
}

uint64_t MediaPlatform.hash(into:)()
{
  sub_1E1AF5F0C();

  if ((*(v0 + 56) & 1) == 0)
  {
    if ((*(v0 + 48) & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = *(v0 + 48);
    }

    else
    {
      v2 = 0;
    }

    return MEMORY[0x1E6900390](v2);
  }

  return result;
}

unint64_t sub_1E1519994()
{
  v1 = *v0;
  v2 = 0x6674616C50707061;
  v3 = 0xD000000000000018;
  v4 = 0xD00000000000001DLL;
  if (v1 == 4)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000019;
  if (v1 == 1)
  {
    v5 = 0x6D496D6574737973;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E1519A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E151A420(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E1519AB0(uint64_t a1)
{
  v2 = sub_1E151A03C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1519AEC(uint64_t a1)
{
  v2 = sub_1E151A03C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MediaPlatform.deinit()
{

  return v0;
}

uint64_t MediaPlatform.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t MediaPlatform.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5060);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1E151A03C();
  sub_1E1AF76EC();
  v12 = *(v3 + 16);
  LOBYTE(v11) = 0;
  sub_1E151A090();
  sub_1E1AF73FC();
  if (!v2)
  {
    v12 = 1;
    sub_1E1AF73DC();
    swift_beginAccess();
    v11 = *(v3 + 40);
    v10[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5078);
    sub_1E151A0E4();
    sub_1E1AF73FC();
    LOBYTE(v11) = 3;
    sub_1E1AF73BC();
    LOBYTE(v11) = 4;
    sub_1E1AF73BC();
    LOBYTE(v11) = 5;
    sub_1E1AF73BC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MediaPlatform.hashValue.getter()
{
  sub_1E1AF762C();
  MediaPlatform.hash(into:)();
  return sub_1E1AF767C();
}

uint64_t sub_1E1519E5C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = MediaPlatform.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1E1519E94()
{
  sub_1E1AF762C();
  MediaPlatform.hash(into:)();
  return sub_1E1AF767C();
}

uint64_t sub_1E1519EFC()
{
  sub_1E1AF762C();
  MediaPlatform.hash(into:)();
  return sub_1E1AF767C();
}

uint64_t sub_1E1519F3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = MediaPlatform.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t _s11AppStoreKit13MediaPlatformC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1E145C05C(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  result = *(a2 + 56);
  if ((*(a1 + 56) & 1) == 0)
  {
    return (*(a1 + 48) == *(a2 + 48)) & ~result;
  }

  return result;
}

unint64_t sub_1E1519FE8()
{
  result = qword_1EE1F8C78;
  if (!qword_1EE1F8C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1F8C78);
  }

  return result;
}

unint64_t sub_1E151A03C()
{
  result = qword_1ECEB5068;
  if (!qword_1ECEB5068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5068);
  }

  return result;
}

unint64_t sub_1E151A090()
{
  result = qword_1ECEB5070;
  if (!qword_1ECEB5070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5070);
  }

  return result;
}

unint64_t sub_1E151A0E4()
{
  result = qword_1ECEB5080;
  if (!qword_1ECEB5080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB5078);
    sub_1E151A168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5080);
  }

  return result;
}

unint64_t sub_1E151A168()
{
  result = qword_1ECEB5088;
  if (!qword_1ECEB5088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5088);
  }

  return result;
}

uint64_t sub_1E151A204(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1E151A31C()
{
  result = qword_1ECEB5090;
  if (!qword_1ECEB5090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5090);
  }

  return result;
}

unint64_t sub_1E151A374()
{
  result = qword_1ECEB5098;
  if (!qword_1ECEB5098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5098);
  }

  return result;
}

unint64_t sub_1E151A3CC()
{
  result = qword_1ECEB50A0;
  if (!qword_1ECEB50A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB50A0);
  }

  return result;
}

uint64_t sub_1E151A420(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6674616C50707061 && a2 == 0xEB000000006D726FLL;
  if (v4 || (sub_1E1AF74AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D496D6574737973 && a2 == 0xEF656D614E656761 || (sub_1E1AF74AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001E1B642B0 == a2 || (sub_1E1AF74AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001E1B642D0 == a2 || (sub_1E1AF74AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E1B642F0 == a2 || (sub_1E1AF74AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001E1B64310 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E1AF74AC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1E151A62C()
{
  result = qword_1EE1E22C8;
  if (!qword_1EE1E22C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E22C8);
  }

  return result;
}

id ACAccountStore.hasPrimaryiCloudAccount.getter()
{
  result = [v0 aa_primaryAppleAccount];
  if (result)
  {
    v2 = result;
    v3 = [result aa_personID];
    if (v3)
    {
      v4 = v3;
      v5 = sub_1E1AF5DFC();
      v7 = v6;

      v8 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v8 = v5 & 0xFFFFFFFFFFFFLL;
      }

      return (v8 != 0);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_1E151A720()
{
  if (qword_1EE1D2290 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EE1D2298;
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_1E1AF5DFC();
    v4 = v3;
  }

  else
  {
    v4 = 0x80000001E1B59CB0;
    v2 = 0xD000000000000012;
  }

  qword_1EE1E0AD0 = v2;
  unk_1EE1E0AD8 = v4;
}

uint64_t static Signposter.subsystem.getter()
{
  if (qword_1EE1E0AC8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE1E0AD0;

  return v0;
}

uint64_t sub_1E151A868()
{
  v0 = sub_1E1AF0FAC();
  __swift_allocate_value_buffer(v0, qword_1ECEB50A8);
  __swift_project_value_buffer(v0, qword_1ECEB50A8);
  if (qword_1EE1E0AC8 != -1)
  {
    swift_once();
  }

  return sub_1E1AF0F9C();
}

uint64_t sub_1E151A948@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1E1AF0FAC();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t makeNetworkInquiry()@<X0>(void *a1@<X8>)
{
  v2 = _s11AppStoreKit20NWPathNetworkInquiryCACycfC_0();
  result = type metadata accessor for NWPathNetworkInquiry();
  a1[3] = result;
  a1[4] = &protocol witness table for NWPathNetworkInquiry;
  *a1 = v2;
  return result;
}

uint64_t ArticlePagePresenter.init(objectGraph:articlePage:pageUrl:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_touchMode) = 2;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_shouldTerminateOnClose) = 0;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_hasData) = 0;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_initialContentTypes) = 0;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_card) = 0;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_shelves) = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_footerLockup) = 0;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_arcadeFooterLockup) = 0;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_shareAction) = 0;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_isPreparingNextPage) = 0;
  sub_1E1307FE8(a3, v3 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_pageUrl);
  *(v3 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x1E69E7CD0];
  v7 = sub_1E138C578(a1, 0, 0, 0);

  if (a2)
  {
    *(v7 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_initialContentTypes) = sub_1E1824DB0();

    sub_1E151C1D8(a2, 1);

    sub_1E1308058(a3, &unk_1ECEB4B60);
  }

  else
  {
    sub_1E1308058(a3, &unk_1ECEB4B60);
  }

  return v7;
}

uint64_t sub_1E151AC5C@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_touchMode;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1E151ACB0()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_shouldTerminateOnClose;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E151AD44(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E151ADB0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E1363018;
}

uint64_t sub_1E151AEB0()
{
  sub_1E1771E40();
  v1 = OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_initialContentTypes;
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_initialContentTypes))
  {
    v2 = v0 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      v5 = *(v3 + 8);
      v6 = *(v5 + 32);

      v6(v7, ObjectType, v5);

      swift_unknownObjectRelease();
    }

    swift_beginAccess();

    sub_1E176F7A4(v8, 0);

    *(v0 + v1) = 0;
  }

  v9 = v0 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 8);
    v11 = swift_getObjectType();
    (*(v10 + 40))(v11, v10);
    swift_unknownObjectRelease();
  }

  return sub_1E151C7CC();
}

uint64_t sub_1E151B024(char a1)
{
  v3 = type metadata accessor for ArticlePageIntent();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF504C();
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - v10;
  v12 = sub_1E1AEFCCC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if ((*(v1 + 32) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_isFetchingShelves) & 1) == 0)
  {
    v27 = v5;
    sub_1E1307FE8(v1 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_pageUrl, v11);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      return sub_1E1308058(v11, &unk_1ECEB4B60);
    }

    else
    {
      (*(v13 + 32))(v15, v11, v12);
      if (*(v1 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_hasData) != 1 || (a1 & 1) != 0)
      {
        *(v1 + 32) = 1;
        v17 = v1 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_view;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v18 = *(v17 + 8);
          ObjectType = swift_getObjectType();
          (*(*(*(v18 + 8) + 24) + 8))(ObjectType);
          swift_unknownObjectRelease();
        }

        sub_1E17720F4(0);
        v20 = v1;
        swift_beginAccess();
        v21 = v27;
        if (*(v1 + 24))
        {
          *v8 = 1;
          v22 = v28;
          (*(v28 + 104))(v8, *MEMORY[0x1E69AB450], v6);

          sub_1E1AF509C();
          v20 = v1;

          (*(v22 + 8))(v8, v6);
          v21 = v27;
        }

        v29[0] = 0xD000000000000011;
        v29[1] = 0x80000001E1B5A810;
        sub_1E1AF6F6C();
        (*(v13 + 16))(v21 + *(v3 + 20), v15, v12);
        type metadata accessor for JSIntentDispatcher();
        sub_1E1AF421C();
        sub_1E1AF55EC();
        sub_1E1AF4C1C();

        sub_1E1AF422C();

        sub_1E1AF4BEC();

        v23 = sub_1E1AF4BFC();

        sub_1E1367E70(v21, v23, "AppStoreKit/ArticlePagePresenter.swift", 38, 2);
        v30 = sub_1E1AF470C();
        v31 = MEMORY[0x1E69AB218];
        __swift_allocate_boxed_opaque_existential_0(v29);
        sub_1E1AF46FC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB50C8);
        sub_1E1AF57DC();

        __swift_destroy_boxed_opaque_existential_1(v29);
        v24 = swift_allocObject();
        *(v24 + 16) = sub_1E151D774;
        *(v24 + 24) = v20;
        v25 = sub_1E1361A80();
        swift_retain_n();
        v26 = sub_1E1AF68EC();
        v30 = v25;
        v31 = MEMORY[0x1E69AB720];
        v29[0] = v26;
        sub_1E1AF57FC();

        sub_1E151DC60(v21, type metadata accessor for ArticlePageIntent);
        (*(v13 + 8))(v15, v12);
        return __swift_destroy_boxed_opaque_existential_1(v29);
      }

      else
      {
        return (*(v13 + 8))(v15, v12);
      }
    }
  }

  return result;
}

uint64_t sub_1E151B658@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  result = sub_1E1824DB0();
  a2[1] = result;
  return result;
}

uint64_t sub_1E151B6A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF503C();
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AEFE6C();
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E151C1D8(a1, 0);
  v10 = a3 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v11 + 8) + 32))(a2, ObjectType);
    swift_unknownObjectRelease();
  }

  sub_1E151C7CC();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v10 + 8);
    v14 = swift_getObjectType();
    (*(*(*(v13 + 8) + 16) + 8))(v14);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v10 + 8);
    v16 = swift_getObjectType();
    (*(v15 + 40))(v16, v15);
    swift_unknownObjectRelease();
  }

  v17 = OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shelfOrdering;
  swift_beginAccess();
  v18 = *(a1 + v17);
  v19 = MEMORY[0x1E69E7CC0];
  v55 = MEMORY[0x1E69E7CC0];
  v20 = *(v18 + 16);
  v21 = OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shelfMapping;

  result = swift_beginAccess();
  if (v20)
  {
    v23 = 0;
    v24 = v18 + 32;
    v45 = v20 - 1;
    v46 = v18 + 32;
    v47 = v10;
    v48 = a3;
    while (1)
    {
      v25 = v24 + 40 * v23;
      v26 = v23;
      while (1)
      {
        if (v26 >= *(v18 + 16))
        {
          __break(1u);
          return result;
        }

        sub_1E134E724(v25, v56);
        if (*(*(a1 + v21) + 16))
        {
          break;
        }

LABEL_10:
        ++v26;
        result = sub_1E134B88C(v56);
        v25 += 40;
        if (v20 == v26)
        {
          v10 = v47;
          a3 = v48;
          goto LABEL_21;
        }
      }

      sub_1E135FCF4(v56);
      if ((v27 & 1) == 0)
      {
        break;
      }

      v28 = sub_1E134B88C(v56);
      MEMORY[0x1E68FEF20](v28);
      if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      v23 = v26 + 1;
      result = sub_1E1AF62AC();
      v19 = v55;
      v24 = v46;
      v29 = v45 == v26;
      v10 = v47;
      a3 = v48;
      if (v29)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_10;
  }

LABEL_21:

  sub_1E176F7A4(v19, 0);

  swift_beginAccess();
  v30 = *(a3 + 16);
  if (v30)
  {

    v31 = v49;
    sub_1E1AEFE5C();
    sub_1E1AEFE1C();
    v33 = v32;
    (*(v50 + 8))(v31, v51);
    v34 = v30 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_rootViewModelPresentTime;
    swift_beginAccess();
    *v34 = v33;
    *(v34 + 8) = 0;
    v35 = *(v30 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasViewModelPresentTime[0]);
    swift_beginAccess();
    *(v35 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1E149DEE8();
    }
  }

  swift_beginAccess();
  if (*(a3 + 24))
  {
    v36 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v37 = sub_1E1AF3C3C();
    v38 = v52;
    (*(*(v37 - 8) + 16))(v52, a1 + v36, v37);
    v40 = v53;
    v39 = v54;
    (*(v53 + 104))(v38, *MEMORY[0x1E69AB440], v54);

    sub_1E1AF508C();

    (*(v40 + 8))(v38, v39);
  }

  swift_beginAccess();
  v41 = *(a3 + 32);
  *(a3 + 32) = 0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v42 = *(v10 + 8);
    v43 = swift_getObjectType();
    (*(*(*(v42 + 8) + 24) + 16))(v43);
    swift_unknownObjectRelease();
  }

  return sub_1E17720F4(v41);
}