__n128 sub_1E15D1DA0@<Q0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *a1;

  sub_1E1AF216C();
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for SwiftUIArtworkView(0);
  v10 = v9[6];
  v11 = type metadata accessor for SwiftUIArtworkView.SizedContent(0);
  v12 = v11[6];
  v13 = sub_1E1AF2BAC();
  (*(*(v13 - 8) + 16))(a2 + v12, &a1[v10], v13);
  v14 = &a1[v9[7]];
  v15 = v14[1].n128_u8[0];
  v16 = a1[v9[8]];
  v17 = a1[v9[9]];
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = 0;
  v18 = (a2 + v11[7]);
  result = *v14;
  *v18 = *v14;
  v18[1].n128_u8[0] = v15;
  *(a2 + v11[8]) = v16;
  *(a2 + v11[9]) = v17;
  return result;
}

uint64_t sub_1E15D1EA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB64B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB64B8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB64C0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  sub_1E15D2098(v1, v6);
  v13 = *(v1 + *(type metadata accessor for SwiftUIArtworkView.SizedContent(0) + 32));
  if (v13 == 2)
  {
    LOBYTE(v13) = sub_1E15D26F8();
  }

  sub_1E137F600(v6, v9, &qword_1ECEB64B0);
  v9[*(v7 + 36)] = v13;
  v14 = v2[1];
  v15 = v2[2];
  v16 = *(v2 + 24);
  sub_1E137F600(v9, v12, &qword_1ECEB64B8);
  v17 = &v12[*(v10 + 36)];
  *v17 = v14;
  *(v17 + 1) = v15;
  v17[16] = v16;
  sub_1E137F600(v12, a1, &qword_1ECEB64C0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB64C8);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1E15D2098@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v60 = type metadata accessor for BundleArtworkView(0);
  MEMORY[0x1EEE9AC00](v60);
  v4 = &v48[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB64D0);
  MEMORY[0x1EEE9AC00](v58);
  v6 = &v48[-v5];
  v7 = sub_1E1AEFEAC();
  v55 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48[-v11];
  v13 = type metadata accessor for RemoteArtworkView(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = a1[2];
  v56 = a1[1];
  v57 = v16;
  v17 = *(a1 + 24);
  if ((v17 & 1) != 0 || (v54 = *a1, v18 = *(v54 + 24), *&v62[0] = *(v54 + 16), *(&v62[0] + 1) = v18, Artwork.URLTemplate.isBundleImage.getter()))
  {
    v19 = *a1;
    v20 = type metadata accessor for SwiftUIArtworkView.SizedContent(0);
    v21 = *(v20 + 24);
    v22 = v60;
    v23 = *(v60 + 24);
    v24 = sub_1E1AF2BAC();
    (*(*(v24 - 8) + 16))(&v4[v23], a1 + v21, v24);
    v25 = *(a1 + *(v20 + 32));
    v27 = v56;
    v26 = v57;
    *v4 = v19;
    *(v4 + 1) = v27;
    *(v4 + 2) = v26;
    v4[24] = v17;
    v4[*(v22 + 28)] = v25;
    v28 = *(v22 + 32);
    *&v4[v28] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6468);
    swift_storeEnumTagMultiPayload();
    sub_1E15D5508(v4, v6, type metadata accessor for BundleArtworkView);
    swift_storeEnumTagMultiPayload();
    sub_1E15D53D8(&qword_1ECEB64D8, type metadata accessor for RemoteArtworkView);
    sub_1E15D53D8(&qword_1ECEB64E0, type metadata accessor for BundleArtworkView);

    sub_1E1AF259C();
    v29 = type metadata accessor for BundleArtworkView;
    v30 = v4;
  }

  else
  {
    v31 = type metadata accessor for SwiftUIArtworkView.SizedContent(0);
    v32 = v31[6];
    v33 = v13[6];
    v34 = sub_1E1AF2BAC();
    (*(*(v34 - 8) + 16))(&v15[v33], a1 + v32, v34);
    v35 = v31[8];
    v36 = (a1 + v31[7]);
    v37 = *v36;
    v50 = v36[1];
    v51 = v37;
    LODWORD(v35) = *(a1 + v35);
    v49 = *(v36 + 16);
    v52 = *(a1 + v31[9]);
    v53 = v35;
    v38 = &v15[v13[10]];
    type metadata accessor for ArtworkLoader();
    sub_1E15D53D8(&qword_1ECEB2E70, type metadata accessor for ArtworkLoader);
    v39 = v54;

    *v38 = sub_1E1AF232C();
    v38[1] = v40;
    v41 = v13[11];
    v61[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB64E8);
    sub_1E1AF2BEC();
    *&v15[v41] = v62[0];
    sub_1E1AEFE9C();
    v42 = v55;
    (*(v55 + 16))(v9, v12, v7);
    sub_1E15D53D8(&qword_1EE1FADB0, MEMORY[0x1E69695A8]);
    sub_1E1AF6F6C();
    (*(v42 + 8))(v12, v7);
    sub_1E134E724(v62, v61);
    sub_1E1AF2BEC();
    sub_1E134B88C(v62);
    v44 = v56;
    v43 = v57;
    *v15 = v39;
    *(v15 + 1) = v44;
    *(v15 + 2) = v43;
    v45 = &v15[v13[7]];
    v46 = v50;
    *v45 = v51;
    *(v45 + 1) = v46;
    v45[16] = v49;
    LOBYTE(v46) = v52;
    v15[v13[8]] = v53;
    v15[v13[9]] = v46;
    sub_1E15D5508(v15, v6, type metadata accessor for RemoteArtworkView);
    swift_storeEnumTagMultiPayload();
    sub_1E15D53D8(&qword_1ECEB64D8, type metadata accessor for RemoteArtworkView);
    sub_1E15D53D8(&qword_1ECEB64E0, type metadata accessor for BundleArtworkView);
    sub_1E1AF259C();
    v29 = type metadata accessor for RemoteArtworkView;
    v30 = v15;
  }

  return sub_1E15D5570(v30, v29);
}

uint64_t sub_1E15D26F8()
{
  if (Artwork.Crop.preferredContentMode.getter() == 1)
  {
    return 0;
  }

  if (Artwork.Crop.preferredContentMode.getter() == 2)
  {
    return 1;
  }

  return 2;
}

uint64_t sub_1E15D2764@<X0>(uint64_t a1@<X8>)
{
  v118 = a1;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6620);
  MEMORY[0x1EEE9AC00](v116);
  v117 = (&v92 - v2);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6628);
  MEMORY[0x1EEE9AC00](v113);
  v104 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v105 = &v92 - v5;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6630);
  MEMORY[0x1EEE9AC00](v111);
  v112 = &v92 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB64F8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v99 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v103 = &v92 - v10;
  v109 = sub_1E1AF2BBC();
  v107 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v95 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v98 = &v92 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v96 = &v92 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v102 = &v92 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB65E0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v106 = &v92 - v19;
  v20 = sub_1E1AF2B7C();
  v97 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6638);
  MEMORY[0x1EEE9AC00](v108);
  v100 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v101 = &v92 - v25;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6640);
  MEMORY[0x1EEE9AC00](v115);
  v110 = &v92 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v92 - v28;
  v30 = sub_1E1AEFCCC();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v1;
  v34 = *v1;

  sub_1E1AEFCAC();
  v35 = v30;

  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    sub_1E1308058(v29, &unk_1ECEB4B60);
LABEL_13:
    v52 = v117;
    *v117 = 0;
    *(v52 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1E15D68DC();
    return sub_1E1AF259C();
  }

  (*(v31 + 32))(v33, v29, v30);
  sub_1E1AEFC6C();
  v36 = v33;
  if (!v37)
  {
    (*(v31 + 8))(v33, v30);
    goto LABEL_13;
  }

  v38 = v114;
  v39 = *(v114 + 24);
  v94 = v31;
  v93 = v36;
  if ((v39 & 1) == 0)
  {
    v105 = v30;
    v99 = v114[2];
    if (qword_1EE1E31F8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v54 = qword_1EE1E3200;
    sub_1E1AF2BDC();
    v55 = v97;
    (*(v97 + 104))(v22, *MEMORY[0x1E6981630], v20);
    sub_1E1AF2BCC();

    (*(v55 + 8))(v22, v20);
    v56 = type metadata accessor for BundleArtworkView(0);
    v57 = *(v56 + 24);
    v58 = sub_1E1AF2BAC();
    v59 = *(v58 - 8);
    v60 = v38 + v57;
    v61 = v106;
    (*(v59 + 16))(v106, v60, v58);
    (*(v59 + 56))(v61, 0, 1, v58);
    v104 = sub_1E1AF2B8C();

    sub_1E1308058(v61, &qword_1ECEB65E0);
    v62 = *(v38 + *(v56 + 28));
    if (v62 == 2)
    {
      LOBYTE(v62) = sub_1E15D26F8();
    }

    sub_1E1AF2D1C();
    sub_1E1AF214C();
    *&v119[6] = v120;
    *&v119[22] = v121;
    *&v119[38] = v122;
    v63 = *(v34 + 96);
    v64 = v110;
    v65 = v107;
    if (v63 > 1)
    {
      v35 = v105;
      v67 = v109;
      if (v63 != 2)
      {
        v89 = v103;
        (*(v107 + 56))(v103, 1, 1, v109);
        v90 = v102;
        sub_1E1870628(v102);
        v91 = (*(v65 + 48))(v89, 1, v67);
        if (v91 != 1)
        {
          sub_1E1308058(v89, &qword_1ECEB64F8);
        }

        goto LABEL_32;
      }

      v66 = MEMORY[0x1E69816C0];
    }

    else
    {
      if (*(v34 + 96))
      {
        v66 = MEMORY[0x1E69816E0];
      }

      else
      {
        v66 = MEMORY[0x1E69816C8];
      }

      v35 = v105;
      v67 = v109;
    }

    v78 = v96;
    (*(v107 + 104))(v96, *v66, v67);
    v79 = *(v65 + 32);
    v80 = v103;
    v79(v103, v78, v67);
    (*(v65 + 56))(v80, 0, 1, v67);
    v90 = v102;
    v79(v102, v80, v67);
LABEL_32:
    KeyPath = swift_getKeyPath();
    v82 = v100;
    v83 = &v100[*(v108 + 36)];
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6518);
    (*(v65 + 32))(v83 + *(v84 + 28), v90, v67);
    *v83 = KeyPath;
    *v82 = v104;
    *(v82 + 8) = v62;
    *(v82 + 9) = 1;
    *(v82 + 56) = *&v119[46];
    *(v82 + 42) = *&v119[32];
    v85 = *v119;
    *(v82 + 26) = *&v119[16];
    *(v82 + 10) = v85;
    v86 = v101;
    sub_1E137F600(v82, v101, &qword_1ECEB6638);
    sub_1E134FD1C(v86, v112, &qword_1ECEB6638);
    swift_storeEnumTagMultiPayload();
    sub_1E15D6968();
    sub_1E15D6BB8();
    sub_1E1AF259C();
    v76 = v86;
    v77 = &qword_1ECEB6638;
    goto LABEL_33;
  }

  if (qword_1EE1E31F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v40 = qword_1EE1E3200;
  sub_1E1AF2BDC();
  v41 = *(type metadata accessor for BundleArtworkView(0) + 24);
  v42 = sub_1E1AF2BAC();
  v43 = *(v42 - 8);
  v44 = v114 + v41;
  v45 = v106;
  (*(v43 + 16))(v106, v44, v42);
  (*(v43 + 56))(v45, 0, 1, v42);
  v46 = sub_1E1AF2B8C();

  sub_1E1308058(v45, &qword_1ECEB65E0);
  v47 = *(v34 + 96);
  if (v47 > 1)
  {
    v49 = v109;
    v50 = v107;
    v51 = v98;
    if (v47 != 2)
    {
      v87 = v99;
      (*(v107 + 56))(v99, 1, 1, v109);
      sub_1E1870628(v51);
      v88 = (*(v50 + 48))(v87, 1, v49);
      if (v88 != 1)
      {
        sub_1E1308058(v87, &qword_1ECEB64F8);
      }

      goto LABEL_27;
    }

    v48 = MEMORY[0x1E69816C0];
  }

  else
  {
    if (*(v34 + 96))
    {
      v48 = MEMORY[0x1E69816E0];
    }

    else
    {
      v48 = MEMORY[0x1E69816C8];
    }

    v49 = v109;
    v50 = v107;
    v51 = v98;
  }

  v68 = v95;
  (*(v50 + 104))(v95, *v48, v49);
  v69 = *(v50 + 32);
  v70 = v99;
  v69(v99, v68, v49);
  (*(v50 + 56))(v70, 0, 1, v49);
  v69(v51, v70, v49);
LABEL_27:
  v71 = swift_getKeyPath();
  v72 = v104;
  v73 = &v104[*(v113 + 36)];
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6518);
  (*(v50 + 32))(v73 + *(v74 + 28), v51, v49);
  *v73 = v71;
  *v72 = v46;
  *(v72 + 8) = 1;
  v75 = v105;
  sub_1E137F600(v72, v105, &qword_1ECEB6628);
  sub_1E134FD1C(v75, v112, &qword_1ECEB6628);
  swift_storeEnumTagMultiPayload();
  sub_1E15D6968();
  sub_1E15D6BB8();
  v64 = v110;
  sub_1E1AF259C();
  v76 = v75;
  v77 = &qword_1ECEB6628;
LABEL_33:
  sub_1E1308058(v76, v77);
  sub_1E134FD1C(v64, v117, &qword_1ECEB6640);
  swift_storeEnumTagMultiPayload();
  sub_1E15D68DC();
  sub_1E1AF259C();
  sub_1E1308058(v64, &qword_1ECEB6640);
  return (*(v94 + 8))(v93, v35);
}

uint64_t sub_1E15D370C@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB64F0);
  MEMORY[0x1EEE9AC00](v44);
  v3 = &v34 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB64F8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v39 = &v34 - v5;
  v37 = sub_1E1AF2BBC();
  v41 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v34 - v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6500);
  MEMORY[0x1EEE9AC00](v43);
  v38 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v40 = &v34 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v34 - v14;
  v16 = sub_1E1AEFCCC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v1;
  v20 = *v1;

  sub_1E1AEFCAC();

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1E1308058(v15, &unk_1ECEB4B60);
LABEL_10:
    *v3 = 0;
    v3[8] = 1;
    swift_storeEnumTagMultiPayload();
    sub_1E15D5980();
    return sub_1E1AF259C();
  }

  (*(v17 + 32))(v19, v15, v16);
  sub_1E1AEFC6C();
  if (!v21)
  {
    (*(v17 + 8))(v19, v16);
    goto LABEL_10;
  }

  v35 = sub_1E1AF2B9C();
  if (*(v20 + 96) > 1u)
  {
    v23 = v41;
    if (*(v20 + 96) != 2)
    {
      v33 = v39;
      v25 = v37;
      (*(v41 + 56))(v39, 1, 1, v37);
      type metadata accessor for SystemArtworkView(0);
      sub_1E1870628(v42);
      if ((*(v23 + 48))(v33, 1, v25) != 1)
      {
        sub_1E1308058(v33, &qword_1ECEB64F8);
      }

      goto LABEL_14;
    }

    v22 = MEMORY[0x1E69816C0];
  }

  else
  {
    if (*(v20 + 96))
    {
      v22 = MEMORY[0x1E69816E0];
    }

    else
    {
      v22 = MEMORY[0x1E69816C8];
    }

    v23 = v41;
  }

  v25 = v37;
  (*(v23 + 104))(v7, *v22, v37);
  v26 = *(v23 + 32);
  v27 = v39;
  v26(v39, v7, v25);
  (*(v23 + 56))(v27, 0, 1, v25);
  v26(v42, v27, v25);
LABEL_14:
  KeyPath = swift_getKeyPath();
  v29 = v38;
  v30 = (v38 + *(v43 + 36));
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6518);
  (*(v23 + 32))(v30 + *(v31 + 28), v42, v25);
  *v30 = KeyPath;
  *v29 = v35;
  v32 = v40;
  sub_1E137F600(v29, v40, &qword_1ECEB6500);
  sub_1E134FD1C(v32, v3, &qword_1ECEB6500);
  swift_storeEnumTagMultiPayload();
  sub_1E15D5980();
  sub_1E1AF259C();
  sub_1E1308058(v32, &qword_1ECEB6500);
  return (*(v17 + 8))(v19, v16);
}

uint64_t sub_1E15D3D2C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RemoteArtworkView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB65A8);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v13 = &v30 - v12;
  v14 = v2[1];
  if (v14 <= 0.0 || (v15 = v2[2], v15 <= 0.0))
  {
    v18 = *(v10 + 56);

    return v18(a1, 1, 1, v11);
  }

  else
  {
    v31 = v4;
    v32 = v10;
    v33 = v9;
    v34 = a1;
    v17 = *(*v2 + 72);
    v16 = *(*v2 + 80);
    *&v36 = v17;
    *(&v36 + 1) = v16;
    if (Artwork.Crop.preferredContentMode.getter() == 1)
    {
      v30 = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, v14, v15);
    }

    else
    {
      *&v36 = v17;
      *(&v36 + 1) = v16;

      v30 = Artwork.config(using:cropCodeOverride:prefersLayeredImage:)(&v36, 0, v14, v15);
    }

    *v13 = sub_1E1AF2D1C();
    *(v13 + 1) = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB65B0);
    sub_1E15D410C(v2, &v13[*(v21 + 44)]);
    sub_1E15D5508(v2, &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RemoteArtworkView);
    v22 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v23 = swift_allocObject();
    sub_1E15D64B0(v7, v23 + v22, type metadata accessor for RemoteArtworkView);
    *(v23 + ((v22 + v6 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;
    v24 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB65B8) + 36)];
    *v24 = sub_1E15D6518;
    v24[1] = v23;
    v24[2] = 0;
    v24[3] = 0;
    v36 = *(v2 + *(v31 + 44));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB65C0);
    sub_1E1AF2BFC();
    v25 = v35;
    *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB65C8) + 36)] = v25;
    sub_1E15D5508(v2, v7, type metadata accessor for RemoteArtworkView);
    v26 = swift_allocObject();
    sub_1E15D64B0(v7, v26 + v22, type metadata accessor for RemoteArtworkView);
    v27 = v33;
    v28 = &v13[*(v33 + 36)];
    *v28 = 0;
    *(v28 + 1) = 0;
    *(v28 + 2) = sub_1E15D65A4;
    *(v28 + 3) = v26;
    v29 = v34;
    sub_1E131B998(v13, v34);
    return (*(v32 + 56))(v29, 0, 1, v27);
  }
}

uint64_t sub_1E15D410C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB65D8);
  v54 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v53 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v44 - v6;
  v7 = sub_1E1AF2B7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB65E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v44 - v12;
  v14 = type metadata accessor for RemoteArtworkView(0);
  v15 = (a1 + v14[11]);
  v16 = *v15;
  v17 = v15[1];
  v65 = *v15;
  v66 = v17;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB65C0);
  sub_1E1AF2BFC();
  if (v60)
  {
    v44 = v17;
    v45 = v16;
    v46 = v3;
    v56 = v60;
    sub_1E1AF2B5C();
    v18 = v14[6];
    v19 = sub_1E1AF2BAC();
    v20 = *(v19 - 8);
    (*(v20 + 16))(v13, a1 + v18, v19);
    (*(v20 + 56))(v13, 0, 1, v19);
    sub_1E1AF2B8C();

    sub_1E1308058(v13, &qword_1ECEB65E0);
    (*(v8 + 104))(v10, *MEMORY[0x1E6981630], v7);
    v59 = sub_1E1AF2BCC();

    (*(v8 + 8))(v10, v7);
    v21 = *(a1 + v14[8]);
    if (v21 == 2)
    {
      LOBYTE(v21) = sub_1E15D26F8();
    }

    sub_1E1AF2D1C();
    sub_1E1AF214C();
    v50 = v77;
    v22 = v78;
    v49 = v79;
    v23 = v80;
    v58 = v81;
    v57 = v82;

    LOBYTE(v65) = v22;
    LOBYTE(v60) = v23;
    v24 = v22;
    v56 = v23;
    v55 = v21;
    v47 = 1;
    v3 = v46;
    v16 = v45;
    v17 = v44;
  }

  else
  {
    v59 = 0;
    v50 = 0;
    v49 = 0;
    v58 = 0;
    v57 = 0;
    v47 = 0;
    v56 = 0;
    v24 = 0;
    v55 = 0;
  }

  v65 = v16;
  v66 = v17;
  sub_1E1AF2BFC();
  v25 = v60;
  if (v60)
  {
  }

  v26 = (a1 + v14[7]);
  if (*(v26 + 16))
  {
    v26 = a1 + 1;
    v27 = a1 + 2;
  }

  else
  {
    v27 = v26 + 1;
  }

  v28 = *v27;
  v29 = *v26;
  v74 = *a1;
  v75 = v29;
  v76 = v28;

  v30 = sub_1E1AF2D6C();
  MEMORY[0x1EEE9AC00](v30);
  *(&v44 - 16) = v25 != 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB65E8);
  sub_1E15D67D0();
  sub_1E15D6824();
  v31 = v51;
  sub_1E1AF2A7C();

  v32 = v54;
  v33 = *(v54 + 16);
  v34 = v53;
  v33(v53, v31, v3);
  *&v60 = v59;
  *(&v60 + 1) = v55;
  v35 = v50;
  *&v61 = v50;
  *(&v61 + 1) = v24;
  v48 = v24;
  v36 = v49;
  *&v62 = v49;
  *(&v62 + 1) = v56;
  *&v63 = v58;
  *(&v63 + 1) = v57;
  v37 = v47;
  v64 = v47;
  v38 = v52;
  v52[64] = v47;
  v39 = v63;
  *(v38 + 2) = v62;
  *(v38 + 3) = v39;
  v40 = v61;
  *v38 = v60;
  *(v38 + 1) = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6610);
  v33(&v38[*(v41 + 48)], v34, v3);
  sub_1E134FD1C(&v60, &v65, &qword_1ECEB6618);
  v42 = *(v32 + 8);
  v42(v31, v3);
  v42(v34, v3);
  v65 = v59;
  v66 = v55;
  v67 = v35;
  v68 = v48;
  v69 = v36;
  v70 = v56;
  v71 = v58;
  v72 = v57;
  v73 = v37;
  return sub_1E1308058(&v65, &qword_1ECEB6618);
}

uint64_t sub_1E15D48A4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6608);
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB65E8);
  *(a3 + *(result + 36)) = v5;
  return result;
}

void sub_1E15D4944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteArtworkView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10[0] = *(a1 + *(v7 + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB65C0);
  sub_1E1AF2BFC();
  if (v11)
  {
  }

  else if (*(a1 + *(v4 + 40)))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB65D0);
    sub_1E1AF2BFC();
    sub_1E15D5508(a1, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RemoteArtworkView);
    v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v9 = swift_allocObject();
    sub_1E15D64B0(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for RemoteArtworkView);
    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)(a2, 1, v10, sub_1E15D6730, v9);

    sub_1E1308058(v10, &unk_1ECEB5670);
  }

  else
  {
    type metadata accessor for ArtworkLoader();
    sub_1E15D53D8(&qword_1ECEB2E70, type metadata accessor for ArtworkLoader);
    sub_1E1AF231C();
    __break(1u);
  }
}

uint64_t sub_1E15D4B8C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    type metadata accessor for RemoteArtworkView(0);
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB65C0);
    return sub_1E1AF2C0C();
  }

  return result;
}

uint64_t sub_1E15D4C00(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for RemoteArtworkView(0) + 40)))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB65D0);
    sub_1E1AF2BFC();
    ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)(v2, 1);

    return sub_1E134B88C(v2);
  }

  else
  {
    type metadata accessor for ArtworkLoader();
    sub_1E15D53D8(&qword_1ECEB2E70, type metadata accessor for ArtworkLoader);
    result = sub_1E1AF231C();
    __break(1u);
  }

  return result;
}

__n128 sub_1E15D4CF0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AD8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21[-v8];
  sub_1E15D4FB0(a1, v25);
  v23 = *&v25[0];
  v22 = BYTE8(v25[0]);
  v10 = BYTE9(v25[0]);
  _sSo6CGSizeV11AppStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  v11 = sub_1E1AF127C();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v9, 0, 1, v11);
  v13 = *(a1 + 80);
  *&v25[0] = *(a1 + 72);
  *(&v25[0] + 1) = v13;
  v14 = Artwork.Crop.preferredContentMode.getter();
  sub_1E134FD1C(v9, v6, &qword_1ECEB2AD8);
  v15 = (*(v12 + 48))(v6, 1, v11);
  if (v15 == 1)
  {
    sub_1E1308058(v9, &qword_1ECEB2AD8);
    sub_1E1308058(v6, &qword_1ECEB2AD8);
    v16 = 0;
  }

  else
  {
    sub_1E1AF121C();
    v16 = v17;
    sub_1E1308058(v9, &qword_1ECEB2AD8);
    (*(v12 + 8))(v6, v11);
  }

  sub_1E1AF2D1C();
  sub_1E1AF214C();
  *&v24[6] = v25[0];
  *&v24[22] = v25[1];
  *&v24[38] = v25[2];
  *a2 = v23;
  *(a2 + 8) = v22;
  *(a2 + 9) = v10;
  *(a2 + 16) = v16;
  *(a2 + 24) = v15 == 1;
  *(a2 + 25) = v14 != 1;
  result = *v24;
  v19 = *&v24[16];
  v20 = *&v24[32];
  *(a2 + 72) = *&v24[46];
  *(a2 + 58) = v20;
  *(a2 + 42) = v19;
  *(a2 + 26) = result;
  return result;
}

void sub_1E15D4FB0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = v3;
    sub_1E1AF2AAC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6700);
    sub_1E15D7068();
    sub_1E1AF259C();
  }

  else
  {
    sub_1E1AF2AEC();
    sub_1E1AF26DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6700);
    sub_1E15D7068();
    sub_1E1AF259C();
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 9) = v7;
}

void sub_1E15D50DC(void **a1, void (*a2)(void **__return_ptr))
{
  a2(&v5);
  v3 = v5;
  v4 = *a1;
  if (v5)
  {

    v4 = v3;
  }

  *a1 = v4;
}

uint64_t sub_1E15D5134(uint64_t a1)
{
  v2 = sub_1E1AF2BBC();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1E1AF238C();
}

uint64_t sub_1E15D51FC(uint64_t a1, double a2, double a3)
{
  result = 0;
  if (a2 > 0.0 && a3 > 0.0)
  {
    v8 = *(a1 + 72);
    v7 = *(a1 + 80);
    v10 = v8;
    v11 = v7;
    if (Artwork.Crop.preferredContentMode.getter() == 1)
    {
      return Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, a2, a3);
    }

    else
    {
      v10 = v8;
      v11 = v7;

      v9 = Artwork.config(using:cropCodeOverride:prefersLayeredImage:)(&v10, 0, a2, a3);

      return v9;
    }
  }

  return result;
}

double sub_1E15D5358@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SwiftUIArtworkView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  *&result = sub_1E15D1DA0(v4, a1).n128_u64[0];
  return result;
}

uint64_t sub_1E15D53D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E15D5420()
{
  result = qword_1ECEB6460;
  if (!qword_1ECEB6460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6430);
    sub_1E15D53D8(&qword_1ECEB6448, type metadata accessor for SwiftUIArtworkView.SizedContent);
    sub_1E1302CD4(&qword_1ECEB6450, &qword_1ECEB6440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6460);
  }

  return result;
}

uint64_t sub_1E15D5508(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E15D5570(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1E15D55F8()
{
  type metadata accessor for Artwork();
  if (v0 <= 0x3F)
  {
    sub_1E15D57E8(319, &qword_1EE1D23F0, type metadata accessor for CGSize, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1E1AF2BAC();
      if (v2 <= 0x3F)
      {
        sub_1E15D5FB4(319, &qword_1ECEB6420, MEMORY[0x1E697DBF0], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E15D5734()
{
  type metadata accessor for Artwork();
  if (v0 <= 0x3F)
  {
    sub_1E15D57E8(319, &qword_1ECEB6498, MEMORY[0x1E69816E8], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E15D57E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1E15D584C()
{
  result = qword_1ECEB64A0;
  if (!qword_1ECEB64A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB64A8);
    sub_1E15D53D8(&qword_1ECEB6458, type metadata accessor for SystemArtworkView);
    sub_1E15D5420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB64A0);
  }

  return result;
}

unint64_t sub_1E15D5980()
{
  result = qword_1ECEB6508;
  if (!qword_1ECEB6508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6500);
    sub_1E1302CD4(&qword_1ECEB6510, &qword_1ECEB6518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6508);
  }

  return result;
}

void sub_1E15D5A60()
{
  type metadata accessor for Artwork();
  if (v0 <= 0x3F)
  {
    sub_1E15D57E8(319, &qword_1EE1D23F0, type metadata accessor for CGSize, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1E1AF2BAC();
      if (v2 <= 0x3F)
      {
        sub_1E15D5FB4(319, &qword_1ECEB6420, MEMORY[0x1E697DBF0], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1E15D57E8(319, &qword_1ECEB6498, MEMORY[0x1E69816E8], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1AF2BAC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm_1(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1AF2BAC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1E15D5D28()
{
  type metadata accessor for Artwork();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_1E1AF2BAC();
      if (v2 <= 0x3F)
      {
        sub_1E15D57E8(319, &qword_1EE1D23F0, type metadata accessor for CGSize, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1E15D5FB4(319, &qword_1ECEB6420, MEMORY[0x1E697DBF0], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1E15D5EBC();
            if (v5 <= 0x3F)
            {
              sub_1E15D5F50();
              if (v6 <= 0x3F)
              {
                sub_1E15D5FB4(319, &qword_1ECEB6550, MEMORY[0x1E69E69B8], MEMORY[0x1E6981790]);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1E15D5EBC()
{
  if (!qword_1ECEB6540)
  {
    type metadata accessor for ArtworkLoader();
    sub_1E15D53D8(&qword_1ECEB2E70, type metadata accessor for ArtworkLoader);
    v0 = sub_1E1AF233C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECEB6540);
    }
  }
}

void sub_1E15D5F50()
{
  if (!qword_1ECEB6548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB64E8);
    v0 = sub_1E1AF2C2C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECEB6548);
    }
  }
}

void sub_1E15D5FB4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1E15D6004()
{
  result = qword_1ECEB6558;
  if (!qword_1ECEB6558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB64C8);
    sub_1E15D60BC();
    sub_1E1302CD4(&qword_1ECEB2FA8, &qword_1ECEB2FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6558);
  }

  return result;
}

unint64_t sub_1E15D60BC()
{
  result = qword_1ECEB6560;
  if (!qword_1ECEB6560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB64C0);
    sub_1E15D6148();
    sub_1E15D6398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6560);
  }

  return result;
}

unint64_t sub_1E15D6148()
{
  result = qword_1ECEB6568;
  if (!qword_1ECEB6568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB64B8);
    sub_1E15D61D4();
    sub_1E15D6344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6568);
  }

  return result;
}

unint64_t sub_1E15D61D4()
{
  result = qword_1ECEB6570;
  if (!qword_1ECEB6570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB64B0);
    sub_1E15D6258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6570);
  }

  return result;
}

unint64_t sub_1E15D6258()
{
  result = qword_1ECEB6578;
  if (!qword_1ECEB6578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6580);
    sub_1E15D53D8(&qword_1ECEB64D8, type metadata accessor for RemoteArtworkView);
    sub_1E15D53D8(&qword_1ECEB64E0, type metadata accessor for BundleArtworkView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6578);
  }

  return result;
}

unint64_t sub_1E15D6344()
{
  result = qword_1ECEB6588;
  if (!qword_1ECEB6588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6588);
  }

  return result;
}

unint64_t sub_1E15D6398()
{
  result = qword_1ECEB6590;
  if (!qword_1ECEB6590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6590);
  }

  return result;
}

unint64_t sub_1E15D63EC()
{
  result = qword_1ECEB6598;
  if (!qword_1ECEB6598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB65A0);
    sub_1E15D5980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6598);
  }

  return result;
}

uint64_t sub_1E15D64B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1E15D6518()
{
  v1 = *(type metadata accessor for RemoteArtworkView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1E15D4944(v0 + v2, v3);
}

uint64_t sub_1E15D65A4()
{
  v1 = *(type metadata accessor for RemoteArtworkView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1E15D4C00(v2);
}

uint64_t objectdestroy_49Tm_0()
{
  v1 = (type metadata accessor for RemoteArtworkView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  v4 = sub_1E1AF2BAC();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[14]);

  return swift_deallocObject();
}

uint64_t sub_1E15D6730(uint64_t a1)
{
  type metadata accessor for RemoteArtworkView(0);

  return sub_1E15D4B8C(a1);
}

unint64_t sub_1E15D67D0()
{
  result = qword_1ECEB65F0;
  if (!qword_1ECEB65F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB65F0);
  }

  return result;
}

unint64_t sub_1E15D6824()
{
  result = qword_1ECEB65F8;
  if (!qword_1ECEB65F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB65E8);
    sub_1E1302CD4(&qword_1ECEB6600, &qword_1ECEB6608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB65F8);
  }

  return result;
}

unint64_t sub_1E15D68DC()
{
  result = qword_1ECEB6648;
  if (!qword_1ECEB6648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6640);
    sub_1E15D6968();
    sub_1E15D6BB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6648);
  }

  return result;
}

unint64_t sub_1E15D6968()
{
  result = qword_1ECEB6650;
  if (!qword_1ECEB6650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6638);
    sub_1E15D6A20();
    sub_1E1302CD4(&qword_1ECEB6510, &qword_1ECEB6518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6650);
  }

  return result;
}

unint64_t sub_1E15D6A20()
{
  result = qword_1ECEB6658;
  if (!qword_1ECEB6658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6660);
    sub_1E15D6AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6658);
  }

  return result;
}

unint64_t sub_1E15D6AAC()
{
  result = qword_1ECEB6668;
  if (!qword_1ECEB6668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6670);
    sub_1E15D6C9C(&qword_1ECEB6678, &qword_1ECEB6680, &unk_1E1B1BCC0, sub_1E15D6344);
    sub_1E15D6B64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6668);
  }

  return result;
}

unint64_t sub_1E15D6B64()
{
  result = qword_1ECEB6688;
  if (!qword_1ECEB6688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6688);
  }

  return result;
}

unint64_t sub_1E15D6BB8()
{
  result = qword_1ECEB6690;
  if (!qword_1ECEB6690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6628);
    sub_1E15D6C9C(&qword_1ECEB6698, &qword_1ECEB66A0, &unk_1E1B1BCC8, sub_1E15D6B64);
    sub_1E1302CD4(&qword_1ECEB6510, &qword_1ECEB6518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6690);
  }

  return result;
}

uint64_t sub_1E15D6C9C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E15D6D40()
{
  result = qword_1ECEB66A8;
  if (!qword_1ECEB66A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB66B0);
    sub_1E15D6DC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB66A8);
  }

  return result;
}

unint64_t sub_1E15D6DC4()
{
  result = qword_1ECEB66B8;
  if (!qword_1ECEB66B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB65A8);
    sub_1E15D6E50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB66B8);
  }

  return result;
}

unint64_t sub_1E15D6E50()
{
  result = qword_1ECEB66C0;
  if (!qword_1ECEB66C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB65C8);
    sub_1E15D6F08();
    sub_1E1302CD4(&qword_1ECEB66E0, &qword_1ECEB66E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB66C0);
  }

  return result;
}

unint64_t sub_1E15D6F08()
{
  result = qword_1ECEB66C8;
  if (!qword_1ECEB66C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB65B8);
    sub_1E1302CD4(&qword_1ECEB66D0, &qword_1ECEB66D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB66C8);
  }

  return result;
}

unint64_t sub_1E15D6FC0()
{
  result = qword_1ECEB66F0;
  if (!qword_1ECEB66F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB66F8);
    sub_1E15D68DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB66F0);
  }

  return result;
}

unint64_t sub_1E15D7068()
{
  result = qword_1ECEB6708;
  if (!qword_1ECEB6708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6700);
    sub_1E1302CD4(&qword_1ECEB6710, &qword_1ECEB6718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6708);
  }

  return result;
}

unint64_t sub_1E15D7120()
{
  result = qword_1ECEB6720;
  if (!qword_1ECEB6720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6728);
    sub_1E15D71AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6720);
  }

  return result;
}

unint64_t sub_1E15D71AC()
{
  result = qword_1ECEB6730;
  if (!qword_1ECEB6730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6738);
    sub_1E15D7238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6730);
  }

  return result;
}

unint64_t sub_1E15D7238()
{
  result = qword_1ECEB6740;
  if (!qword_1ECEB6740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6748);
    sub_1E15D72BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6740);
  }

  return result;
}

unint64_t sub_1E15D72BC()
{
  result = qword_1ECEB6750;
  if (!qword_1ECEB6750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6758);
    sub_1E15D7068();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6750);
  }

  return result;
}

uint64_t NSUserDefaults.date(for:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = [objc_opt_self() standardUserDefaults];
  sub_1E1AF6FEC();

  *&v17 = 0xD00000000000001BLL;
  *(&v17 + 1) = 0x80000001E1B65AD0;
  v5 = 0xED000065726F7453;
  v6 = 0x7070416F5477656ELL;
  v7 = 0xEF676E6972696150;
  v8 = 0x686374615777656ELL;
  if (v3 != 2)
  {
    v8 = 0xD000000000000013;
    v7 = 0x80000001E1B57920;
  }

  if (v3)
  {
    v6 = 0xD000000000000010;
    v5 = 0x80000001E1B578F0;
  }

  if (v3 <= 1)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (v3 <= 1)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  MEMORY[0x1E68FECA0](v9, v10);

  v11 = sub_1E1AF5DBC();

  v12 = [v4 objectForKey_];

  if (v12)
  {
    sub_1E1AF6EBC();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (*(&v18 + 1))
  {
    v13 = sub_1E1AEFE6C();
    v14 = swift_dynamicCast();
    return (*(*(v13 - 8) + 56))(a2, v14 ^ 1u, 1, v13);
  }

  else
  {
    sub_1E13E44F8(v19);
    v16 = sub_1E1AEFE6C();
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }
}

void _sSo14NSUserDefaultsC11AppStoreKitE3add_4withyAC26TodayCardTriggerIdentifierO_10Foundation4DateVtF_0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1E1AEFDBC();
  sub_1E1AF6FEC();

  v4 = 0xED000065726F7453;
  v5 = 0x7070416F5477656ELL;
  v6 = 0xEF676E6972696150;
  v7 = 0x686374615777656ELL;
  if (v1 != 2)
  {
    v7 = 0xD000000000000013;
    v6 = 0x80000001E1B57920;
  }

  if (v1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001E1B578F0;
  }

  if (v1 <= 1)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (v1 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  MEMORY[0x1E68FECA0](v8, v9);

  v10 = sub_1E1AF5DBC();

  [v2 setObject:v3 forKey:v10];
}

void _sSo14NSUserDefaultsC11AppStoreKitE6removeyyAC26TodayCardTriggerIdentifierOF_0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() standardUserDefaults];
  sub_1E1AF6FEC();

  v3 = 0xED000065726F7453;
  v4 = 0x7070416F5477656ELL;
  v5 = 0xEF676E6972696150;
  v6 = 0x686374615777656ELL;
  if (v1 != 2)
  {
    v6 = 0xD000000000000013;
    v5 = 0x80000001E1B57920;
  }

  if (v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001E1B578F0;
  }

  if (v1 <= 1)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (v1 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  MEMORY[0x1E68FECA0](v7, v8);

  v9 = sub_1E1AF5DBC();

  [v2 removeObjectForKey_];
}

double ShelfBasedProductPageIntent.init(deserializing:using:)@<D0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v54 = a2;
  v5 = sub_1E1AF39DC();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v44 - v8;
  v10 = sub_1E1AF380C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  v19 = sub_1E1AEFCCC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a3;
  *a3 = 0xD00000000000001BLL;
  a3[1] = 0x80000001E1B1BE30;
  v59 = a1;
  sub_1E1AF381C();
  sub_1E1AF36FC();
  v22 = v18;
  v48 = *(v11 + 8);
  v49 = v10;
  v23 = v11 + 8;
  v48(v22, v10);
  if ((*(v20 + 48))(v9, 1, v19) == 1)
  {
    sub_1E1308058(v9, &unk_1ECEB4B60);
    v24 = sub_1E1AF5A7C();
    sub_1E15D8478(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v26 = v25;
    v27 = type metadata accessor for ShelfBasedProductPageIntent();
    *v26 = 7107189;
    v26[1] = 0xE300000000000000;
    v26[2] = v27;
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69AB690], v24);
    swift_willThrow();
    (*(v52 + 8))(v54, v53);
    v48(v59, v49);
  }

  else
  {
    v29 = v50;
    (*(v20 + 32))(v50, v9, v19);
    sub_1E1AF381C();
    v30 = sub_1E1AF370C();
    v31 = v48;
    v32 = v49;
    v44 = v23;
    v48(v15, v49);
    v33 = type metadata accessor for ShelfBasedProductPageIntent();
    v34 = *(v33 + 20);
    v35 = v33;
    v45 = v33;
    v36 = v51;
    (*(v20 + 16))(v51 + v34, v29, v19);
    *(v36 + *(v35 + 24)) = v30 & 1;
    sub_1E1AF381C();
    v37 = v52;
    v38 = v53;
    v39 = v54;
    (*(v52 + 16))(v47, v54, v53);
    sub_1E15D7EC0();
    sub_1E1AF464C();
    (*(v37 + 8))(v39, v38);
    v31(v59, v32);
    (*(v20 + 8))(v50, v19);
    v40 = v57;
    v41 = v58;
    v42 = v51 + *(v45 + 28);
    result = *&v55;
    v43 = v56;
    *v42 = v55;
    *(v42 + 1) = v43;
    *(v42 + 4) = v40;
    v42[40] = v41;
  }

  return result;
}

uint64_t type metadata accessor for ShelfBasedProductPageIntent()
{
  result = qword_1EE1D7460;
  if (!qword_1EE1D7460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E15D7EC0()
{
  result = qword_1EE1F5AC8[0];
  if (!qword_1EE1F5AC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1F5AC8);
  }

  return result;
}

__n128 ShelfBasedProductPageIntent.init(url:preloading:referrerData:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(a3 + 32);
  v9 = *(a3 + 40);
  *a4 = 0xD00000000000001BLL;
  *(a4 + 1) = 0x80000001E1B1BE30;
  v10 = type metadata accessor for ShelfBasedProductPageIntent();
  v11 = v10[5];
  v12 = sub_1E1AEFCCC();
  v15 = *(a3 + 16);
  v16 = *a3;
  (*(*(v12 - 8) + 32))(&a4[v11], a1, v12);
  a4[v10[6]] = a2;
  v13 = &a4[v10[7]];
  result = v16;
  *v13 = v16;
  *(v13 + 1) = v15;
  *(v13 + 4) = v8;
  v13[40] = v9;
  return result;
}

uint64_t ShelfBasedProductPageIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ShelfBasedProductPageIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfBasedProductPageIntent() + 20);
  v4 = sub_1E1AEFCCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void ShelfBasedProductPageIntent.referrerData.getter(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShelfBasedProductPageIntent() + 28);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(v3 + 40);
  *(a1 + 40) = v9;

  sub_1E13E2380(v4, v5, v6, v7, v8, v9);
}

JSValue __swiftcall ShelfBasedProductPageIntent.makeValue(in:)(JSContext in)
{
  v2 = v1;
  v4 = objc_opt_self();
  result.super.isa = [v4 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_10;
  }

  isa = result.super.isa;
  v7 = type metadata accessor for ShelfBasedProductPageIntent();
  v8 = isa;
  sub_1E1AEFBDC();
  v9 = [v4 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1E1AF6C5C();
  v10 = [v4 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1E1AF6C5C();
  if (*(v2 + *(v7 + 28) + 8) == 1)
  {
    v11 = in.super.isa;
    v12 = 0;
  }

  else
  {
    v15 = sub_1E194C2F4();
    v13 = in.super.isa;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
    v12 = sub_1E1AF748C();
    sub_1E1308058(&v15, &qword_1ECEB7260);
  }

  v14 = [v4 valueWithObject:v12 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (v14)
  {
    sub_1E1AF6C5C();

    return v8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1E15D8478(unint64_t *a1, void (*a2)(uint64_t))
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

char *ClearSearchHistoryAction.__allocating_init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a4;
  v33 = a5;
  v30 = a2;
  v31 = a3;
  v10 = sub_1E1AEFEAC();
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v29 = a1;
  sub_1E134FD1C(a1, v39, &unk_1ECEB5670);
  v14 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v15 = sub_1E1AF3E1C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v28 = a6;
  v17(&v13[v14], a6, v15);
  sub_1E134FD1C(a7, &v13[OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics], &unk_1ECEB1770);
  v18 = &v13[OBJC_IVAR____TtC11AppStoreKit6Action_clickSender];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v19 = &v13[OBJC_IVAR____TtC11AppStoreKit6Action_id];
  sub_1E134FD1C(v39, &v36, &unk_1ECEB5670);
  if (*(&v37 + 1))
  {
    v20 = v37;
    *v19 = v36;
    *(v19 + 1) = v20;
    *(v19 + 4) = v38;
  }

  else
  {
    sub_1E1AEFE9C();
    v21 = sub_1E1AEFE7C();
    v23 = v22;
    (*(v27 + 8))(v12, v10);
    v34 = v21;
    v35 = v23;
    sub_1E1AF6F6C();
    sub_1E1308058(&v36, &unk_1ECEB5670);
  }

  sub_1E1308058(a7, &unk_1ECEB1770);
  (*(v16 + 8))(v28, v15);
  sub_1E1308058(v29, &unk_1ECEB5670);
  sub_1E1308058(v39, &unk_1ECEB5670);
  v24 = v31;
  *(v13 + 2) = v30;
  *(v13 + 3) = v24;
  v25 = v33;
  *(v13 + 4) = v32;
  *(v13 + 5) = v25;
  return v13;
}

void *ClearSearchHistoryAction.init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v38 = a7;
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v40 = a2;
  v37 = sub_1E1AEFEAC();
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v35 - v14;
  v16 = sub_1E1AF3E1C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v20 = a1;
  v21 = a6;
  v22 = v38;
  sub_1E134FD1C(v20, v52, &unk_1ECEB5670);
  (*(v17 + 16))(v19, v21, v16);
  sub_1E134FD1C(v22, v15, &unk_1ECEB1770);
  v23 = (v8 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v23 = 0u;
  v23[1] = 0u;
  sub_1E134FD1C(v52, &v46, &unk_1ECEB5670);
  if (*(&v47 + 1))
  {
    v49 = v46;
    v50 = v47;
    v51 = v48;
  }

  else
  {
    sub_1E1AEFE9C();
    v24 = v22;
    v25 = sub_1E1AEFE7C();
    v26 = v15;
    v28 = v27;
    (*(v36 + 8))(v12, v37);
    v44 = v25;
    v45 = v28;
    v22 = v24;
    v15 = v26;
    sub_1E1AF6F6C();
    sub_1E1308058(&v46, &unk_1ECEB5670);
  }

  sub_1E1308058(v22, &unk_1ECEB1770);
  (*(v17 + 8))(v21, v16);
  sub_1E1308058(v39, &unk_1ECEB5670);
  sub_1E1308058(v52, &unk_1ECEB5670);
  v29 = v8 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v29 + 4) = v51;
  v30 = v50;
  *v29 = v49;
  *(v29 + 1) = v30;
  sub_1E134B7C8(v15, v8 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v31 = v41;
  v32 = v42;
  v8[2] = v40;
  v8[3] = v31;
  v33 = v43;
  v8[4] = v32;
  v8[5] = v33;
  (*(v17 + 32))(v8 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v19, v16);
  return v8;
}

char *ClearSearchHistoryAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  v12 = *(v9 + 16);
  v16 = a1;
  v12(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  v13 = Action.init(deserializing:using:)(v11, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v16, v8);
  return v13;
}

char *ClearSearchHistoryAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v17 = a1;
  v13(v12, a1, v8, v10);
  (*(v5 + 16))(v7, a2, v4);
  v14 = Action.init(deserializing:using:)(v12, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v17, v8);
  return v14;
}

uint64_t ClearSearchHistoryAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);
  return v0;
}

uint64_t ClearSearchHistoryAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ClearSearchHistoryAction()
{
  result = qword_1EE1D96F8;
  if (!qword_1EE1D96F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E15D9180()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1ECEB6768);
  __swift_project_value_buffer(v4, qword_1ECEB6768);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

id sub_1E15D9360(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v58 = a2;
  v60 = a1;
  v61 = a5;
  v56 = a4;
  v5 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v57 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF5AAC();
  v55 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v52 - v11;
  v13 = sub_1E1AF39DC();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E1AF380C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v52 - v21;
  v23 = v59;
  sub_1E1AF6C0C();
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v59 = v12;
    v53 = v7;
    v54 = v9;
    (*(v17 + 16))(v19, v22, v16);
    sub_1E1AF39CC();
    v25 = sub_1E1608068(v19, v15);
    v27 = v26;
    v29 = v28;
    v30 = swift_allocObject();
    v31 = v56;
    v30[2] = v56;
    v30[3] = v25;
    v30[4] = v27;
    v30[5] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6798);
    v32 = v31;
    v56 = v25;

    v33 = sub_1E1AF588C();
    v34 = sub_1E1AF649C();
    v35 = v59;
    (*(*(v34 - 8) + 56))(v59, 1, 1, v34);
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = &unk_1E1B1C048;
    v36[5] = v30;
    v36[6] = v33;

    sub_1E1974308(0, 0, v35, &unk_1E1B1C058, v36);

    v37 = swift_allocObject();
    v38 = v61;
    *(v37 + 16) = v33;
    *(v37 + 24) = v38;
    sub_1E1AF490C();

    v40 = MEMORY[0x1E68FD610](v39);
    if (v40)
    {
      v41 = v40;
      v52[1] = v33;
      v59 = v29;
      v42 = swift_allocObject();
      *(v42 + 16) = 0;
      *(v42 + 24) = 1;
      *(v42 + 32) = v41;
      *(v42 + 40) = sub_1E15DBED0;
      *(v42 + 48) = v37;
      v43 = v60;

      v44 = v54;
      sub_1E1AF5A8C();

      v51 = sub_1E1AF5A9C();

      (*(v55 + 8))(v44, v53);
      (*(v17 + 8))(v22, v16);
LABEL_10:
      sub_1E15DADAC(v58, "MetricIdentifierPromise");
      return v51;
    }

    sub_1E13EB930();
    v24 = swift_allocError();
    *v45 = 0;
    swift_willThrow();

    (*(v17 + 8))(v22, v16);
  }

  if (qword_1ECEB0EC8 != -1)
  {
    swift_once();
  }

  v46 = sub_1E1AF591C();
  __swift_project_value_buffer(v46, qword_1ECEB6768);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  swift_getErrorValue();
  v47 = v62;
  v48 = v63;
  v64[3] = v63;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v64);
  (*(*(v48 - 8) + 16))(boxed_opaque_existential_0, v47, v48);
  sub_1E1AF384C();
  sub_1E13E44F8(v64);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF54AC();

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v51 = result;
    sub_1E15DB6B0(v61, "MetricIdentifier");

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E15D9B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E15D9B50, 0, 0);
}

uint64_t sub_1E15D9B50()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E15D9C08;
  v4 = v0[5];

  return sub_1E1602308(v2, 0, v4, v1);
}

uint64_t sub_1E15D9C08(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1E15D9D64, 0, 0);
  }
}

uint64_t sub_1E15D9D64()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 72);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t sub_1E15D9D88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v10 = *a1;
  v11 = a1[1];

  v7 = sub_1E1AF755C();
  v8 = [objc_opt_self() valueWithObject:v7 inContext:{a3, v10, v11}];
  result = swift_unknownObjectRelease();
  if (v8)
  {
    *a4 = v8;
    return sub_1E15DB420(a2, "MetricIdentifier");
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E15D9EC4(id a1)
{
  v3 = sub_1E1AF39DC();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - v11;
  sub_1E1AF6C0C();
  if (v1)
  {
    return a1;
  }

  (*(v7 + 16))(v9, v12, v6);
  sub_1E1AF39CC();
  v13 = sub_1E1608068(v9, v5);
  v15 = v14;
  v17 = v16;
  v18 = v13;
  v26 = v13;

  v20 = sub_1E16030D0(v18, 0, v15, v17);
  v22 = v21;
  v23 = v26;

  v25[0] = v20;
  v25[1] = v22;

  v24 = sub_1E1AF755C();
  a1 = [objc_opt_self() valueWithObject:v24 inContext:a1];
  result = swift_unknownObjectRelease();
  if (a1)
  {
    (*(v7 + 8))(v12, v6);

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E15DA248(const char *a1, const char *a2, const char *a3, uint64_t a4)
{
  v43 = a4;
  v37 = a3;
  v41 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_1E1AF0F7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v14 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v14, qword_1EE1F7BE8);
  sub_1E1AF0F8C();
  sub_1E1AF0F4C();
  v15 = sub_1E1AF0F8C();
  v16 = sub_1E1AF6A1C();
  if (sub_1E1AF6D6C())
  {
    v17 = v5;
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v15, v16, v19, a2, "", v18, 2u);
    v20 = v18;
    v5 = v17;
    MEMORY[0x1E6901640](v20, -1, -1);
  }

  v21 = *(v6 + 16);
  v21(v10, v13, v5);
  sub_1E1AF0FEC();
  swift_allocObject();
  v38 = sub_1E1AF0FDC();
  v22 = v6 + 8;
  v23 = *(v6 + 8);
  v39 = v22;
  v23(v13, v5);
  sub_1E1AF0F8C();
  v24 = v44;
  sub_1E1AF0F4C();
  v25 = sub_1E1AF0F8C();
  v26 = sub_1E1AF6A1C();
  if (sub_1E1AF6D6C())
  {
    v27 = v5;
    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v25, v26, v29, v37, "", v28, 2u);
    v30 = v28;
    v5 = v27;
    v24 = v44;
    MEMORY[0x1E6901640](v30, -1, -1);
  }

  v21(v10, v24, v5);
  swift_allocObject();
  v31 = sub_1E1AF0FDC();
  v23(v24, v5);
  sub_1E13006E4(0, &qword_1EE1E2DB8);
  v32 = sub_1E1AF6D4C();
  MEMORY[0x1EEE9AC00](v32);
  v34 = v41;
  v33 = v42;
  *(&v37 - 6) = v38;
  *(&v37 - 5) = v34;
  *(&v37 - 4) = v33;
  *(&v37 - 3) = v31;
  *(&v37 - 2) = ObjectType;
  v35 = sub_1E1AF6D5C();

  return v35;
}

id sub_1E15DA620(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v52 = a2;
  v54 = a1;
  v55 = a5;
  v50 = a4;
  v5 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF5AAC();
  v49 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v47 - v11;
  v13 = sub_1E1AF39DC();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = sub_1E1AF380C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  v21 = v53;
  sub_1E1AF6C0C();
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v53 = v12;
    v47 = v7;
    v48 = v9;
    (*(v15 + 16))(v17, v20, v14);
    sub_1E1AF39CC();
    sub_1E15DBA90();
    v23 = sub_1E1AF62EC();
    v24 = swift_allocObject();
    v25 = v50;
    *(v24 + 16) = v50;
    *(v24 + 24) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6790);
    v26 = v25;
    v27 = sub_1E1AF588C();
    v28 = sub_1E1AF649C();
    v29 = v53;
    (*(*(v28 - 8) + 56))(v53, 1, 1, v28);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = &unk_1E1B1C020;
    v30[5] = v24;
    v30[6] = v27;

    sub_1E1974308(0, 0, v29, &unk_1E1B1C030, v30);

    v31 = swift_allocObject();
    v32 = v55;
    *(v31 + 16) = v27;
    *(v31 + 24) = v32;
    sub_1E1AF490C();

    v34 = MEMORY[0x1E68FD610](v33);
    if (v34)
    {
      v35 = v34;
      v36 = v20;
      v37 = swift_allocObject();
      *(v37 + 16) = 0;
      *(v37 + 24) = 1;
      *(v37 + 32) = v35;
      *(v37 + 40) = sub_1E15DBC6C;
      *(v37 + 48) = v31;
      v38 = v54;

      v39 = v48;
      sub_1E1AF5A8C();

      v46 = sub_1E1AF5A9C();

      (*(v49 + 8))(v39, v47);
      (*(v15 + 8))(v36, v14);
LABEL_10:
      sub_1E15DADAC(v52, "MetricFieldsPromise");
      return v46;
    }

    sub_1E13EB930();
    v22 = swift_allocError();
    *v40 = 0;
    swift_willThrow();

    (*(v15 + 8))(v20, v14);
  }

  if (qword_1ECEB0EC8 != -1)
  {
    swift_once();
  }

  v41 = sub_1E1AF591C();
  __swift_project_value_buffer(v41, qword_1ECEB6768);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  swift_getErrorValue();
  v42 = v56;
  v43 = v57;
  v58[3] = v57;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v58);
  (*(*(v43 - 8) + 16))(boxed_opaque_existential_0, v42, v43);
  sub_1E1AF384C();
  sub_1E13E44F8(v58);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF54AC();

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v46 = result;
    sub_1E15DB6B0(v55, "MetricFields");

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E15DADAC(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = sub_1E1AF0FBC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF0F7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v10 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v10, qword_1EE1F7BE8);
  v11 = sub_1E1AF0F8C();
  sub_1E1AF0FCC();
  v12 = sub_1E1AF6A0C();
  if (sub_1E1AF6D6C())
  {

    sub_1E1AF0FFC();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x1E6901640](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1E15DB03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E15DB060, 0, 0);
}

uint64_t sub_1E15DB060()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1E15DB108;
  v2 = *(v0 + 32);

  return sub_1E1603A6C(v2, 0);
}

uint64_t sub_1E15DB108(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1E15DB254, 0, 0);
  }
}

uint64_t sub_1E15DB278(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a1;
  v9[3] = sub_1E1AF470C();
  v9[4] = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(v9);

  v6 = a1;
  sub_1E1AF46FC();
  sub_1E13006E4(0, &qword_1EE1E32A8);
  v7 = sub_1E1AF57DC();

  __swift_destroy_boxed_opaque_existential_1(v9);
  return v7;
}

uint64_t sub_1E15DB360@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
  v6 = sub_1E1AF755C();
  v7 = [objc_opt_self() valueWithObject:v6 inContext:a2];
  result = swift_unknownObjectRelease();
  if (v7)
  {
    *a3 = v7;
    return sub_1E15DB420(a1, "MetricFields");
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E15DB420(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = sub_1E1AF0FBC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF0F7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v10 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v10, qword_1EE1F7BE8);
  v11 = sub_1E1AF0F8C();
  sub_1E1AF0FCC();
  v12 = sub_1E1AF6A0C();
  if (sub_1E1AF6D6C())
  {

    sub_1E1AF0FFC();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "success=true";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x1E6901640](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1E15DB6B0(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = sub_1E1AF0FBC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF0F7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v10 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v10, qword_1EE1F7BE8);
  v11 = sub_1E1AF0F8C();
  sub_1E1AF0FCC();
  v12 = sub_1E1AF6A0C();
  if (sub_1E1AF6D6C())
  {

    sub_1E1AF0FFC();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "success=false";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x1E6901640](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1E15DBA90()
{
  result = qword_1EE1EA200[0];
  if (!qword_1EE1EA200[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1EA200);
  }

  return result;
}

uint64_t sub_1E15DBAE4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E130B5D8;

  return sub_1E15DB03C(a1, v5, v4);
}

uint64_t sub_1E15DBB90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E130B5DC;

  return sub_1E1973A20(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E15DBD34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E130B5DC;

  return sub_1E15D9B28(a1, v4, v5, v7, v6);
}

uint64_t sub_1E15DBDF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E130B5D8;

  return sub_1E197373C(a1, v4, v5, v6, v7, v8);
}

uint64_t ShareSheetData.activityItemProviders(with:enablePrerenderedIconArtwork:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1E1AF127C();
  v152 = *(v6 - 8);
  v153 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = MEMORY[0x1E69E7CC0];
  v9 = *(v2 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_metadata);
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    v46 = (v9 & 0x3FFFFFFFFFFFFFFFLL);
    if (v10 == 2)
    {
      v47 = type metadata accessor for URLActivityItemProvider();
      v48 = objc_allocWithZone(v47);
      *&v48[OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_shareSheetData] = v2;
      *&v48[OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_artworkLoader] = a1;
      v49 = qword_1ECEB0FE0;
      swift_retain_n();
      swift_retain_n();

      if (v49 != -1)
      {
        swift_once();
      }

      v50 = qword_1ECEB82C0;

      sub_1E15C6454(MEMORY[0x1E69E7CD0], v50);
      *&v48[OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_excludedActivityTypes] = v51;
      v52 = sub_1E1AEFBEC();
      v162.receiver = v48;
      v162.super_class = v47;
      v53 = objc_msgSendSuper2(&v162, sel_initWithPlaceholderItem_, v52);

      v54 = v53;
      MEMORY[0x1E68FEF20]();
      if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      sub_1E1AF62AC();
      v55 = v46[2];
      v56 = v46[3];
      v57 = type metadata accessor for TextActivityItemProvider();
      v58 = objc_allocWithZone(v57);
      v59 = &v58[OBJC_IVAR____TtC11AppStoreKit24TextActivityItemProvider_text];
      *v59 = v55;
      *(v59 + 1) = v56;
      v60 = qword_1ECEB15F8;

      if (v60 != -1)
      {
        swift_once();
      }

      v61 = qword_1ECEBBA18;

      sub_1E15C6454(MEMORY[0x1E69E7CD0], v61);
      *&v58[OBJC_IVAR____TtC11AppStoreKit24TextActivityItemProvider_excludedActivityTypes] = v62;
      v63 = sub_1E1AF5DBC();
      v161.receiver = v58;
      v161.super_class = v57;
      v64 = objc_msgSendSuper2(&v161, sel_initWithPlaceholderItem_, v63);

      v65 = v64;
      MEMORY[0x1E68FEF20]();
      if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      sub_1E1AF62AC();
      v66 = v46[6];
      if (v66)
      {
        v151 = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB67A0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E1B02CC0;
        v68 = *MEMORY[0x1E69CDB08];
        *(inited + 32) = *MEMORY[0x1E69CDB08];

        v69 = v68;
        v150 = sub_1E1497E68(inited);
        swift_setDeallocating();
        sub_1E15DD498(inited + 32);
        v70 = type metadata accessor for ArtworkActivityItemProvider();
        v71 = objc_allocWithZone(v70);
        v72 = OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_imageBox;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB67A8);
        swift_allocObject();

        *&v71[v72] = sub_1E14C5D90(0);
        *&v71[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artwork] = v66;
        *&v71[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artworkLoader] = a1;

        _sSo6CGSizeV11AppStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
        LOBYTE(inited) = sub_1E1AF125C();
        (*(v152 + 8))(v8, v153);
        v73 = 600.0;
        if (inited)
        {
          v73 = 150.0;
        }

        v74 = CGSize.fitting(_:mode:)(__PAIR128__(*&v73, *&v73), UIViewContentModeScaleAspectFit);
        *&v71[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artworkConfig] = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, v74.width, v74.height);
        if (qword_1ECEB0FB0 != -1)
        {
          swift_once();
        }

        v75 = qword_1ECEB7CB8;

        sub_1E15C6454(v150, v75);
        *&v71[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_excludedActivityTypes] = v76;
        v71[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = 0;
        v77 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
        v160.receiver = v71;
        v160.super_class = v70;
        v78 = objc_msgSendSuper2(&v160, sel_initWithPlaceholderItem_, v77);
LABEL_62:
        v140 = v78;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
        v141 = swift_allocObject();
        *(v141 + 16) = xmmword_1E1B06D70;
        *(v141 + 32) = *&v140[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artworkConfig];
        v142 = v140;

        ArtworkLoader.prefetchArtwork(using:)(v141);

        v143 = v142;
        MEMORY[0x1E68FEF20]();
        if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E1AF625C();
        }

        sub_1E1AF62AC();

        goto LABEL_65;
      }
    }

    else
    {
      v112 = type metadata accessor for URLActivityItemProvider();
      v113 = objc_allocWithZone(v112);
      *&v113[OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_shareSheetData] = v2;
      *&v113[OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_artworkLoader] = a1;
      v114 = qword_1ECEB0FE0;
      swift_retain_n();
      swift_retain_n();

      if (v114 != -1)
      {
        swift_once();
      }

      v115 = qword_1ECEB82C0;

      sub_1E15C6454(MEMORY[0x1E69E7CD0], v115);
      *&v113[OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_excludedActivityTypes] = v116;
      v117 = sub_1E1AEFBEC();
      v165.receiver = v113;
      v165.super_class = v112;
      v118 = objc_msgSendSuper2(&v165, sel_initWithPlaceholderItem_, v117);

      v54 = v118;
      MEMORY[0x1E68FEF20]();
      if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      sub_1E1AF62AC();
      v119 = v46[2];
      v120 = v46[3];
      v121 = type metadata accessor for TextActivityItemProvider();
      v122 = objc_allocWithZone(v121);
      v123 = &v122[OBJC_IVAR____TtC11AppStoreKit24TextActivityItemProvider_text];
      *v123 = v119;
      *(v123 + 1) = v120;
      v124 = qword_1ECEB15F8;

      if (v124 != -1)
      {
        swift_once();
      }

      v125 = qword_1ECEBBA18;

      sub_1E15C6454(MEMORY[0x1E69E7CD0], v125);
      *&v122[OBJC_IVAR____TtC11AppStoreKit24TextActivityItemProvider_excludedActivityTypes] = v126;
      v127 = sub_1E1AF5DBC();
      v164.receiver = v122;
      v164.super_class = v121;
      v128 = objc_msgSendSuper2(&v164, sel_initWithPlaceholderItem_, v127);

      v65 = v128;
      MEMORY[0x1E68FEF20]();
      if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      sub_1E1AF62AC();
      v129 = v46[6];
      if (v129)
      {
        v151 = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB67A0);
        v130 = swift_initStackObject();
        *(v130 + 16) = xmmword_1E1B02CC0;
        v131 = *MEMORY[0x1E69CDB08];
        *(v130 + 32) = *MEMORY[0x1E69CDB08];

        v132 = v131;
        v150 = sub_1E1497E68(v130);
        swift_setDeallocating();
        sub_1E15DD498(v130 + 32);
        v133 = type metadata accessor for ArtworkActivityItemProvider();
        v134 = objc_allocWithZone(v133);
        v135 = OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_imageBox;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB67A8);
        swift_allocObject();

        *&v134[v135] = sub_1E14C5D90(0);
        *&v134[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artwork] = v129;
        *&v134[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artworkLoader] = a1;

        _sSo6CGSizeV11AppStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
        LOBYTE(v130) = sub_1E1AF125C();
        (*(v152 + 8))(v8, v153);
        v136 = 600.0;
        if (v130)
        {
          v136 = 150.0;
        }

        v137 = CGSize.fitting(_:mode:)(__PAIR128__(*&v136, *&v136), UIViewContentModeScaleAspectFit);
        *&v134[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artworkConfig] = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, v137.width, v137.height);
        if (qword_1ECEB0FB0 != -1)
        {
          swift_once();
        }

        v138 = qword_1ECEB7CB8;

        sub_1E15C6454(v150, v138);
        *&v134[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_excludedActivityTypes] = v139;
        v134[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = 0;
        v77 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
        v163.receiver = v134;
        v163.super_class = v133;
        v78 = objc_msgSendSuper2(&v163, sel_initWithPlaceholderItem_, v77);
        goto LABEL_62;
      }
    }

    v144 = v166;

    return v144;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB67A0);
    v79 = swift_initStackObject();
    v149 = xmmword_1E1B02CC0;
    *(v79 + 16) = xmmword_1E1B02CC0;
    v80 = *MEMORY[0x1E69CDB08];
    *(v79 + 32) = *MEMORY[0x1E69CDB08];
    v81 = v80;
    v151 = (v9 & 0x3FFFFFFFFFFFFFFFLL);

    v148 = v81;
    v82 = sub_1E1497E68(v79);
    swift_setDeallocating();
    sub_1E15DD498(v79 + 32);
    v83 = type metadata accessor for URLActivityItemProvider();
    v84 = objc_allocWithZone(v83);
    *&v84[OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_shareSheetData] = v3;
    *&v84[OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_artworkLoader] = a1;
    v85 = qword_1ECEB0FE0;
    swift_retain_n();
    swift_retain_n();
    if (v85 != -1)
    {
      swift_once();
    }

    v86 = qword_1ECEB82C0;

    sub_1E15C6454(v82, v86);
    *&v84[OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_excludedActivityTypes] = v87;
    v88 = sub_1E1AEFBEC();
    v159.receiver = v84;
    v159.super_class = v83;
    v89 = objc_msgSendSuper2(&v159, sel_initWithPlaceholderItem_, v88);

    v90 = v89;
    MEMORY[0x1E68FEF20]();
    if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v150 = v90;
    sub_1E1AF62AC();
    v91 = *(v151 + 12);
    v92 = swift_initStackObject();
    *(v92 + 16) = v149;
    *(v92 + 32) = v148;

    v93 = sub_1E1497E68(v92);
    swift_setDeallocating();
    sub_1E15DD498(v92 + 32);
    v94 = type metadata accessor for ArtworkActivityItemProvider();
    v95 = objc_allocWithZone(v94);
    v96 = OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_imageBox;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB67A8);
    swift_allocObject();
    *&v95[v96] = sub_1E14C5D90(0);
    *&v95[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artwork] = v91;
    *&v95[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artworkLoader] = a1;

    _sSo6CGSizeV11AppStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    LOBYTE(v92) = sub_1E1AF125C();
    (*(v152 + 8))(v8, v153);
    v97 = 600.0;
    if (v92)
    {
      v97 = 150.0;
    }

    v98 = CGSize.fitting(_:mode:)(__PAIR128__(*&v97, *&v97), UIViewContentModeScaleAspectFit);
    *&v95[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artworkConfig] = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, v98.width, v98.height);
    if (qword_1ECEB0FB0 != -1)
    {
      swift_once();
    }

    v99 = qword_1ECEB7CB8;

    sub_1E15C6454(v93, v99);
    *&v95[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_excludedActivityTypes] = v100;
    v95[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = a2 & 1;
    v101 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
    v158.receiver = v95;
    v158.super_class = v94;
    v102 = objc_msgSendSuper2(&v158, sel_initWithPlaceholderItem_, v101);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
    v103 = swift_allocObject();
    *(v103 + 16) = xmmword_1E1B06D70;
    *(v103 + 32) = *&v102[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artworkConfig];
    v104 = v102;

    ArtworkLoader.prefetchArtwork(using:)(v103);

    v105 = v104;
    MEMORY[0x1E68FEF20]();
    if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    sub_1E1AF62AC();
    v106 = *(v151 + 17);
    if (v106)
    {
      v107 = type metadata accessor for NotesMetadataActivityItemProvider();
      v108 = objc_allocWithZone(v107);
      *&v108[OBJC_IVAR____TtC11AppStoreKit33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata] = xmmword_1E1B1C060;
      *&v108[OBJC_IVAR____TtC11AppStoreKit33NotesMetadataActivityItemProvider_metadata] = v106;
      swift_retain_n();
      v109 = sub_1E1AF5DBC();
      v157.receiver = v108;
      v157.super_class = v107;
      v110 = objc_msgSendSuper2(&v157, sel_initWithPlaceholderItem_, v109);

      v111 = v110;
      MEMORY[0x1E68FEF20]();
      if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      sub_1E1AF62AC();

      goto LABEL_65;
    }

    v144 = v166;

    v145 = v150;
LABEL_69:

    return v144;
  }

  v11 = type metadata accessor for URLActivityItemProvider();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_shareSheetData] = v2;
  *&v12[OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_artworkLoader] = a1;
  v13 = qword_1ECEB0FE0;
  swift_retain_n();
  swift_retain_n();

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_1ECEB82C0;

  sub_1E15C6454(MEMORY[0x1E69E7CD0], v14);
  *&v12[OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_excludedActivityTypes] = v15;
  v16 = sub_1E1AEFBEC();
  v156.receiver = v12;
  v156.super_class = v11;
  v17 = objc_msgSendSuper2(&v156, sel_initWithPlaceholderItem_, v16);

  v18 = v17;
  MEMORY[0x1E68FEF20]();
  if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1E1AF625C();
  }

  v151 = v18;
  sub_1E1AF62AC();
  v19 = *(v9 + 32);
  v20 = *(v9 + 40);
  v21 = type metadata accessor for TextActivityItemProvider();
  v22 = objc_allocWithZone(v21);
  v23 = &v22[OBJC_IVAR____TtC11AppStoreKit24TextActivityItemProvider_text];
  *v23 = v19;
  *(v23 + 1) = v20;
  v24 = qword_1ECEB15F8;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_1ECEBBA18;

  sub_1E15C6454(MEMORY[0x1E69E7CD0], v25);
  *&v22[OBJC_IVAR____TtC11AppStoreKit24TextActivityItemProvider_excludedActivityTypes] = v26;
  v27 = sub_1E1AF5DBC();
  v155.receiver = v22;
  v155.super_class = v21;
  v28 = objc_msgSendSuper2(&v155, sel_initWithPlaceholderItem_, v27);

  v29 = v28;
  MEMORY[0x1E68FEF20]();
  if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1E1AF625C();
  }

  sub_1E1AF62AC();
  v30 = *(v9 + 64);
  if (!v30)
  {
    v144 = v166;

    v145 = v151;
    goto LABEL_69;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB67A0);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_1E1B02CC0;
  v32 = *MEMORY[0x1E69CDB08];
  *(v31 + 32) = *MEMORY[0x1E69CDB08];

  v33 = v32;
  v150 = sub_1E1497E68(v31);
  swift_setDeallocating();
  sub_1E15DD498(v31 + 32);
  v34 = type metadata accessor for ArtworkActivityItemProvider();
  v35 = objc_allocWithZone(v34);
  v36 = OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_imageBox;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB67A8);
  swift_allocObject();

  *&v35[v36] = sub_1E14C5D90(0);
  *&v35[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artwork] = v30;
  *&v35[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artworkLoader] = a1;

  _sSo6CGSizeV11AppStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  LOBYTE(v31) = sub_1E1AF125C();
  (*(v152 + 8))(v8, v153);
  v37 = 600.0;
  if (v31)
  {
    v37 = 150.0;
  }

  v38 = CGSize.fitting(_:mode:)(__PAIR128__(*&v37, *&v37), UIViewContentModeScaleAspectFit);
  *&v35[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artworkConfig] = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, v38.width, v38.height);
  if (qword_1ECEB0FB0 != -1)
  {
    swift_once();
  }

  v39 = qword_1ECEB7CB8;

  sub_1E15C6454(v150, v39);
  *&v35[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_excludedActivityTypes] = v40;
  v35[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = 0;
  v41 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  v154.receiver = v35;
  v154.super_class = v34;
  v42 = objc_msgSendSuper2(&v154, sel_initWithPlaceholderItem_, v41);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1E1B06D70;
  *(v43 + 32) = *&v42[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artworkConfig];
  v44 = v42;

  ArtworkLoader.prefetchArtwork(using:)(v43);

  v45 = v44;
  MEMORY[0x1E68FEF20]();
  if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1E1AF625C();
  }

  sub_1E1AF62AC();

LABEL_65:

  return v166;
}

uint64_t sub_1E15DD498(uint64_t a1)
{
  type metadata accessor for ActivityType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ItemAdvertRotationController.__allocating_init(itemLayoutContext:lifecycleMetricsReporter:visibilityCalculatorTracksOcclusions:objectGraph:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_1E148BABC(a1, v8 + OBJC_IVAR____TtC11AppStoreKit28ItemAdvertRotationController_managedItemLayoutContext);
  v9 = sub_1E15DD688();
  sub_1E147410C(a2, v12);
  v10 = AdvertRotationController.init(adverts:lifecycleMetricsReporter:visibilityCalculatorTracksOcclusions:objectGraph:)(v9, v12, a3, a4);

  sub_1E1308058(a2, &qword_1ECEB24F8);
  sub_1E148BB20(a1);
  if (v10)
  {
  }

  return v10;
}

uint64_t ItemAdvertRotationController.init(itemLayoutContext:lifecycleMetricsReporter:visibilityCalculatorTracksOcclusions:objectGraph:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1E148BABC(a1, v4 + OBJC_IVAR____TtC11AppStoreKit28ItemAdvertRotationController_managedItemLayoutContext);
  v9 = sub_1E15DD688();
  sub_1E147410C(a2, v12);
  v10 = AdvertRotationController.init(adverts:lifecycleMetricsReporter:visibilityCalculatorTracksOcclusions:objectGraph:)(v9, v12, a3, a4);

  sub_1E1308058(a2, &qword_1ECEB24F8);
  sub_1E148BB20(a1);
  if (v10)
  {
  }

  return v10;
}

void *sub_1E15DD688()
{
  type metadata accessor for ItemLayoutContext();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80);
  sub_1E1AF3DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
  type metadata accessor for AdvertsSearchResult();
  if ((swift_dynamicCast() & 1) == 0 || !v11)
  {
LABEL_17:
    sub_1E1AF3DBC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB26E0);
    if (swift_dynamicCast())
    {
      if (*(&v12 + 1))
      {
        sub_1E1337DC8(&v11, &v14);
        v5 = v15;
        v6 = v16;
        __swift_project_boxed_opaque_existential_1Tm(&v14, v15);
        if (SearchAdOpportunityProviding.isSearchAdOpportunity.getter(v5, v6))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB26D8);
          v7 = swift_allocObject();
          *(v7 + 16) = xmmword_1E1B02CC0;
          sub_1E1337DC8(&v14, (v7 + 32));
          return v7;
        }

        __swift_destroy_boxed_opaque_existential_1(&v14);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
      v11 = 0u;
    }

    sub_1E1308058(&v11, &qword_1ECEB4410);
    return MEMORY[0x1E69E7CC0];
  }

  v0 = *(v11 + OBJC_IVAR____TtC11AppStoreKit19AdvertsSearchResult_lockups);
  *&v14 = MEMORY[0x1E69E7CC0];
  if (v0 >> 62)
  {
    goto LABEL_30;
  }

  v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  if (v1)
  {
    v2 = 0;
    while (1)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x1E68FFD80](v2, v0);
        v4 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }
      }

      else
      {
        if (v2 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_30:
          v1 = sub_1E1AF71CC();
          goto LABEL_5;
        }

        v3 = *(v0 + 8 * v2 + 32);

        v4 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_16;
        }
      }

      if (*(v3 + 416))
      {
        sub_1E1AF70BC();
        sub_1E1AF70FC();
        sub_1E1AF710C();
        sub_1E1AF70CC();
      }

      else
      {
      }

      ++v2;
      if (v4 == v1)
      {
        v9 = v14;
        goto LABEL_26;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_26:

  v10 = sub_1E14D6EA4(v9);

  return v10;
}

uint64_t sub_1E15DD974(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4408);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - v12;
  v14 = v5 + OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_rotationPerforming;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    sub_1E148BABC(v5 + OBJC_IVAR____TtC11AppStoreKit28ItemAdvertRotationController_managedItemLayoutContext, v13);
    v18 = type metadata accessor for ItemLayoutContext();
    (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
    (*(v16 + 16))(a1, a2, a3, v13, a4 & 1, a5, ObjectType, v16);
    swift_unknownObjectRelease();
    return sub_1E1308058(v13, &qword_1ECEB4408);
  }

  return result;
}

uint64_t ItemAdvertRotationController.deinit()
{
  v0 = AdvertRotationController.deinit();
  sub_1E148BB20(v0 + OBJC_IVAR____TtC11AppStoreKit28ItemAdvertRotationController_managedItemLayoutContext);
  return v0;
}

uint64_t ItemAdvertRotationController.__deallocating_deinit()
{
  v0 = AdvertRotationController.deinit();
  sub_1E148BB20(v0 + OBJC_IVAR____TtC11AppStoreKit28ItemAdvertRotationController_managedItemLayoutContext);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ItemAdvertRotationController()
{
  result = qword_1EE1E9920;
  if (!qword_1EE1E9920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E15DDC44()
{
  result = type metadata accessor for ItemLayoutContext();
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

uint64_t HorizontalRule.__allocating_init(id:style:color:isFullWidth:)(uint64_t a1, char *a2, uint64_t a3, char a4)
{
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v13 = *a2;
  sub_1E138853C(a1, &v20);
  if (*(&v21 + 1))
  {
    v23 = v20;
    v24 = v21;
    v25 = v22;
  }

  else
  {
    sub_1E1AEFE9C();
    v14 = sub_1E1AEFE7C();
    v16 = v15;
    (*(v9 + 8))(v11, v8);
    v19[1] = v14;
    v19[2] = v16;
    sub_1E1AF6F6C();
    sub_1E13E2E98(&v20);
  }

  v17 = v24;
  *(v12 + 40) = v23;
  *(v12 + 56) = v17;
  *(v12 + 72) = v25;
  sub_1E13E2E98(a1);
  *(v12 + 16) = v13;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4 & 1;
  return v12;
}

uint64_t HorizontalRule.init(id:style:color:isFullWidth:)(uint64_t a1, char *a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  sub_1E138853C(a1, &v21);
  if (*(&v22 + 1))
  {
    v24 = v21;
    v25 = v22;
    v26 = v23;
  }

  else
  {
    sub_1E1AEFE9C();
    v15 = sub_1E1AEFE7C();
    v17 = v16;
    (*(v11 + 8))(v13, v10);
    v20[1] = v15;
    v20[2] = v17;
    sub_1E1AF6F6C();
    sub_1E13E2E98(&v21);
  }

  sub_1E13E2E98(a1);
  v18 = v25;
  *(v5 + 40) = v24;
  *(v5 + 56) = v18;
  *(v5 + 72) = v26;
  *(v5 + 16) = v14;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4 & 1;
  return v5;
}

uint64_t HorizontalRule.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  HorizontalRule.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t HorizontalRule.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v37 = a2;
  v5 = sub_1E1AEFEAC();
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  v38 = a1;
  sub_1E1AF381C();
  v20 = sub_1E1AF37CC();
  if (v21)
  {
    v39 = v20;
    v40 = v21;
  }

  else
  {
    sub_1E1AEFE9C();
    v22 = sub_1E1AEFE7C();
    v23 = v5;
    v25 = v24;
    (*(v35 + 8))(v7, v23);
    v39 = v22;
    v40 = v25;
  }

  sub_1E1AF6F6C();
  v26 = *(v9 + 8);
  v26(v19, v8);
  v27 = v42;
  *(v3 + 40) = v41;
  *(v3 + 56) = v27;
  *(v3 + 72) = v43;
  v28 = v38;
  sub_1E1AF381C();
  sub_1E15DE488();
  sub_1E1AF369C();
  v26(v16, v8);
  *(v3 + 16) = v41;
  sub_1E1AF381C();
  v29 = JSONObject.appStoreColor.getter();
  v26(v13, v8);
  if (!v29)
  {
    if (qword_1EE1E3290 != -1)
    {
      swift_once();
    }

    v29 = qword_1EE1E3298;
  }

  *(v3 + 24) = v29;
  v30 = v36;
  sub_1E1AF381C();
  v31 = sub_1E1AF370C();
  v32 = sub_1E1AF39DC();
  (*(*(v32 - 8) + 8))(v37, v32);
  v26(v28, v8);
  v26(v30, v8);
  *(v3 + 32) = v31 & 1;
  return v3;
}

unint64_t sub_1E15DE488()
{
  result = qword_1EE1DFD00;
  if (!qword_1EE1DFD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DFD00);
  }

  return result;
}

uint64_t HorizontalRule.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1E15DE554@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for HorizontalRule();
  v7 = swift_allocObject();
  result = HorizontalRule.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E15DE5CC()
{
  v1 = *v0;
  if ((v1 - 1) > 1)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E1B12AE0;
  v3 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  LODWORD(v4) = 1008981770;
  if (v1 == 1)
  {
    v5 = 9.0;
  }

  else
  {
    *&v4 = 4.0;
    v5 = 5.0;
  }

  *(v2 + 32) = [v3 initWithFloat_];
  v6 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v7 = v5;
  v8 = [v6 initWithFloat_];
  result = v2;
  *(v2 + 40) = v8;
  return result;
}

uint64_t HorizontalRule.Style.lineThickness(traitCollection:)()
{
  if (!*v0)
  {
    return sub_1E1AF1E6C();
  }

  return result;
}

CGMutablePathRef __swiftcall HorizontalRule.Style.path(in:traitCollection:)(__C::CGRect in, UITraitCollection traitCollection)
{
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  v7 = *v2;
  Mutable = CGPathCreateMutable();
  if (v7)
  {
    v9 = 9.0;
    if (v7 == 1)
    {
      v10 = 0.0;
    }

    else
    {
      v9 = 5.0;
      v10 = 4.0;
    }

    v11 = v9 + v10;
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v12 = CGRectGetWidth(v28);
    v13 = 0.0;
    if (v7 == 1)
    {
      v14 = 3.0;
    }

    else
    {
      v14 = 0.0;
    }

    v15 = v12 + -2.0 - v14;
    v16 = v11 * floor(v15 / v11);
    v17 = v15 - v16;
    if (v7 == 1)
    {
      v18 = 5.0;
      v13 = 3.0;
      if (v10 + 3.0 > v17)
      {
        goto LABEL_15;
      }
    }

    else if (v10 > v17)
    {
LABEL_14:
      v18 = v14 + 2.0;
LABEL_15:
      v24 = v18 + v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB67B0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1E1B02CD0;
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = height;
      v25 = v14 + CGRectGetMinX(v33) + 2.0;
      v34.origin.x = x;
      v34.origin.y = y;
      v34.size.width = width;
      v34.size.height = height;
      MidY = CGRectGetMidY(v34);
      *(v19 + 32) = v25;
      *(v19 + 40) = MidY;
      v35.origin.x = x;
      v35.origin.y = y;
      v35.size.width = width;
      v35.size.height = height;
      v23 = CGRectGetMidY(v35);
      *(v19 + 48) = v24;
      goto LABEL_16;
    }

    v16 = v16 + v10 + v13;
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB67B0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1E1B02CD0;
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v20 = CGRectGetMinX(v29) + 2.0;
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v21 = CGRectGetMidY(v30);
  *(v19 + 32) = v20;
  *(v19 + 40) = v21;
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v22 = CGRectGetMaxX(v31) + -2.0;
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v23 = CGRectGetMidY(v32);
  *(v19 + 48) = v22;
LABEL_16:
  *(v19 + 56) = v23;
  sub_1E1AF685C();

  return Mutable;
}

Swift::Void __swiftcall HorizontalRule.Style.applyStyle(to:lineColor:traitCollection:)(CAShapeLayer to, CGColorRef lineColor, UITraitCollection traitCollection)
{
  v5 = *v3;
  [(objc_class *)to.super.super.isa setStrokeColor:lineColor];
  if (sub_1E15DE5CC())
  {
    sub_1E1380D6C();
    v6 = sub_1E1AF620C();
  }

  else
  {
    v6 = 0;
  }

  [(objc_class *)to.super.super.isa setLineDashPattern:v6];

  if (v5 == 1)
  {
    v7 = *MEMORY[0x1E6979E78];
    [(objc_class *)to.super.super.isa setLineCap:v7];

    v8 = 3.0;
  }

  else
  {
    v9 = *MEMORY[0x1E6979E70];
    [(objc_class *)to.super.super.isa setLineCap:v9];

    v8 = 1.0;
    if (!v5)
    {
      sub_1E1AF1E6C();
    }
  }

  [(objc_class *)to.super.super.isa setLineWidth:v8];
}

AppStoreKit::HorizontalRule::Style_optional __swiftcall HorizontalRule.Style.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HorizontalRule.Style.rawValue.getter()
{
  v1 = 0x646574746F44;
  if (*v0 != 1)
  {
    v1 = 0x646568736144;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64696C6F53;
  }
}

uint64_t sub_1E15DEAE8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x646574746F44;
  if (v2 != 1)
  {
    v3 = 0x646568736144;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x64696C6F53;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 0x646574746F44;
  if (*a2 != 1)
  {
    v6 = 0x646568736144;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x64696C6F53;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E1AF74AC();
  }

  return v9 & 1;
}

uint64_t sub_1E15DEBD8()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E15DEC70()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E15DECF4()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E15DED94(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x646574746F44;
  if (v2 != 1)
  {
    v4 = 0x646568736144;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x64696C6F53;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_1E15DEDEC()
{
  result = qword_1EE1F3E30;
  if (!qword_1EE1F3E30)
  {
    type metadata accessor for HorizontalRule();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1F3E30);
  }

  return result;
}

unint64_t sub_1E15DEE68()
{
  result = qword_1ECEB67B8;
  if (!qword_1ECEB67B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB67B8);
  }

  return result;
}

uint64_t sub_1E15DEF24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2998);

  return sub_1E1AF582C();
}

uint64_t sub_1E15DEF78(uint64_t a1, uint64_t a2)
{
  type metadata accessor for JSIntentDispatcher();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v4 = sub_1E1367B40(a1, a2, "AppStoreKit/TopChartDiffableSegmentContentPresenter.swift", 57, 2);

  return v4;
}

uint64_t sub_1E15DF00C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for JSIntentDispatcher();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2DF0);
  v6[0] = swift_allocObject();
  sub_1E134FD1C(a1, v6[0] + 16, &qword_1ECEB2DF0);
  v4 = sub_1E1369714(v6, a2, "AppStoreKit/TopChartDiffableSegmentContentPresenter.swift", 57, 2);

  sub_1E15E0198(v6);
  return v4;
}

uint64_t TopChartDiffableSegmentContentPresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:pageProvider:pageModifier:shelfProvider:moreOfPageProvider:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v69 = a3;
  v70 = a1;
  v62 = a2;
  v73 = a8;
  v74 = a13;
  v75 = a11;
  v58 = a10;
  v71 = a9;
  v72 = a12;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v57 - v19;
  v68 = &v57 - v19;
  v21 = swift_allocObject();
  sub_1E134FD1C(a2, v20, &unk_1ECEB4B60);
  v60 = a4;
  v61 = a5;
  if (a4)
  {
    v22 = a5;
  }

  else
  {
    v22 = 0;
  }

  v23 = a6;
  v59 = a7;
  if (a6)
  {
    v24 = a7;
  }

  else
  {
    v24 = 0;
  }

  v66 = v24;
  v67 = v22;
  *(v21 + qword_1EE1E9D48) = 0;
  v25 = MEMORY[0x1E69E7CC0];
  *(v21 + qword_1EE1E9DF8) = MEMORY[0x1E69E7CC0];
  v26 = qword_1EE2166A0;
  sub_1E1300E34(a4);
  sub_1E1300E34(v23);
  v27 = v58;
  sub_1E1300E34(v58);
  *(v21 + v26) = sub_1E159D6F0(v25);
  v28 = (v21 + qword_1EE1E9E00);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v21 + qword_1EE1E9EA0);
  *v29 = 0;
  v29[1] = 0;
  v65 = v29;
  v30 = (v21 + qword_1EE1E9E08);
  *v30 = 0;
  v30[1] = 0;
  v31 = (v21 + qword_1EE1E9DF0);
  *v31 = 0;
  v31[1] = 0;
  v64 = v31;
  v32 = (v21 + qword_1EE1E9E98);
  *v32 = 0;
  v32[1] = 0;
  v63 = v32;
  v33 = (v21 + qword_1EE216698);
  *v33 = 0u;
  v33[1] = 0u;
  *(v33 + 25) = 0u;
  *(v21 + qword_1EE2166D0) = 0;
  *(v21 + qword_1EE1E9D50) = 0;
  *(v21 + qword_1EE1E9DE8) = MEMORY[0x1E69E7CD0];
  *(v21 + qword_1EE2166C8) = 0;
  v34 = qword_1EE2166C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3188);
  swift_allocObject();
  *(v21 + v34) = sub_1E1AF5BEC();
  v35 = qword_1EE2166B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
  swift_allocObject();
  *(v21 + v35) = sub_1E1AF5BEC();
  v36 = qword_1EE216680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31A0);
  swift_allocObject();
  *(v21 + v36) = sub_1E1AF5BEC();
  v37 = qword_1EE2166B0;
  swift_allocObject();
  *(v21 + v37) = sub_1E1AF5BEC();
  v38 = qword_1EE216688;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
  swift_allocObject();
  *(v21 + v38) = sub_1E1AF5BEC();
  v39 = qword_1EE2166A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
  swift_allocObject();
  v40 = sub_1E1AF5BEC();
  sub_1E1300EA8(v27);
  sub_1E1300EA8(v23);
  v41 = v60;
  sub_1E1300EA8(v60);
  sub_1E1308058(v62, &unk_1ECEB4B60);
  *(v21 + v39) = v40;
  v42 = qword_1EE1E9DD8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8);
  v44 = *(*(v43 - 8) + 56);
  v44(v21 + v42, 1, 1, v43);
  v45 = v43;
  v46 = v69;
  v44(v21 + qword_1EE1E9DE0, 1, 1, v45);
  *(v21 + 16) = v70;
  sub_1E13E23F8(v68, v21 + qword_1EE216678);
  v47 = v66;
  v48 = v67;
  *v28 = v41;
  v28[1] = v48;
  *v30 = v23;
  v30[1] = v47;
  if (v46)
  {
    v49 = swift_allocObject();
    *(v49 + 16) = v46;
    v50 = sub_1E1445E6C;
  }

  else
  {
    v50 = 0;
    v49 = 0;
  }

  v51 = v75;
  if (!v27)
  {
    v51 = 0;
  }

  v53 = v64;
  v52 = v65;
  *v65 = v50;
  v52[1] = v49;
  v54 = v71;
  *v53 = v73;
  v53[1] = v54;
  v55 = v63;
  *v63 = v27;
  v55[1] = v51;
  *(v21 + qword_1EE1E9E90) = v72;
  *(v21 + qword_1EE216690) = v74;
  return v21;
}

uint64_t TopChartDiffableSegmentContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pageProvider:pageModifier:shelfProvider:moreOfPageProvider:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  v63 = a6;
  v72 = a3;
  v73 = a1;
  v66 = a2;
  v79 = a13;
  v77 = a8;
  v78 = a12;
  v75 = a9;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v70 = &v63 - v21;
  sub_1E134FD1C(a2, &v63 - v21, &unk_1ECEB4B60);
  v22 = a4;
  v64 = a4;
  v65 = a5;
  if (a4)
  {
    v23 = a5;
  }

  else
  {
    v23 = 0;
  }

  v69 = v23;
  if (a6)
  {
    v24 = a7;
  }

  else
  {
    v24 = 0;
  }

  v71 = v24;
  *(v14 + qword_1EE1E9D48) = 0;
  v25 = MEMORY[0x1E69E7CC0];
  *(v14 + qword_1EE1E9DF8) = MEMORY[0x1E69E7CC0];
  v26 = qword_1EE2166A0;
  sub_1E1300E34(v22);
  sub_1E1300E34(a6);
  sub_1E1300E34(a10);
  *(v14 + v26) = sub_1E159D6F0(v25);
  v27 = (v14 + qword_1EE1E9E00);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v14 + qword_1EE1E9EA0);
  *v28 = 0;
  v28[1] = 0;
  v67 = v28;
  v29 = (v14 + qword_1EE1E9E08);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v14 + qword_1EE1E9DF0);
  *v30 = 0;
  v30[1] = 0;
  v31 = (v14 + qword_1EE1E9E98);
  *v31 = 0;
  v31[1] = 0;
  v68 = v31;
  v32 = (v14 + qword_1EE216698);
  *v32 = 0u;
  v32[1] = 0u;
  *(v32 + 25) = 0u;
  *(v14 + qword_1EE2166D0) = 0;
  *(v14 + qword_1EE1E9D50) = 0;
  *(v14 + qword_1EE1E9DE8) = MEMORY[0x1E69E7CD0];
  *(v14 + qword_1EE2166C8) = 0;
  v33 = qword_1EE2166C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3188);
  swift_allocObject();
  *(v14 + v33) = sub_1E1AF5BEC();
  v34 = qword_1EE2166B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
  swift_allocObject();
  *(v14 + v34) = sub_1E1AF5BEC();
  v35 = qword_1EE216680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31A0);
  swift_allocObject();
  *(v14 + v35) = sub_1E1AF5BEC();
  v36 = qword_1EE2166B0;
  swift_allocObject();
  *(v14 + v36) = sub_1E1AF5BEC();
  v37 = qword_1EE216688;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
  swift_allocObject();
  *(v14 + v37) = sub_1E1AF5BEC();
  v38 = qword_1EE2166A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
  swift_allocObject();
  v39 = sub_1E1AF5BEC();
  v76 = a10;
  v74 = a11;
  sub_1E1300EA8(a10);
  v40 = v63;
  sub_1E1300EA8(v63);
  v41 = v64;
  sub_1E1300EA8(v64);
  sub_1E1308058(v66, &unk_1ECEB4B60);
  *(v14 + v38) = v39;
  v42 = qword_1EE1E9DD8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8);
  v44 = *(*(v43 - 8) + 56);
  v44(v14 + v42, 1, 1, v43);
  v45 = v43;
  v46 = v72;
  v44(v14 + qword_1EE1E9DE0, 1, 1, v45);
  *(v14 + 16) = v73;
  sub_1E13E23F8(v70, v14 + qword_1EE216678);
  v47 = *v27;
  v48 = v69;
  *v27 = v41;
  v27[1] = v48;
  sub_1E1300EA8(v47);
  v49 = *v29;
  v50 = v71;
  *v29 = v40;
  v29[1] = v50;
  sub_1E1300EA8(v49);
  if (v46)
  {
    v51 = swift_allocObject();
    *(v51 + 16) = v46;
    v52 = sub_1E155BD80;
  }

  else
  {
    v52 = 0;
    v51 = 0;
  }

  v53 = v76;
  if (v76)
  {
    v54 = v74;
  }

  else
  {
    v54 = 0;
  }

  v55 = v67;
  v56 = *v67;
  *v67 = v52;
  v55[1] = v51;
  sub_1E1300EA8(v56);
  v57 = *v30;
  v58 = v75;
  *v30 = v77;
  v30[1] = v58;
  sub_1E1300EA8(v57);
  v59 = v68;
  v60 = *v68;
  *v68 = v53;
  v59[1] = v54;
  sub_1E1300EA8(v60);
  v61 = v79;
  *(v14 + qword_1EE1E9E90) = v78;
  *(v14 + qword_1EE216690) = v61;
  return v14;
}

uint64_t TopChartDiffableSegmentContentPresenter.__deallocating_deinit()
{
  _s11AppStoreKit39SearchFocusDiffablePageContentPresenterCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1E15DFB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a4)
  {
    v15 = a5;
  }

  else
  {
    v15 = 0;
  }

  if (a6)
  {
    v16 = a7;
  }

  else
  {
    v16 = 0;
  }

  if (a10)
  {
    v17 = a11;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  TopChartDiffableSegmentContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pageProvider:pageModifier:shelfProvider:moreOfPageProvider:pendingPageRender:pageRenderMetrics:)(a1, a2, a3, a4, v15, a6, v16, a8, a9, a10, v17, a12, a13);
  return v18;
}

uint64_t _s11AppStoreKit39TopChartDiffableSegmentContentPresenterC11objectGraph7segment17pendingPageRender04pageO7MetricsAC9JetEngine010BaseObjectK0C_AA0deG0CAA07PendingnO0CSgAH0noqI0CSgtcfC_0(uint64_t (*a1)(uint64_t a1), uint64_t (*a2)(), uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v46 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = sub_1E1AEFCCC();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1E15E0190;
  *(v13 + 24) = a1;
  type metadata accessor for TopChartDiffableSegmentContentPresenter();
  v14 = swift_allocObject();
  sub_1E134FD1C(v11, v8, &unk_1ECEB4B60);
  *(v14 + qword_1EE1E9D48) = 0;
  v15 = MEMORY[0x1E69E7CC0];
  *(v14 + qword_1EE1E9DF8) = MEMORY[0x1E69E7CC0];
  v16 = qword_1EE2166A0;
  v17 = a1;
  swift_retain_n();
  v18 = a2;
  swift_retain_n();

  *(v14 + v16) = sub_1E159D6F0(v15);
  v19 = (v14 + qword_1EE1E9E00);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v14 + qword_1EE1E9EA0);
  v43 = (v14 + qword_1EE1E9EA0);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v14 + qword_1EE1E9E08);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v14 + qword_1EE1E9DF0);
  v42 = (v14 + qword_1EE1E9DF0);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v14 + qword_1EE1E9E98);
  v41 = (v14 + qword_1EE1E9E98);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v14 + qword_1EE216698);
  *v24 = 0u;
  v24[1] = 0u;
  *(v24 + 25) = 0u;
  *(v14 + qword_1EE2166D0) = 0;
  *(v14 + qword_1EE1E9D50) = 0;
  *(v14 + qword_1EE1E9DE8) = MEMORY[0x1E69E7CD0];
  *(v14 + qword_1EE2166C8) = 0;
  v25 = qword_1EE2166C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3188);
  swift_allocObject();
  *(v14 + v25) = sub_1E1AF5BEC();
  v26 = qword_1EE2166B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
  swift_allocObject();
  *(v14 + v26) = sub_1E1AF5BEC();
  v27 = qword_1EE216680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31A0);
  swift_allocObject();
  *(v14 + v27) = sub_1E1AF5BEC();
  v28 = qword_1EE2166B0;
  swift_allocObject();
  *(v14 + v28) = sub_1E1AF5BEC();
  v29 = qword_1EE216688;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
  swift_allocObject();
  *(v14 + v29) = sub_1E1AF5BEC();
  v30 = qword_1EE2166A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
  swift_allocObject();
  v31 = sub_1E1AF5BEC();

  sub_1E1308058(v11, &unk_1ECEB4B60);
  *(v14 + v30) = v31;
  v32 = qword_1EE1E9DD8;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8);
  v34 = *(*(v33 - 8) + 56);
  v34(v14 + v32, 1, 1, v33);
  v34(v14 + qword_1EE1E9DE0, 1, 1, v33);
  *(v14 + 16) = v17;
  sub_1E13E23F8(v44, v14 + qword_1EE216678);
  *v19 = sub_1E15E0180;
  v19[1] = v18;
  *v21 = 0;
  v21[1] = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = v18;
  v36 = v42;
  v37 = v43;
  *v43 = sub_1E155BD80;
  v37[1] = v35;
  *v36 = sub_1E15E0188;
  v36[1] = v17;
  v38 = v41;
  *v41 = sub_1E155BC10;
  v38[1] = v13;
  v39 = v46;
  *(v14 + qword_1EE1E9E90) = v45;
  *(v14 + qword_1EE216690) = v39;
  return v14;
}

uint64_t type metadata accessor for TopChartDiffableSegmentContentPresenter()
{
  result = qword_1ECEB67C0;
  if (!qword_1ECEB67C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AskToBuy.init(promptString:isException:isInAppPurchase:approveClosure:declineClosure:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  return result;
}

uint64_t AskToBuy.promptString.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AskToBuy.approveClosure.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t AskToBuy.declineClosure.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_1E15E02A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E15E02EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double static CGRect.frame(pinnedAtBottomLeftOf:of:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MinX = CGRectGetMinX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMaxY(v10);
  return MinX;
}

CGFloat static CGRect.frame(pinnedAtBottomRightOf:of:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = CGRectGetMaxX(*&a1) - a5;
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMaxY(v11);
  return v9;
}

CGFloat static CGRect.frame(centeredWithin:of:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = CGRectGetMidX(*&a1) - a5 * 0.5;
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMidY(v11);
  return v9;
}

CGFloat static CGRect.frame(pinnedAtTopCenterOf:of:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = CGRectGetMidX(*&a1) + a5 * -0.5;
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMinY(v11);
  return v9;
}

CGFloat static CGRect.frame(pinnedAtBottomCenterOf:of:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = CGRectGetMidX(*&a1) + a5 * -0.5;
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMaxY(v11);
  return v9;
}

uint64_t Trailers.__allocating_init(id:videos:mediaPlatform:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  sub_1E138853C(a1, &v17);
  if (*(&v18 + 1))
  {
    sub_1E13E2E98(a1);
    v20 = v17;
    v21 = v18;
    v22 = v19;
  }

  else
  {
    sub_1E1AEFE9C();
    v11 = sub_1E1AEFE7C();
    v13 = v12;
    (*(v7 + 8))(v9, v6);
    v16[1] = v11;
    v16[2] = v13;
    sub_1E1AF6F6C();
    sub_1E13E2E98(a1);
    sub_1E13E2E98(&v17);
  }

  v14 = v21;
  *(v10 + 32) = v20;
  *(v10 + 48) = v14;
  *(v10 + 64) = v22;
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  return v10;
}

uint64_t Trailers.init(id:videos:mediaPlatform:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E138853C(a1, &v18);
  if (*(&v19 + 1))
  {
    sub_1E13E2E98(a1);
    v21 = v18;
    v22 = v19;
    v23 = v20;
  }

  else
  {
    sub_1E1AEFE9C();
    v12 = sub_1E1AEFE7C();
    v14 = v13;
    (*(v9 + 8))(v11, v8);
    v17[1] = v12;
    v17[2] = v14;
    sub_1E1AF6F6C();
    sub_1E13E2E98(a1);
    sub_1E13E2E98(&v18);
  }

  v15 = v22;
  *(v4 + 32) = v21;
  *(v4 + 48) = v15;
  *(v4 + 64) = v23;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  return v4;
}

uint64_t Trailers.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Trailers.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t Trailers.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v42 = a2;
  v41 = sub_1E1AF39DC();
  v3 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v35 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v37 = v34 - v6;
  v7 = sub_1E1AEFEAC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF380C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v34[1] = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v34 - v16;
  v43 = a1;
  sub_1E1AF381C();
  v18 = sub_1E1AF37CC();
  v39 = v12;
  v40 = v11;
  if (v19)
  {
    v44 = v18;
    v45 = v19;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v21 = v8;
    v22 = v3;
    v24 = v23;
    (*(v21 + 8))(v10, v7);
    v44 = v20;
    v45 = v24;
    v3 = v22;
  }

  sub_1E1AF6F6C();
  v36 = *(v12 + 8);
  v36(v17, v11);
  v25 = v47;
  v26 = v49;
  *(v49 + 32) = v46;
  *(v26 + 48) = v25;
  *(v26 + 64) = v48;
  v27 = v43;
  sub_1E1AF381C();
  v28 = *(v3 + 16);
  v30 = v41;
  v29 = v42;
  v28(v37, v42, v41);
  type metadata accessor for Video();
  sub_1E15E0EF8(&qword_1EE1E52D0, 255, type metadata accessor for Video);
  v31 = v38;
  v32 = sub_1E1AF62EC();
  if (v31)
  {
    (*(v3 + 8))(v29, v30);
    v36(v27, v40);
    sub_1E134B88C(v49 + 32);
    type metadata accessor for Trailers();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v49 + 16) = v32;
    v38 = type metadata accessor for MediaPlatform();
    sub_1E1AF381C();
    v28(v35, v29, v30);
    sub_1E15E0EF8(qword_1EE1F4FB8, 255, type metadata accessor for MediaPlatform);
    sub_1E1AF464C();
    (*(v3 + 8))(v29, v30);
    v36(v27, v40);
    *(v49 + 24) = v46;
  }

  return v49;
}

uint64_t Trailers.deinit()
{

  sub_1E134B88C(v0 + 32);
  return v0;
}

uint64_t Trailers.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1E15E0EF8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1E15E0F50@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for Trailers();
  v7 = swift_allocObject();
  result = Trailers.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

char *ClearAppUsageDataAction.__allocating_init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a4;
  v33 = a5;
  v30 = a2;
  v31 = a3;
  v10 = sub_1E1AEFEAC();
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v29 = a1;
  sub_1E134FD1C(a1, v39, &unk_1ECEB5670);
  v14 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v15 = sub_1E1AF3E1C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v28 = a6;
  v17(&v13[v14], a6, v15);
  sub_1E134FD1C(a7, &v13[OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics], &unk_1ECEB1770);
  v18 = &v13[OBJC_IVAR____TtC11AppStoreKit6Action_clickSender];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v19 = &v13[OBJC_IVAR____TtC11AppStoreKit6Action_id];
  sub_1E134FD1C(v39, &v36, &unk_1ECEB5670);
  if (*(&v37 + 1))
  {
    v20 = v37;
    *v19 = v36;
    *(v19 + 1) = v20;
    *(v19 + 4) = v38;
  }

  else
  {
    sub_1E1AEFE9C();
    v21 = sub_1E1AEFE7C();
    v23 = v22;
    (*(v27 + 8))(v12, v10);
    v34 = v21;
    v35 = v23;
    sub_1E1AF6F6C();
    sub_1E1308058(&v36, &unk_1ECEB5670);
  }

  sub_1E1308058(a7, &unk_1ECEB1770);
  (*(v16 + 8))(v28, v15);
  sub_1E1308058(v29, &unk_1ECEB5670);
  sub_1E1308058(v39, &unk_1ECEB5670);
  v24 = v31;
  *(v13 + 2) = v30;
  *(v13 + 3) = v24;
  v25 = v33;
  *(v13 + 4) = v32;
  *(v13 + 5) = v25;
  return v13;
}

void *ClearAppUsageDataAction.init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v38 = a7;
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v40 = a2;
  v37 = sub_1E1AEFEAC();
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v35 - v14;
  v16 = sub_1E1AF3E1C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v20 = a1;
  v21 = a6;
  v22 = v38;
  sub_1E134FD1C(v20, v52, &unk_1ECEB5670);
  (*(v17 + 16))(v19, v21, v16);
  sub_1E134FD1C(v22, v15, &unk_1ECEB1770);
  v23 = (v8 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v23 = 0u;
  v23[1] = 0u;
  sub_1E134FD1C(v52, &v46, &unk_1ECEB5670);
  if (*(&v47 + 1))
  {
    v49 = v46;
    v50 = v47;
    v51 = v48;
  }

  else
  {
    sub_1E1AEFE9C();
    v24 = v22;
    v25 = sub_1E1AEFE7C();
    v26 = v15;
    v28 = v27;
    (*(v36 + 8))(v12, v37);
    v44 = v25;
    v45 = v28;
    v22 = v24;
    v15 = v26;
    sub_1E1AF6F6C();
    sub_1E1308058(&v46, &unk_1ECEB5670);
  }

  sub_1E1308058(v22, &unk_1ECEB1770);
  (*(v17 + 8))(v21, v16);
  sub_1E1308058(v39, &unk_1ECEB5670);
  sub_1E1308058(v52, &unk_1ECEB5670);
  v29 = v8 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v29 + 4) = v51;
  v30 = v50;
  *v29 = v49;
  *(v29 + 1) = v30;
  sub_1E134B7C8(v15, v8 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v31 = v41;
  v32 = v42;
  v8[2] = v40;
  v8[3] = v31;
  v33 = v43;
  v8[4] = v32;
  v8[5] = v33;
  (*(v17 + 32))(v8 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v19, v16);
  return v8;
}

char *ClearAppUsageDataAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  v12 = *(v9 + 16);
  v16 = a1;
  v12(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  v13 = Action.init(deserializing:using:)(v11, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v16, v8);
  return v13;
}

char *ClearAppUsageDataAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v17 = a1;
  v13(v12, a1, v8, v10);
  (*(v5 + 16))(v7, a2, v4);
  v14 = Action.init(deserializing:using:)(v12, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v17, v8);
  return v14;
}

uint64_t ClearAppUsageDataAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);
  return v0;
}

uint64_t ClearAppUsageDataAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ClearAppUsageDataAction()
{
  result = qword_1EE1F9DE0;
  if (!qword_1EE1F9DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MetadataRibbonTagViewLayout.init(descriptionLabelTextView:metrics:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  result = sub_1E1361B28(a1, a3);
  *(a3 + 40) = v4;
  return result;
}

uint64_t MetadataRibbonTagViewLayout.placeChildren(relativeTo:in:)()
{
  __swift_project_boxed_opaque_existential_1Tm(v0, v0[3]);
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm(v0, v0[3]);
  sub_1E1AF6B1C();
  sub_1E1AF116C();

  return sub_1E1AF106C();
}

uint64_t sub_1E15E1E5C()
{
  __swift_project_boxed_opaque_existential_1Tm(v0, v0[3]);
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm(v0, v0[3]);
  sub_1E1AF6B1C();
  sub_1E1AF116C();

  return sub_1E1AF106C();
}

uint64_t sub_1E15E1FC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E15E2010(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t TitledButton.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TitledButton.__allocating_init(id:title:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  sub_1E138853C(a1, &v19);
  if (*(&v20 + 1))
  {
    sub_1E13E2E98(a1);
    v22 = v19;
    v23 = v20;
    v24 = v21;
  }

  else
  {
    sub_1E1AEFE9C();
    v13 = sub_1E1AEFE7C();
    v15 = v14;
    (*(v9 + 8))(v11, v8);
    v18[1] = v13;
    v18[2] = v15;
    sub_1E1AF6F6C();
    sub_1E13E2E98(a1);
    sub_1E13E2E98(&v19);
  }

  v16 = v23;
  *(v12 + 40) = v22;
  *(v12 + 56) = v16;
  *(v12 + 72) = v24;
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  return v12;
}

uint64_t TitledButton.init(id:title:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E138853C(a1, &v20);
  if (*(&v21 + 1))
  {
    sub_1E13E2E98(a1);
    v23 = v20;
    v24 = v21;
    v25 = v22;
  }

  else
  {
    sub_1E1AEFE9C();
    v14 = sub_1E1AEFE7C();
    v16 = v15;
    (*(v11 + 8))(v13, v10);
    v19[1] = v14;
    v19[2] = v16;
    sub_1E1AF6F6C();
    sub_1E13E2E98(a1);
    sub_1E13E2E98(&v20);
  }

  v17 = v24;
  *(v5 + 40) = v23;
  *(v5 + 56) = v17;
  *(v5 + 72) = v25;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  return v5;
}

uint64_t TitledButton.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TitledButton.init(deserializing:using:)(a1, a2);
  return v4;
}

void *TitledButton.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v47 = a2;
  v44 = *v2;
  v45 = v3;
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1E1AF380C();
  v10 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v46 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  sub_1E1AF381C();
  v18 = sub_1E1AF37CC();
  if (v19)
  {
    v48 = v18;
    v49 = v19;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v21 = v7;
    v22 = a1;
    v24 = v23;
    (*(v21 + 8))(v9, v6);
    v48 = v20;
    v49 = v24;
    a1 = v22;
  }

  sub_1E1AF6F6C();
  v25 = *(v10 + 8);
  v25(v17, v53);
  v26 = v51;
  *(v4 + 5) = v50;
  *(v4 + 7) = v26;
  v4[9] = v52;
  sub_1E1AF381C();
  v27 = sub_1E1AF37CC();
  v29 = v28;
  v25(v14, v53);
  v30 = a1;
  if (v29)
  {
    v31 = v53;
    v4[2] = v27;
    v4[3] = v29;
    type metadata accessor for Action();
    v32 = v46;
    sub_1E1AF381C();
    v33 = v47;
    v34 = v45;
    v35 = static Action.makeInstance(byDeserializing:using:)(v32, v47);
    if (!v34)
    {
      v40 = v35;
      v41 = sub_1E1AF39DC();
      (*(*(v41 - 8) + 8))(v33, v41);
      v25(v30, v31);
      v25(v32, v31);
      v4[4] = v40;
      return v4;
    }

    v36 = sub_1E1AF39DC();
    (*(*(v36 - 8) + 8))(v33, v36);
    v25(a1, v31);
    v25(v32, v31);
  }

  else
  {
    v37 = sub_1E1AF5A7C();
    sub_1E15E29E4(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v38 = 0x656C746974;
    v38[1] = 0xE500000000000000;
    v38[2] = v44;
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E69AB690], v37);
    swift_willThrow();
    v39 = sub_1E1AF39DC();
    (*(*(v39 - 8) + 8))(v47, v39);
    v25(v30, v53);
  }

  sub_1E134B88C((v4 + 5));
  type metadata accessor for TitledButton();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t TitledButton.deinit()
{

  sub_1E134B88C(v0 + 40);
  return v0;
}

uint64_t TitledButton.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1E15E29E4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void *sub_1E15E2A3C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for TitledButton();
  v7 = swift_allocObject();
  result = TitledButton.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t ArcadeSubscriptionFieldsProvider.init(arcadeSubscriptionManager:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(type metadata accessor for ArcadeSubscriptionFieldsProvider() + 20);
  v5 = *MEMORY[0x1E69AB4D8];
  v6 = sub_1E1AF524C();
  result = (*(*(v6 - 8) + 104))(&a2[v4], v5, v6);
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for ArcadeSubscriptionFieldsProvider()
{
  result = qword_1EE1E7A90;
  if (!qword_1EE1E7A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArcadeSubscriptionFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArcadeSubscriptionFieldsProvider() + 20);
  v4 = sub_1E1AF524C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArcadeSubscriptionFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v3 = *v1 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  v8 = v4;
  LOBYTE(v9) = v3;
  sub_1E1361A40(v4, v3);
  v5 = sub_1E15E2D54(&v8);
  v10 = MEMORY[0x1E69E6158];
  v8 = v5;
  v9 = v6;
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_1E1AF4A1C();
  sub_1E1361A60(v4, v3);
  return __swift_destroy_boxed_opaque_existential_1(&v8);
}

uint64_t sub_1E15E2D54(uint64_t *a1)
{
  v1 = *(a1 + 8) >> 6;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      return 0x6269726373627573;
    }

    else
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v2 = *a1;
    if (v1)
    {
      v4 = *(v2 + 16);
      v5 = *(v2 + 24);
      v6 = v4;
      v7 = v5;
      return sub_1E15E2D54(&v6);
    }

    else if (*a1)
    {
      if (*a1 == 1)
      {
        return 0x7263736275736E75;
      }

      else
      {
        return 0xD000000000000013;
      }
    }

    else
    {
      return 0xD000000000000012;
    }
  }
}

UIEdgeInsets __swiftcall UIEdgeInsets.withLayoutDirection(_:)(UITraitEnvironmentLayoutDirection a1)
{
  if (a1 == UITraitEnvironmentLayoutDirectionRightToLeft)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  if (a1 == UITraitEnvironmentLayoutDirectionRightToLeft)
  {
    v2 = v1;
  }

  v4 = v3;
  result.right = v2;
  result.left = v4;
  return result;
}

double UIEdgeInsets.withLayoutDirection(in:)(void *a1, double a2)
{
  v3 = [a1 traitCollection];
  [v3 layoutDirection];

  return a2;
}

void sub_1E15E2F5C(void *a1)
{
  [a1 setModalPresentationStyle_];
  v2 = [a1 popoverPresentationController];
  if (v2)
  {
    v3 = v2;
    [v2 setPermittedArrowDirections_];
  }

  v4 = [a1 popoverPresentationController];
  if (v4)
  {
    v5 = v4;
    [v4 setSourceItem_];
  }

  v6 = [a1 popoverPresentationController];
  if (v6)
  {
    v7 = v6;
    [v6 setDelegate_];
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = [v8 window];
  if (v9)
  {

LABEL_10:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      [Strong presentViewController:a1 animated:1 completion:0];
    }

    v12 = *(v1 + OBJC_IVAR____TtC11AppStoreKit35UnifiedMessagingRegisteredPlacement_bubbleTipViewControllerToPresent);
    *(v1 + OBJC_IVAR____TtC11AppStoreKit35UnifiedMessagingRegisteredPlacement_bubbleTipViewControllerToPresent) = 0;

    return;
  }

  v13 = *(v1 + OBJC_IVAR____TtC11AppStoreKit35UnifiedMessagingRegisteredPlacement_bubbleTipViewControllerToPresent);
  *(v1 + OBJC_IVAR____TtC11AppStoreKit35UnifiedMessagingRegisteredPlacement_bubbleTipViewControllerToPresent) = a1;

  v14 = a1;
}

void sub_1E15E310C()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (!v0)
  {
    return;
  }

  v1 = v0;
  swift_unknownObjectRetain();
  v2 = [v1 subviews];
  sub_1E15E3774();
  v3 = sub_1E1AF621C();

  if (v3 >> 62)
  {
    v4 = sub_1E1AF71CC();
    if (v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_4:
      if (v4 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v4; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1E68FFD80](i, v3);
        }

        else
        {
          v6 = *(v3 + 8 * i + 32);
        }

        v7 = v6;
        type metadata accessor for MoveToWindowDetectorView();
        if (swift_dynamicCastClass())
        {
          [v7 removeFromSuperview];
        }
      }
    }
  }

  swift_unknownObjectRelease();
}

void sub_1E15E3284(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC11AppStoreKit35UnifiedMessagingRegisteredPlacement_bubbleTipViewControllerToPresent);
    v4 = Strong;
    v5 = v3;

    if (v3)
    {
      v6 = [a1 window];
      if (!v6)
      {
LABEL_9:

        return;
      }

      swift_beginAccess();
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = v7;
        v9 = swift_unknownObjectWeakLoadStrong();

        if (v9)
        {
          [v9 presentViewController:v5 animated:1 completion:0];
        }
      }

      swift_beginAccess();
      v10 = swift_unknownObjectWeakLoadStrong();

      if (v10)
      {
        v5 = *&v10[OBJC_IVAR____TtC11AppStoreKit35UnifiedMessagingRegisteredPlacement_bubbleTipViewControllerToPresent];
        *&v10[OBJC_IVAR____TtC11AppStoreKit35UnifiedMessagingRegisteredPlacement_bubbleTipViewControllerToPresent] = 0;

        goto LABEL_9;
      }
    }
  }
}

void sub_1E15E33BC()
{
  ObjectType = swift_getObjectType();
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = v2;
  swift_unknownObjectRetain();
  v4 = [v3 subviews];
  sub_1E15E3774();
  v5 = sub_1E1AF621C();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_13:
    swift_unknownObjectRelease();

LABEL_14:
    v10.receiver = v0;
    v10.super_class = ObjectType;
    objc_msgSendSuper2(&v10, sel_dealloc);
    return;
  }

  v6 = sub_1E1AF71CC();
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1E68FFD80](i, v5);
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      type metadata accessor for MoveToWindowDetectorView();
      if (swift_dynamicCastClass())
      {
        [v9 removeFromSuperview];
      }
    }

    goto LABEL_13;
  }

  __break(1u);
}

id sub_1E15E3704()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MoveToWindowDetectorView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E15E3774()
{
  result = qword_1EE1D23E8;
  if (!qword_1EE1D23E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE1D23E8);
  }

  return result;
}

uint64_t sub_1E15E37FC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  sub_1E15E5CE0(v2, v1);

  return swift_unknownObjectRelease();
}

uint64_t ArcadeSubscriptionOfferButtonPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  sub_1E15E5CE0(a1, a2);

  return swift_unknownObjectRelease();
}

void (*ArcadeSubscriptionOfferButtonPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1E15E391C;
}

void sub_1E15E391C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 24);
  if (a2)
  {
    v5 = swift_unknownObjectRetain();
    sub_1E15E5CE0(v5, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1E15E5CE0(v4, v3);
  }

  swift_unknownObjectRelease();

  free(v2);
}

id ArcadeSubscriptionOfferButtonPresenter.theme.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_1E139D580(v2, v3);
}

void ArcadeSubscriptionOfferButtonPresenter.alignment.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 124);
  *a1 = *(v1 + 120);
  *(a1 + 4) = v2;
}

void ArcadeSubscriptionOfferButtonPresenter.subtitlePosition.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 130);
  *a1 = *(v1 + 126);
  *(a1 + 4) = v2;
}

uint64_t ArcadeSubscriptionOfferButtonPresenter.__allocating_init(displayProperties:buttonAction:subscribedButtonAction:subtitlePosition:asPartOf:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, unsigned int *a6)
{
  swift_allocObject();
  v12 = sub_1E15E5DD4(a1, a2, a3, a4, a5, a6);

  return v12;
}

uint64_t ArcadeSubscriptionOfferButtonPresenter.init(displayProperties:buttonAction:subscribedButtonAction:subtitlePosition:asPartOf:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, unsigned int *a6)
{
  v6 = sub_1E15E5DD4(a1, a2, a3, a4, a5, a6);

  return v6;
}

uint64_t sub_1E15E3B0C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    _s11AppStoreKit38ArcadeSubscriptionOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  return result;
}

uint64_t sub_1E15E3B64(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 184);
    *(result + 184) = v1;
    v5 = *(result + 192);
    *(result + 192) = v2;
    sub_1E1361A40(v1, v2);
    sub_1E1361A60(v4, v5);
    _s11AppStoreKit38ArcadeSubscriptionOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  return result;
}

uint64_t sub_1E15E3C00()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    _s11AppStoreKit38ArcadeSubscriptionOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  return result;
}

uint64_t ArcadeSubscriptionOfferButtonPresenter.deinit()
{
  if (*(v0 + 200))
  {
    v1 = *(v0 + 208);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 80);
    swift_unknownObjectRetain();
    v3(v0, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  sub_1E1337DEC(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);

  sub_1E139D53C(*(v0 + 104), *(v0 + 112));

  __swift_destroy_boxed_opaque_existential_1(v0 + 144);
  sub_1E1361A60(*(v0 + 184), *(v0 + 192));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ArcadeSubscriptionOfferButtonPresenter.__deallocating_deinit()
{
  ArcadeSubscriptionOfferButtonPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E15E3D5C(char a1)
{
  v2 = *(v1 + 88);
  if ((a1 & 1) == 0)
  {
    if (!v2)
    {
      return 0;
    }

    v3 = *(v2 + 88);
    if (!*(v3 + 16))
    {
      return 0;
    }

    v4 = sub_1E1595560(10);
    if ((v6 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v7 = *(*(v3 + 56) + 16 * v4);

    return v7;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 88);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_1E1595560(9);
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_5:

  return 0;
}

BOOL sub_1E15E3E0C()
{
  v1 = *(v0 + 88);
  if (v1 && *(v1 + 96) == 5)
  {
    return 0;
  }

  v2 = *(v0 + 192) >> 6;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      if (v1)
      {
        v4 = *(v1 + 16);
        if (v4 != 4 && (sub_1E145769C(v4, 2u) & 1) != 0)
        {
          return *(v0 + 40) != 0;
        }
      }

      __swift_project_boxed_opaque_existential_1Tm((v0 + 144), *(v0 + 168));
      v7 = 0;
      v5 = &v7;
      return RestrictionsProtocol.doesAllow(_:properties:)(v5, v1);
    }

LABEL_11:
    __swift_project_boxed_opaque_existential_1Tm((v0 + 144), *(v0 + 168));
    v8 = 0;
    v5 = &v8;
    return RestrictionsProtocol.doesAllow(_:properties:)(v5, v1);
  }

  if (!v2)
  {
    goto LABEL_11;
  }

  return 0;
}

uint64_t ArcadeSubscriptionOfferButtonPresenter.actionForCurrentState.getter()
{
  if (*(v0 + 96) == 5)
  {
    if (qword_1EE1D27B0 == -1)
    {
LABEL_3:
      v1 = sub_1E1AF591C();
      __swift_project_value_buffer(v1, qword_1EE215450);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF382C();
      sub_1E1AF54AC();

      return 0;
    }

LABEL_14:
    swift_once();
    goto LABEL_3;
  }

  v3 = *(v0 + 192);
  if ((v3 & 0xC0) == 0x80)
  {
    if (!*(v0 + 40))
    {
      v4 = *(v0 + 184);
      v5 = qword_1EE1D27B0;
      v6 = v4;
      if (v5 != -1)
      {
        swift_once();
      }

      v7 = sub_1E1AF591C();
      __swift_project_value_buffer(v7, qword_1EE215450);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF382C();
      sub_1E1AF54AC();

      sub_1E1361A60(v4, v3);
      return 0;
    }
  }

  else if (!*(v0 + 32))
  {
    if (qword_1EE1D27B0 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_14;
  }
}

uint64_t sub_1E15E4294()
{
  v1 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = ArcadeSubscriptionOfferButtonPresenter.actionForCurrentState.getter();
  if (v2)
  {
    v3 = v2;
    if (qword_1EE1D27B0 != -1)
    {
      swift_once();
    }

    v4 = sub_1E1AF591C();
    __swift_project_value_buffer(v4, qword_1EE215450);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    v5 = sub_1E1AF387C();
    v6 = (*(*v3 + 192))(v5);
    v17 = MEMORY[0x1E69E6158];
    v14 = v6;
    v15 = v7;
    sub_1E1AF385C();
    sub_1E13E44F8(&v14);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v0 + 24);
      Strong = swift_unknownObjectWeakLoadStrong();
      v10 = Strong;
      if (Strong)
      {
        Strong = swift_getObjectType();
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }

      v14 = v10;
      v17 = Strong;
      ObjectType = swift_getObjectType();
      (*(*(v8 + 8) + 8))(v3, &v14, ObjectType);

      swift_unknownObjectRelease();
      return sub_1E13E44F8(&v14);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EE1D27B0 != -1)
    {
      swift_once();
    }

    v11 = sub_1E1AF591C();
    __swift_project_value_buffer(v11, qword_1EE215450);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();
  }
}

uint64_t sub_1E15E46CC(uint64_t a1, uint64_t a2)
{
  sub_1E15E5CE0(a1, a2);

  return swift_unknownObjectRelease();
}

void (*sub_1E15E4708(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_1E15E391C;
}

uint64_t sub_1E15E47C4(_BYTE *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = a1[8] >> 6;
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v14 = *a3;
      if (v14 == 4 || (sub_1E145769C(v14, 2u) & 1) == 0)
      {
        if (!*(a2 + 16) || (v10 = sub_1E1595560(4), (v19 & 1) == 0))
        {
          v12 = 0xD000000000000016;
          v13 = 0x80000001E1B5B260;
          goto LABEL_22;
        }
      }

      else
      {
        v16 = *(a2 + 16);
        if (a6)
        {
          if (!v16 || (v10 = sub_1E1595560(13), (v17 & 1) == 0))
          {
            v12 = 0xD00000000000002BLL;
            v13 = 0x80000001E1B5B340;
            goto LABEL_22;
          }
        }

        else if (!v16 || (v10 = sub_1E1595560(11), (v23 & 1) == 0))
        {
          v12 = 0xD00000000000001CLL;
          v13 = 0x80000001E1B69190;
          goto LABEL_22;
        }
      }

      goto LABEL_31;
    }

    if (!*(a2 + 16))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (!v9)
  {
    if (a6)
    {
      if (!*(a2 + 16) || (v10 = sub_1E1595560(14), (v11 & 1) == 0))
      {
        v12 = 0xD00000000000002ELL;
        v13 = 0x80000001E1B691B0;
LABEL_22:
        v20._countAndFlagsBits = 0;
        v20._object = 0xE000000000000000;
        return localizedString(_:comment:)(*&v12, v20)._countAndFlagsBits;
      }

      goto LABEL_31;
    }

    v21 = *(a2 + 16);
    if (*a1 == 1)
    {
      if (v21)
      {
        v10 = sub_1E1595560(9);
        if (v22)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_17;
    }

    if (!v21)
    {
      goto LABEL_17;
    }

LABEL_16:
    v10 = sub_1E1595560(10);
    if (v18)
    {
LABEL_31:
      a4 = *(*(a2 + 56) + 16 * v10);
      goto LABEL_32;
    }

LABEL_17:
    if (!a5)
    {
      v13 = 0x80000001E1B5B320;
      v12 = 0xD000000000000015;
      goto LABEL_22;
    }

LABEL_32:

    return a4;
  }

  return 0;
}

uint64_t _s11AppStoreKit38ArcadeSubscriptionOfferButtonPresenterC6update13ignoringCacheySb_tF_0()
{
  v1 = v0;
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 48), v2);
  if (((*(v3 + 8))(v2, v3) & 1) == 0)
  {
    v11._object = 0x80000001E1B5B300;
    v11._countAndFlagsBits = 0xD000000000000016;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v13 = localizedString(_:comment:)(v11, v12);
    countAndFlagsBits = v13._countAndFlagsBits;
    object = v13._object;
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1Tm((v0 + 144), *(v0 + 168));
  LOBYTE(v216) = 0;
  v4 = *(v0 + 88);
  if (RestrictionsProtocol.doesAllow(_:properties:)(&v216, v4) || !v4)
  {
    v22 = (v0 + 184);
    v21 = *(v0 + 184);
    v24 = (v0 + 192);
    v23 = *(v0 + 192);
    v216 = v21;
    LOBYTE(v217) = v23;
    if (!v4)
    {
      sub_1E1361A40(v21, v23);
      v25 = sub_1E15A11A4(MEMORY[0x1E69E7CC0]);
      v26 = 4;
      goto LABEL_18;
    }
  }

  else
  {
    v5 = *(v4 + 72);
    if (*(v5 + 16))
    {

      v6 = sub_1E1595560(12);
      if (v7)
      {
        v8 = (*(v5 + 56) + 16 * v6);
        countAndFlagsBits = *v8;
        object = v8[1];

LABEL_8:
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v14 = *(v1 + 24);
          ObjectType = swift_getObjectType();
          v16 = *(v1 + 104);
          v17 = *(v1 + 112);
          LOWORD(v220) = *(v1 + 96);
          v222 = v16;
          v223 = v17;
          v18 = *(v14 + 32);
          sub_1E139D580(v16, v17);
          v18(countAndFlagsBits, object, 0, 0, &v220, ObjectType, v14);
          swift_unknownObjectRelease();
          sub_1E139D53C(v222, v223);
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {
        }

        v19 = *(v1 + 24);
        v20 = swift_getObjectType();
        (*(v19 + 128))(countAndFlagsBits, object, v20, v19);
        return swift_unknownObjectRelease();
      }
    }

    v22 = (v1 + 184);
    v21 = *(v1 + 184);
    v24 = (v1 + 192);
    v23 = *(v1 + 192);
    v216 = v21;
    LOBYTE(v217) = v23;
  }

  v25 = *(v4 + 72);
  v26 = *(v4 + 16);
  sub_1E1361A40(v21, v23);

LABEL_18:
  LOBYTE(v220) = v26;
  v28 = *(v1 + 32);
  if (v28)
  {
    v29 = *(v28 + 16);
    v30 = *(v28 + 24);

    if (v4)
    {
LABEL_20:
      v31 = *(v4 + 122);
      goto LABEL_23;
    }
  }

  else
  {
    v29 = 0;
    v30 = 0;
    if (v4)
    {
      goto LABEL_20;
    }
  }

  v31 = 0;
LABEL_23:
  v208 = sub_1E15E47C4(&v216, v25, &v220, v29, v30, v31);
  v33 = v32;

  sub_1E1361A60(v216, v217);
  v34 = *v24 >> 6;
  if (v34 <= 1)
  {
    if (v34)
    {
      if (v4)
      {
        v55 = *(v4 + 16);
        if (v55 != 4 && (sub_1E145769C(v55, 2u) & 1) != 0)
        {
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v56 = *(v1 + 24);
            v57 = swift_getObjectType();
            v58 = *(v1 + 124);
            v220 = *(v1 + 120);
            v221 = v58;
            v59 = *(v1 + 104);
            v60 = *(v1 + 112);
            LOWORD(v216) = *(v1 + 96);
            v217 = v59;
            v218 = v60;
            v61 = v24;
            v62 = *(v56 + 56);
            sub_1E139D580(v59, v60);
            v62(0, 0, &v220, &v216, 0, v57, v56);
            v24 = v61;
            swift_unknownObjectRelease();
            sub_1E139D53C(v217, v218);
          }
        }
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v63 = *(v1 + 24);
        v64 = swift_getObjectType();
        (*(v63 + 144))(0x6973616863727570, 0xEA0000000000676ELL, v64, v63);
LABEL_67:
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v35 = sub_1E15E3D5C(*(v1 + 184) == 1);
      if (v36)
      {
        v37 = v35;
        v38 = v36;
        v202 = v22;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v39 = v37;
          v40 = v33;
          v41 = *(v1 + 24);
          v204 = v24;
          v42 = swift_getObjectType();
          v43 = *(v1 + 130);
          v214 = *(v1 + 126);
          v215 = v43;
          v44 = *(v1 + 104);
          v45 = *(v1 + 112);
          LOWORD(v216) = *(v1 + 96);
          v217 = v44;
          v218 = v45;
          v46 = *(v41 + 24);
          sub_1E139D580(v44, v45);
          v194 = v42;
          v197 = v41;
          v33 = v40;
          v37 = v39;
          v24 = v204;
          v46(v208, v33, v39, v38, &v214, 0, 0, &v216, v194, v197);
          swift_unknownObjectRelease();
          sub_1E139D53C(v217, v218);
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v47 = v37;
          v48 = v24;
          v49 = *(v1 + 24);
          v50 = swift_getObjectType();
          v216 = v208;
          v217 = v33;

          MEMORY[0x1E68FECA0](8236, 0xE200000000000000);
          MEMORY[0x1E68FECA0](v47, v38);

          v51 = *(v49 + 128);
          v52 = v49;
          v24 = v48;
          v51(v216, v217, v50, v52);
          swift_unknownObjectRelease();
        }

        else
        {
        }

        v22 = v202;
      }

      else
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v95 = *(v1 + 24);
          v96 = swift_getObjectType();
          v97 = *(v1 + 104);
          v98 = *(v1 + 112);
          LOWORD(v216) = *(v1 + 96);
          v217 = v97;
          v218 = v98;
          v99 = v24;
          v100 = *(v95 + 32);
          sub_1E139D580(v97, v98);
          v100(v208, v33, 0, 0, &v216, v96, v95);
          v24 = v99;
          swift_unknownObjectRelease();
          sub_1E139D53C(v217, v218);
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v101 = *(v1 + 24);
          v102 = swift_getObjectType();
          v103 = v24;
          v104 = *(v101 + 128);

          v104(v208, v33, v102, v101);
          v24 = v103;
          swift_unknownObjectRelease();
        }
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v105 = *(v1 + 24);
        v106 = swift_getObjectType();
        (*(v105 + 144))(0x6269726373627573, 0xE900000000000065, v106, v105);
        goto LABEL_67;
      }
    }

LABEL_68:
    v117 = sub_1E15E3E0C();
    if (!v4 || (*(v4 + 122) & 1) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_70;
  }

  if (v34 != 2)
  {
    if (v4)
    {
      v65 = *(v4 + 88);
      if (*(v65 + 16))
      {

        v66 = sub_1E1595560(10);
        if (v67)
        {
          v201 = v33;
          v68 = (*(v65 + 56) + 16 * v66);
          v69 = *v68;
          v70 = v68[1];

          swift_beginAccess();
          v205 = v24;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v71 = v69;
            v72 = *(v1 + 24);
            v73 = swift_getObjectType();
            v74 = *(v1 + 130);
            v214 = *(v1 + 126);
            v215 = v74;
            v75 = *(v1 + 104);
            v76 = *(v1 + 112);
            LOWORD(v216) = *(v1 + 96);
            v217 = v75;
            v218 = v76;
            v77 = *(v72 + 24);
            sub_1E139D580(v75, v76);
            v195 = v73;
            v198 = v72;
            v69 = v71;
            v24 = v205;
            v77(v208, v33, v71, v70, &v214, 0, 0, &v216, v195, v198);
            swift_unknownObjectRelease();
            sub_1E139D53C(v217, v218);
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            v78 = *(v1 + 24);
            v79 = swift_getObjectType();
            v216 = v208;
            v217 = v33;

            MEMORY[0x1E68FECA0](8236, 0xE200000000000000);
            MEMORY[0x1E68FECA0](v69, v70);

            v80 = *(v78 + 128);
            v81 = v78;
            v24 = v205;
            v80(v216, v217, v79, v81);
            swift_unknownObjectRelease();
            goto LABEL_101;
          }

LABEL_99:
          v33 = v201;
          goto LABEL_101;
        }
      }
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v107 = *(v1 + 24);
      v108 = swift_getObjectType();
      v109 = *(v1 + 104);
      v110 = *(v1 + 112);
      LOWORD(v216) = *(v1 + 96);
      v217 = v109;
      v218 = v110;
      v111 = v24;
      v112 = *(v107 + 32);
      sub_1E139D580(v109, v110);
      v112(v208, v33, 0, 0, &v216, v108, v107);
      v24 = v111;
      swift_unknownObjectRelease();
      sub_1E139D53C(v217, v218);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v113 = *(v1 + 24);
      v114 = swift_getObjectType();
      v115 = v24;
      v116 = *(v113 + 128);

      v116(v208, v33, v114, v113);
      v24 = v115;
      goto LABEL_67;
    }

    goto LABEL_68;
  }

  if (!v4)
  {
    goto LABEL_88;
  }

  v53 = *(v4 + 16);
  if (v53 != 4 && (sub_1E145769C(v53, 2u) & 1) != 0)
  {
    v201 = v33;
    if (*(v1 + 40))
    {
      v54 = *(v1 + 96);
    }

    else
    {
      v54 = 5;
    }

    v152 = *(v1 + 97);
    v154 = *(v1 + 104);
    v153 = *(v1 + 112);
    sub_1E139D580(v154, v153);
    swift_beginAccess();
    v206 = v24;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v155 = *(v1 + 24);
      v156 = swift_getObjectType();
      LOBYTE(v216) = v54;
      BYTE1(v216) = v152;
      v217 = v154;
      v218 = v153;
      v157 = *(v155 + 32);
      sub_1E139D580(v154, v153);
      v158 = v155;
      v24 = v206;
      v157(v208, v201, 0, 0, &v216, v156, v158);
      swift_unknownObjectRelease();
      sub_1E139D53C(v217, v218);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v159 = *(v1 + 24);
      v160 = swift_getObjectType();
      v200 = *(v159 + 128);
      v33 = v201;

      v161 = v159;
      v24 = v206;
      v200(v208, v201, v160, v161);
      sub_1E139D53C(v154, v153);
      swift_unknownObjectRelease();
      goto LABEL_101;
    }

    sub_1E139D53C(v154, v153);
    goto LABEL_99;
  }

  v82 = *(v4 + 88);
  if (!*(v82 + 16))
  {
LABEL_88:
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v140 = *(v1 + 24);
      v141 = swift_getObjectType();
      v142 = *(v1 + 104);
      v143 = *(v1 + 112);
      LOWORD(v216) = *(v1 + 96);
      v217 = v142;
      v218 = v143;
      v144 = v24;
      v145 = *(v140 + 32);
      sub_1E139D580(v142, v143);
      v145(v208, v33, 0, 0, &v216, v141, v140);
      v24 = v144;
      swift_unknownObjectRelease();
      sub_1E139D53C(v217, v218);
    }

    goto LABEL_68;
  }

  v83 = sub_1E1595560(4);
  if ((v84 & 1) == 0)
  {

    goto LABEL_88;
  }

  v85 = (*(v82 + 56) + 16 * v83);
  v86 = *v85;
  v87 = v85[1];

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v88 = *(v1 + 24);
    v199 = v86;
    v89 = v24;
    v90 = swift_getObjectType();
    v91 = *(v1 + 130);
    v214 = *(v1 + 126);
    v215 = v91;
    v92 = *(v1 + 104);
    v93 = *(v1 + 112);
    LOWORD(v216) = *(v1 + 96);
    v217 = v92;
    v218 = v93;
    v203 = v22;
    v94 = *(v88 + 24);
    sub_1E139D580(v92, v93);
    v196 = v90;
    v24 = v89;
    v94(v208, v33, v199, v87, &v214, 0, 0, &v216, v196, v88);
    v22 = v203;

    swift_unknownObjectRelease();
    sub_1E139D53C(v217, v218);
  }

  else
  {
  }

LABEL_101:
  v117 = sub_1E15E3E0C();
  if ((*(v4 + 122) & 1) == 0)
  {
    goto LABEL_102;
  }

LABEL_70:
  if (!*(v1 + 200))
  {
    goto LABEL_102;
  }

  v118 = *(v1 + 208);
  v119 = swift_getObjectType();
  (*(v118 + 16))(&v216, v119, v118);
  if (v219 >> 60 == 1)
  {
    if (v216)
    {
      if (*(v1 + 216) != 1)
      {
        v146 = *(v1 + 97);
        v148 = *(v1 + 104);
        v147 = *(v1 + 112);
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v149 = *(v1 + 24);
          v150 = swift_getObjectType();
          LOBYTE(v211) = 5;
          HIBYTE(v211) = v146;
          v212 = v148;
          v213 = v147;
          v151 = *(v149 + 32);
          sub_1E139D580(v148, v147);
          v151(v208, v33, 0, 0, &v211, v150, v149);
          swift_unknownObjectRelease();
        }

        else
        {
          sub_1E139D580(v148, v147);
        }

        sub_1E139D53C(v148, v147);
        v117 = 0;
        goto LABEL_126;
      }

      v133 = *v24;
      if (v133 >> 6 == 2)
      {
        v164 = *(v4 + 80);
        if (*(v164 + 16))
        {
          v165 = v33;
          v166 = *v22;
          sub_1E1361A40(*v22, v133);

          v167 = sub_1E1595560(15);
          if (v168)
          {
            v169 = (*(v164 + 56) + 16 * v167);
            v138 = *v169;
            v139 = v169[1];

            sub_1E1361A60(v166, v133);
            v33 = v165;
            goto LABEL_112;
          }

          sub_1E1361A60(v166, v133);
          v33 = v165;
        }
      }

      else if (!(v133 >> 6))
      {
        v134 = *(v4 + 80);
        if (*(v134 + 16))
        {

          v135 = sub_1E1595560(16);
          if (v136)
          {
            v137 = (*(v134 + 56) + 16 * v135);
            v138 = *v137;
            v139 = v137[1];

LABEL_112:

            v170 = *(v1 + 97);
            if (v170 == 3 || v170 == 6)
            {
              swift_beginAccess();
              if (swift_unknownObjectWeakLoadStrong())
              {
                v175 = *(v1 + 24);
                v176 = swift_getObjectType();
                v177 = *(v1 + 97);
                LOBYTE(v211) = 0;
                HIBYTE(v211) = v177;
                v212 = 0;
                v213 = 0;
                (*(v175 + 48))(v138, v139, &v211, v176, v175);
LABEL_134:
                swift_unknownObjectRelease();

                goto LABEL_125;
              }
            }

            else
            {
              if (v170 == 8)
              {
                swift_beginAccess();
                if (swift_unknownObjectWeakLoadStrong())
                {
                  v171 = *(v1 + 24);
                  v207 = swift_getObjectType();
                  v172 = *(v1 + 97);
                  if (qword_1ECEB11D8 != -1)
                  {
                    swift_once();
                  }

                  v173 = qword_1ECEB95F0;
                  v174 = objc_opt_self();
                  LOBYTE(v211) = 0;
                  HIBYTE(v211) = v172;
                  v212 = v173;
                  v213 = [v174 whiteColor];
                  (*(v171 + 48))(v138, v139, &v211, v207, v171);

                  swift_unknownObjectRelease();
                  sub_1E139D53C(v212, v213);
                  goto LABEL_126;
                }

                goto LABEL_135;
              }

              swift_beginAccess();
              if (swift_unknownObjectWeakLoadStrong())
              {
                v187 = *(v1 + 24);
                v188 = v33;
                v189 = swift_getObjectType();
                v190 = *(v1 + 104);
                v191 = *(v1 + 112);
                v211 = *(v1 + 96);
                v212 = v190;
                v213 = v191;
                v192 = *(v187 + 48);
                sub_1E139D580(v190, v191);
                v193 = v189;
                v33 = v188;
                v192(v138, v139, &v211, v193, v187);
                goto LABEL_134;
              }
            }

LABEL_135:

            goto LABEL_126;
          }
        }
      }

      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
LABEL_126:
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v183 = *(v1 + 24);
          v184 = swift_getObjectType();
          (*(v183 + 128))(v208, v33, v184, v183);
          swift_unknownObjectRelease();
        }

        else
        {
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_103;
        }

        v185 = *(v1 + 24);
        v186 = swift_getObjectType();
        (*(v185 + 144))(0x726564726F657270, 0xEA00000000006465, v186, v185);
        goto LABEL_131;
      }

      v178 = *(v1 + 24);
      v179 = swift_getObjectType();
      v180 = *(v1 + 104);
      v181 = *(v1 + 112);
      v211 = *(v1 + 96);
      v212 = v180;
      v213 = v181;
      v182 = *(v178 + 32);
      sub_1E139D580(v180, v181);
      v182(v208, v33, 0, 0, &v211, v179, v178);
      swift_unknownObjectRelease();
LABEL_125:
      sub_1E139D53C(v212, v213);
      goto LABEL_126;
    }

LABEL_102:

    goto LABEL_103;
  }

  if (!(v219 >> 60))
  {

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v120 = *(v1 + 24);
      v121 = swift_getObjectType();
      v122 = *(v1 + 124);
      v209 = *(v1 + 120);
      v210 = v122;
      v123 = *(v1 + 104);
      v124 = *(v1 + 112);
      v211 = *(v1 + 96);
      v212 = v123;
      v213 = v124;
      v125 = *(v120 + 56);
      sub_1E139D580(v123, v124);
      v125(0, 0, &v209, &v211, 0, v121, v120);
      swift_unknownObjectRelease();
      sub_1E139D53C(v212, v213);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v126 = *(v1 + 24);
      v127 = swift_getObjectType();
      v128._countAndFlagsBits = 0xD00000000000001CLL;
      v128._object = 0x80000001E1B69170;
      v129._countAndFlagsBits = 0;
      v129._object = 0xE000000000000000;
      v130 = localizedString(_:comment:)(v128, v129);
      (*(v126 + 128))(v130._countAndFlagsBits, v130._object, v127, v126);
      swift_unknownObjectRelease();
    }

    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_103;
    }

    v131 = *(v1 + 24);
    v132 = swift_getObjectType();
    (*(v131 + 144))(0x676E6964616F6CLL, 0xE700000000000000, v132, v131);
LABEL_131:
    swift_unknownObjectRelease();
    goto LABEL_103;
  }

  sub_1E139CEA8(&v216);
LABEL_103:
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v162 = *(v1 + 24);
  v163 = swift_getObjectType();
  (*(v162 + 16))(v117, v163, v162);
  return swift_unknownObjectRelease();
}

uint64_t sub_1E15E5CE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 112))(v2, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v2 + 24);
    v7 = swift_getObjectType();
    (*(v6 + 104))(v2, sel_offerButtonTapped, v7, v6);
    swift_unknownObjectRelease();
  }

  return _s11AppStoreKit38ArcadeSubscriptionOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
}

uint64_t sub_1E15E5DD4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, unsigned int *a6)
{
  v7 = v6;
  v71 = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2C98);
  v69 = *(v13 - 8);
  v70 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v62 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0);
  v65 = *(v15 - 8);
  v66 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v62 - v16;
  LODWORD(v16) = a4[1];
  v62 = *a4;
  v63 = v16;
  v17 = a4[2];
  v18 = a4[3];
  v19 = a4[4];
  v20 = a4[5];
  v21 = *a6 | (*(a6 + 2) << 32);
  *(v7 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 184) = 0;
  *(v7 + 192) = -64;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  *(v7 + 88) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB9490);
  v67 = a1;

  sub_1E1AF416C();
  sub_1E1308EC0(&v74, v7 + 48);
  v24 = v62;
  v23 = v63;
  *(v7 + 126) = v62;
  *(v7 + 127) = v23;
  *(v7 + 128) = v17;
  *(v7 + 129) = v18;
  *(v7 + 130) = v19;
  *(v7 + 131) = v20;
  if (v21 == 3)
  {
    v73[0] = v24;
    v73[1] = v23;
    v73[2] = v17;
    v73[3] = v18;
    v73[4] = v19;
    v73[5] = v20;
    sub_1E148BBAC(v73, &v74, v22);
    LOBYTE(v21) = v74;
    v25.i32[0] = *(&v74 + 1);
    v26 = vmovl_u8(v25).u64[0];
    LOBYTE(v27) = BYTE5(v74);
  }

  else
  {
    v28 = vdupq_n_s64(v21);
    v26 = vmovn_s32(vuzp1q_s32(vshlq_u64(v28, xmmword_1E1B04480), vshlq_u64(v28, xmmword_1E1B04470)));
    v27 = v21 >> 40;
  }

  *(v7 + 120) = v21;
  *(v7 + 121) = vuzp1_s8(v26, v26).u32[0];
  *(v7 + 125) = v27;
  v29 = v67;
  if (!v67)
  {
    v32 = 0;
    v31 = 16;
    v33 = 3;
    goto LABEL_8;
  }

  v30 = *(v67 + 96);
  v31 = *(v67 + 97);
  v33 = *(v67 + 104);
  v32 = *(v67 + 112);
  sub_1E139D580(v33, v32);
  if (v30 == 7)
  {
LABEL_8:
    v30 = 0;
  }

  if (v31 == 16)
  {
    v34 = 0;
  }

  else
  {
    v34 = v31;
  }

  if (v33 == 3)
  {
    v35 = 0;
  }

  else
  {
    v35 = v33;
  }

  *(v7 + 96) = v30;
  *(v7 + 97) = v34;
  if (v33 == 3)
  {
    v36 = 0;
  }

  else
  {
    v36 = v32;
  }

  *(v7 + 104) = v35;
  *(v7 + 112) = v36;
  v75 = type metadata accessor for Restrictions();
  v76 = &protocol witness table for Restrictions;
  sub_1E1AF421C();
  sub_1E1AF55EC();
  sub_1E1308EC0(&v74, v7 + 144);
  type metadata accessor for ArcadeSubscriptionManager();
  sub_1E1AF55EC();
  v37 = v74;
  *(v7 + 136) = v74;
  v38 = v37 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v39 = *v38;
  v40 = *(v7 + 184);
  v41 = *(v38 + 8);
  *(v7 + 184) = *v38;
  LOBYTE(v38) = *(v7 + 192);
  *(v7 + 192) = v41;
  sub_1E1361A40(v39, v41);
  sub_1E1361A60(v40, v38);
  type metadata accessor for ASKBagContract();
  sub_1E1AF55EC();
  if (qword_1EE1E2FF8 != -1)
  {
    swift_once();
  }

  v42 = v64;
  sub_1E1AF52FC();
  v43 = v66;
  sub_1E1AF532C();

  (*(v65 + 8))(v42, v43);
  *(v7 + 216) = v72;
  if (v29)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94B0);

    sub_1E1AF55EC();
    v44 = *(&v74 + 1);
    ObjectType = swift_getObjectType();
    v46 = *(v29 + 32);
    *&v74 = *(v29 + 24);
    *(&v74 + 1) = v46;
    v47 = *(v44 + 56);

    v48 = v47(&v74, ObjectType, v44);
    v50 = v49;

    *(v7 + 200) = v48;
    *(v7 + 208) = v50;
    v51 = swift_getObjectType();
    v52 = swift_allocObject();
    swift_weakInit();
    v53 = *(v50 + 72);

    v53(v7, sub_1E15E6618, v52, v51, v50);

    swift_unknownObjectRelease();
  }

  else
  {
    *(v7 + 200) = 0;
    *(v7 + 208) = 0;
  }

  v54 = *(v7 + 136);
  v55 = swift_allocObject();
  swift_weakInit();
  v56 = *&v54[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_stateLock];
  swift_retain_n();
  v57 = v54;

  [v56 lock];
  sub_1E15F6384(v7, sub_1E15E65A4, v55, v57);
  [v56 unlock];

  v58 = *(v7 + 72);
  v59 = *(v7 + 80);
  __swift_project_boxed_opaque_existential_1Tm((v7 + 48), v58);
  (*(v59 + 16))(v58, v59);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2CA0);
  sub_1E15E65B4();
  sub_1E1AF3CDC();
  v60 = v68;
  sub_1E1AF3CFC();

  __swift_destroy_boxed_opaque_existential_1(&v74);
  (*(v69 + 8))(v60, v70);
  return v7;
}

unint64_t sub_1E15E65B4()
{
  result = qword_1EE1E3C48;
  if (!qword_1EE1E3C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB2CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E3C48);
  }

  return result;
}

JSValue __swiftcall OnDeviceAdvertFetchResponse.makeValue(in:)(JSContext in)
{
  v2 = v1;
  v4 = *(v1 + 8);
  v5 = *(v2 + 24);
  v6 = *(v2 + 40);
  v7 = *(v2 + 152);
  v8 = objc_opt_self();
  result.super.isa = [v8 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  isa = result.super.isa;
  if (v4)
  {

    v11 = [v8 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (!v11)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    sub_1E1AF6C5C();
  }

  if (!v5)
  {
LABEL_8:
    if (v6)
    {
      OnDeviceAdvert.makeValue(in:)(in);
      sub_1E1AF6C5C();
    }

    if (v7 > 2)
    {
      return isa;
    }

    v13 = [v8 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v13)
    {
      sub_1E1AF6C5C();
      return isa;
    }

    goto LABEL_15;
  }

  v12 = [v8 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (v12)
  {
    sub_1E1AF6C5C();
    goto LABEL_8;
  }

LABEL_17:
  __break(1u);
  return result;
}

__n128 OnDeviceAdvertFetchResponse.init(clientRequestId:iAdId:ad:failureReason:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a6;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  v8 = *(a5 + 80);
  *(a7 + 96) = *(a5 + 64);
  *(a7 + 112) = v8;
  *(a7 + 128) = *(a5 + 96);
  *(a7 + 144) = *(a5 + 112);
  v9 = *(a5 + 16);
  *(a7 + 32) = *a5;
  *(a7 + 48) = v9;
  result = *(a5 + 32);
  v11 = *(a5 + 48);
  *(a7 + 64) = result;
  *(a7 + 80) = v11;
  *(a7 + 152) = v7;
  return result;
}

uint64_t OnDeviceAdvertFetchResponse.clientRequestId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t OnDeviceAdvertFetchResponse.iAdId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t OnDeviceAdvertFetchResponse.ad.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v4 = *(v1 + 128);
  v12 = *(v1 + 112);
  v3 = v12;
  v13 = v4;
  v14 = *(v1 + 144);
  v5 = v14;
  v6 = *(v1 + 48);
  v11[0] = *(v1 + 32);
  v7 = *(v1 + 64);
  v8 = *(v1 + 80);
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v2;
  *a1 = v11[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  return sub_1E15E6A70(v11, v10);
}

uint64_t OnDeviceAdFetchFailReason.rawValue.getter()
{
  v1 = 0x74756F656D6974;
  if (*v0 != 1)
  {
    v1 = 0x64417963696C6F70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6961764164416F6ELL;
  }
}

uint64_t sub_1E15E6A70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB68D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

AppStoreKit::OnDeviceAdFetchFailReason_optional __swiftcall OnDeviceAdFetchFailReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1E15E6B40(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x74756F656D6974;
  if (v2 != 1)
  {
    v4 = 0x64417963696C6F70;
    v3 = 0xEC000000706F7244;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6961764164416F6ELL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xED0000656C62616CLL;
  }

  v7 = 0xE700000000000000;
  v8 = 0x74756F656D6974;
  if (*a2 != 1)
  {
    v8 = 0x64417963696C6F70;
    v7 = 0xEC000000706F7244;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6961764164416F6ELL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xED0000656C62616CLL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

unint64_t sub_1E15E6C60()
{
  result = qword_1ECEB68D8;
  if (!qword_1ECEB68D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB68D8);
  }

  return result;
}

uint64_t sub_1E15E6CB4()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E15E6D6C()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E15E6E10()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E15E6ED0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000656C62616CLL;
  v4 = 0xE700000000000000;
  v5 = 0x74756F656D6974;
  if (v2 != 1)
  {
    v5 = 0x64417963696C6F70;
    v4 = 0xEC000000706F7244;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6961764164416F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit14OnDeviceAdvertVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy153_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1E15E6F90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 153))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1E15E6FEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 152) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 153) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 153) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t AdProcessingPipelineProxy.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t AdProcessingPipelineProxy.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

uint64_t sub_1E15E70BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_1E15E70F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (*(v5 + 16))
  {
    v10 = *(v5 + 24);
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 8);
    swift_unknownObjectRetain();
    v13 = v12(a3, a4, ObjectType, v10);
    if (v13)
    {
      v14 = v13[15];
      v15 = v13[16];
      __swift_project_boxed_opaque_existential_1Tm(v13 + 12, v14);
      v16 = (*(v15 + 8))(a1, a2, a5 & 1, v14, v15);
      swift_unknownObjectRelease();

      return v16;
    }

    else
    {
      sub_1E13EBC74();
      swift_allocError();
      *v19 = 1;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1E13EBC74();
    swift_allocError();
    *v18 = 0;
    return swift_willThrow();
  }
}

uint64_t AdProcessingPipelineProxy.JSAdvertProcessingPipelineProxyError.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

uint64_t AdProcessingPipelineProxy.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_1E15E7354()
{
  result = qword_1ECEB68E0;
  if (!qword_1ECEB68E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB68E0);
  }

  return result;
}

uint64_t PersonalizationData.msoContext.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1E13BBA90(v2, v3);
}

__n128 PersonalizationData.msoContext.setter(uint64_t a1)
{
  sub_1E13BBAE0(*v1, *(v1 + 8));
  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  return result;
}

double static PersonalizationData.empty.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t PersonalizationDataProvider.__allocating_init(dataSources:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1E15E8690(a1);

  return v2;
}

uint64_t PersonalizationDataProvider.init(dataSources:)(uint64_t a1)
{
  v1 = sub_1E15E8690(a1);

  return v1;
}

unint64_t sub_1E15E7560(char *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CC0;
  *(inited + 32) = v1;
  v3 = sub_1E13C4918(inited);
  swift_setDeallocating();
  v4 = sub_1E15E75E8(v3);

  return v4;
}

unint64_t sub_1E15E75E8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 24);

  v5 = sub_1E15E7BAC(v4, a1, sub_1E15E7E20, sub_1E15E7E20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB68E8);
  v19 = 0u;
  v20 = 0u;
  result = sub_1E1AF582C();
  v7 = result;
  if (*(v5 + 2))
  {
    v8 = 0;
    v9 = 1 << v5[32];
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v5 + 7);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = v11;
LABEL_11:
      v11 = (v13 - 1) & v13;
      v15 = *(v2 + 16);
      if (*(v15 + 16))
      {
        result = sub_1E15954C8(*(*(v5 + 6) + (__clz(__rbit64(v13)) | (v8 << 6))));
        if (v16)
        {
          v17 = *(v15 + 56);
          *(swift_allocObject() + 16) = *(v17 + 16 * result);
          *(&v20 + 1) = sub_1E1AF470C();
          v21 = MEMORY[0x1E69AB218];
          __swift_allocate_boxed_opaque_existential_0(&v19);
          swift_unknownObjectRetain_n();
          sub_1E1AF46FC();
          sub_1E15E89B0();
          v18 = sub_1E1AF585C();

          swift_unknownObjectRelease();

          result = __swift_destroy_boxed_opaque_existential_1(&v19);
          v7 = v18;
        }
      }
    }

    while (1)
    {
      v14 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v14 >= v12)
      {
        goto LABEL_14;
      }

      v13 = *&v5[8 * v14 + 56];
      ++v8;
      if (v13)
      {
        v8 = v14;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return v7;
  }

  return result;
}

uint64_t sub_1E15E7804(char *a1)
{
  v2 = v1;
  v4 = sub_1E1AEF55C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = *a1;
  v18[3] = type metadata accessor for PersonalizationDataProvider();
  v18[0] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB68F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CC0;
  *(inited + 32) = 0xD00000000000003ALL;
  *(inited + 40) = 0x80000001E1B692A0;
  *(inited + 48) = v8;

  v10 = sub_1E15A12C4(inited);
  swift_setDeallocating();
  sub_1E1308058(inited + 32, &qword_1ECEB6900);
  if (qword_1ECEB1108 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE1D2488;
  sub_1E13BFF54(v18, v17);
  v12 = v11;
  sub_1E14C6870(v10);

  sub_1E1AEF51C();
  sub_1E1308058(v18, &qword_1ECEB2DF0);
  v13 = [objc_opt_self() defaultCenter];
  v14 = sub_1E1AEF4FC();
  [v13 postNotification_];

  LOBYTE(v18[0]) = v8;
  sub_1E1AF35BC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1E15E7A58(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 32))(&v6, ObjectType, a2);
  v5 = v6;
  return sub_1E15E7804(&v5);
}

uint64_t PersonalizationDataProvider.deinit()
{

  return v0;
}

uint64_t PersonalizationDataProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_1E15E7B3C(uint64_t a1, uint64_t a2)
{

  return sub_1E15E7BAC(a1, a2, sub_1E15E82B4, sub_1E15E82B4);
}

void *sub_1E15E7BAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v15 = swift_slowAlloc();

    v13 = sub_1E15E7D88(v15, v10, a2, a1, a4);

    MEMORY[0x1E6901640](v15, -1, -1);
  }

  return v13;
}

void *sub_1E15E7D88(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

uint64_t sub_1E15E7E20(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_38:
    v28 = 0;
    v29 = v4 + 56;
    v30 = 1 << *(v4 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v56 = 0;
    v58 = v31 & *(v4 + 56);
    v50 = (v30 + 63) >> 6;
    v32 = a4 + 56;
LABEL_42:
    while (v58)
    {
      v33 = __clz(__rbit64(v58));
      v58 &= v58 - 1;
LABEL_49:
      v54 = v33 | (v28 << 6);
      v36 = *(*(v4 + 48) + v54);
      sub_1E1AF762C();
      if (v36)
      {
        v37 = 7304045;
      }

      else
      {
        v37 = 1701736302;
      }

      if (v36)
      {
        v38 = 0xE300000000000000;
      }

      else
      {
        v38 = 0xE400000000000000;
      }

      sub_1E1AF5F0C();

      result = sub_1E1AF767C();
      v39 = a4;
      v40 = -1 << *(a4 + 32);
      v41 = result & ~v40;
      if ((*(v32 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
      {
        v42 = ~v40;
        while (1)
        {
          v43 = *(*(v39 + 48) + v41) ? 7304045 : 1701736302;
          v44 = *(*(v39 + 48) + v41) ? 0xE300000000000000 : 0xE400000000000000;
          if (v43 == v37 && v44 == v38)
          {
            break;
          }

          v46 = sub_1E1AF74AC();

          if (v46)
          {
            goto LABEL_71;
          }

          v41 = (v41 + 1) & v42;
          v39 = a4;
          if (((*(v32 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
          {
            v4 = a3;
            goto LABEL_42;
          }
        }

LABEL_71:
        *(v52 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v54;
        v47 = __OFADD__(v56++, 1);
        v4 = a3;
        if (v47)
        {
          __break(1u);
LABEL_74:
          v5 = v56;
          goto LABEL_75;
        }
      }
    }

    v34 = v28;
    while (1)
    {
      v28 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v28 >= v50)
      {
        goto LABEL_74;
      }

      v35 = *(v29 + 8 * v28);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v58 = (v35 - 1) & v35;
        goto LABEL_49;
      }
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v9 = *(a4 + 56);
    v7 = a4 + 56;
    v8 = v9;
    v10 = 1 << *(v7 - 24);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v53 = v11 & v8;
    v48 = (v10 + 63) >> 6;
    v49 = v7;
    v57 = a3 + 56;
LABEL_6:
    while (v53)
    {
      v12 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      v13 = v12 | (v6 << 6);
      v4 = a3;
      v14 = a4;
LABEL_13:
      v17 = *(*(v14 + 48) + v13);
      sub_1E1AF762C();
      if (v17)
      {
        v18 = 7304045;
      }

      else
      {
        v18 = 1701736302;
      }

      if (v17)
      {
        v19 = 0xE300000000000000;
      }

      else
      {
        v19 = 0xE400000000000000;
      }

      sub_1E1AF5F0C();

      result = sub_1E1AF767C();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      v4 = 1 << v21;
      if (((1 << v21) & *(v57 + 8 * (v21 >> 6))) != 0)
      {
        v55 = v5;
        v23 = ~v20;
        while (1)
        {
          v24 = *(*(a3 + 48) + v21) ? 7304045 : 1701736302;
          v25 = *(*(a3 + 48) + v21) ? 0xE300000000000000 : 0xE400000000000000;
          if (v24 == v18 && v25 == v19)
          {
            break;
          }

          v27 = sub_1E1AF74AC();

          if (v27)
          {
            goto LABEL_35;
          }

          v21 = (v21 + 1) & v23;
          v22 = v21 >> 6;
          v4 = 1 << v21;
          if ((*(v57 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
          {
            v5 = v55;
            goto LABEL_6;
          }
        }

LABEL_35:
        v52[v22] |= v4;
        v5 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          __break(1u);
          goto LABEL_38;
        }
      }
    }

    v15 = v6;
    v4 = a3;
    v14 = a4;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v48)
      {
LABEL_75:

        return sub_1E19B7EF8(v52, a2, v5, v4);
      }

      v16 = *(v49 + 8 * v6);
      ++v15;
      if (v16)
      {
        v53 = (v16 - 1) & v16;
        v13 = __clz(__rbit64(v16)) | (v6 << 6);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E15E82B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_1E1AF762C();

      sub_1E1AF5F0C();
      v26 = sub_1E1AF767C();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_1E1AF74AC() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_1E19B812C(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_1E1AF762C();

      sub_1E1AF5F0C();
      v39 = sub_1E1AF767C();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_1E1AF74AC() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E15E8690(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3640);
  swift_allocObject();
  v1[4] = sub_1E1AF35CC();
  v4 = *(a1 + 16);
  if (v4)
  {
    v31 = a1;
    v5 = (a1 + 32);
    v6 = MEMORY[0x1E69E7CC8];
    v7 = *(a1 + 16);
    while (1)
    {
      v32 = *v5;
      ObjectType = swift_getObjectType();
      v9 = *(*(&v32 + 1) + 32);
      swift_unknownObjectRetain();
      v9(&v34, ObjectType, *(&v32 + 1));
      v10 = v34;
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v6;
      v12 = sub_1E15954C8(v10);
      v14 = v6[2];
      v15 = (v13 & 1) == 0;
      v16 = __OFADD__(v14, v15);
      v17 = v14 + v15;
      if (v16)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        result = sub_1E1AF757C();
        __break(1u);
        return result;
      }

      v18 = v13;
      if (v6[3] < v17)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v22 = v12;
      sub_1E1418AAC();
      v12 = v22;
      v6 = v33;
      if ((v18 & 1) == 0)
      {
LABEL_11:
        v6[(v12 >> 6) + 8] |= 1 << v12;
        *(v6[6] + v12) = v10;
        *(v6[7] + 16 * v12) = v32;
        swift_unknownObjectRelease();
        v20 = v6[2];
        v16 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v16)
        {
          goto LABEL_21;
        }

        v6[2] = v21;
        goto LABEL_4;
      }

LABEL_3:
      *(v6[7] + 16 * v12) = v32;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
LABEL_4:
      ++v5;
      if (!--v7)
      {
        v2 = v1;
        v1[2] = v6;

        v1[3] = sub_1E13C445C(v23);
        v24 = (v31 + 40);
        do
        {
          v25 = *v24;
          v26 = swift_getObjectType();
          v27 = *(v25 + 16);
          swift_unknownObjectRetain();

          v27(v28, &protocol witness table for PersonalizationDataProvider, v26, v25);
          swift_unknownObjectRelease();
          v24 += 2;
          --v4;
        }

        while (v4);
        return v2;
      }
    }

    sub_1E168DAB0(v17, isUniquelyReferenced_nonNull_native);
    v12 = sub_1E15954C8(v10);
    if ((v18 & 1) != (v19 & 1))
    {
      goto LABEL_22;
    }

LABEL_10:
    if ((v18 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_3;
  }

  v1[2] = MEMORY[0x1E69E7CC8];

  v1[3] = sub_1E13C445C(v29);
  return v2;
}

uint64_t sub_1E15E8948(_OWORD *a1)
{
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  return (*(v3 + 40))(v7, ObjectType, v3);
}

unint64_t sub_1E15E89B0()
{
  result = qword_1ECEB68F0;
  if (!qword_1ECEB68F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB68E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB68F0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit10MSOContextVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E15E8B8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_1E1AF649C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_1E154B56C(0, 0, v4, &unk_1E1B1CEF0, v6);
}

uint64_t sub_1E15E8C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E15E8CB8, 0, 0);
}

uint64_t sub_1E15E8CB8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_1E15E8DAC;

    return sub_1E15E9460();
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1E15E8DAC(char a1)
{
  v2 = *(*v1 + 56);
  *(*v1 + 80) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1E15E8EC4, v2, 0);
}

uint64_t sub_1E15E8EC4()
{
  if (*(v0 + 80) == 1)
  {
    v1 = sub_1E15E8F48;
  }

  else
  {

    v1 = sub_1E15E90F0;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1E15E8F48()
{
  sub_1E1AF644C();
  *(v0 + 72) = sub_1E1AF643C();
  v2 = sub_1E1AF63CC();

  return MEMORY[0x1EEE6DFA0](sub_1E15E8FDC, v2, v1);
}

uint64_t sub_1E15E8FDC()
{
  v1 = *(v0 + 56);

  v2 = [objc_opt_self() defaultCenter];
  sub_1E15EC5C8();
  sub_1E1AF6A5C();

  return MEMORY[0x1EEE6DFA0](sub_1E15E9088, v1, 0);
}

uint64_t sub_1E15E9088()
{

  return MEMORY[0x1EEE6DFA0](sub_1E15E90F0, 0, 0);
}

uint64_t sub_1E15E9118(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1E15E91AC;

  return sub_1E15E9460();
}

uint64_t sub_1E15E91AC(char a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1E15E92AC, 0, 0);
}

uint64_t Restrictions.deinit()
{
  v1 = *(v0 + 120);
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_10:

    swift_defaultActor_destroy();
    return v0;
  }

  v2 = sub_1E1AF71CC();
  if (!v2)
  {
    goto LABEL_10;
  }

LABEL_3:
  result = objc_opt_self();
  if (v2 >= 1)
  {
    v4 = result;

    v5 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1E68FFD80](v5, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v5 + 32);
        swift_unknownObjectRetain();
      }

      ++v5;
      v7 = [v4 defaultCenter];
      [v7 removeObserver_];
      swift_unknownObjectRelease();
    }

    while (v2 != v5);

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t Restrictions.__deallocating_deinit()
{
  Restrictions.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E15E9460()
{
  *(v1 + 584) = v0;
  sub_1E1AF389C();
  *(v1 + 592) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E15E94F0, v0, 0);
}

uint64_t sub_1E15E94F0()
{
  v1 = *(v0 + 584);
  if (*(v1 + 128))
  {
    if (qword_1EE1D27D0 != -1)
    {
      swift_once();
      v1 = *(v0 + 584);
    }

    v2 = sub_1E1AF591C();
    __swift_project_value_buffer(v2, qword_1EE215498);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    *(v0 + 72) = type metadata accessor for Restrictions();
    *(v0 + 48) = v1;

    sub_1E1AF385C();
    sub_1E13E44F8(v0 + 48);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    v3 = *(v0 + 8);

    return v3(0);
  }

  else
  {
    *(v1 + 128) = 1;
    if (qword_1EE1D27D0 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 584);
    v6 = sub_1E1AF591C();
    *(v0 + 600) = v6;
    *(v0 + 608) = __swift_project_value_buffer(v6, qword_1EE215498);
    *(v0 + 616) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    v7 = *(sub_1E1AF38EC() - 8);
    *(v0 + 624) = *(v7 + 72);
    *(v0 + 744) = *(v7 + 80);
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v8 = type metadata accessor for Restrictions();
    *(v0 + 632) = v8;
    *(v0 + 40) = v8;
    *(v0 + 16) = v5;

    sub_1E1AF385C();
    sub_1E13E44F8(v0 + 16);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    return MEMORY[0x1EEE6DFA0](sub_1E15E98BC, 0, 0);
  }
}

uint64_t sub_1E15E98BC()
{
  v1 = objc_opt_self();
  v0[80] = v1;
  v2 = [v1 sharedConnection];
  if (v2)
  {
    v5 = v2;
    v6 = [v2 effectiveValueForSetting_];

    if (v6)
    {
      v7 = [v6 integerValue];
    }

    else
    {
      v7 = 1000;
    }

    v0[81] = v7;
    v3 = v0[73];
    v2 = sub_1E15E999C;
    v4 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1E15E999C()
{
  v1 = v0[81];
  sub_1E1AF690C();
  v0[82] = 0;
  v2 = v0[70];
  v0[83] = v2;
  if (v1 != v2)
  {
    v3 = v0[81];
    v6 = v0[79];
    v4 = v0[73];
    sub_1E15EAD60(v3);
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v0[49] = v6;
    v0[46] = v4;

    sub_1E1AF385C();
    sub_1E13E44F8((v0 + 46));
    sub_1E1AF387C();
    v0[10] = v3;
    v0[13] = MEMORY[0x1E69E6530];
    sub_1E1AF385C();
    sub_1E13E44F8((v0 + 10));
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();
  }

  return MEMORY[0x1EEE6DFA0](sub_1E15E9B84, 0, 0);
}

uint64_t sub_1E15E9B84()
{
  v1 = [*(v0 + 640) sharedConnection];
  if (v1)
  {
    v4 = v1;
    v5 = *(v0 + 584);
    *(v0 + 753) = [v1 isOnDeviceAppInstallationAllowed];

    v1 = sub_1E15E9C20;
    v2 = v5;
    v3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E15E9C20()
{
  v1 = *(v0 + 753);
  v2 = *(v0 + 656);
  sub_1E1AF690C();
  *(v0 + 672) = v2;
  if (v1 == *(v0 + 748))
  {
    v5 = *(v0 + 648) != *(v0 + 664);
  }

  else
  {
    v3 = *(v0 + 753);
    v7 = *(v0 + 632);
    v4 = *(v0 + 584);
    sub_1E15EAF18(v3);
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    *(v0 + 136) = v7;
    *(v0 + 112) = v4;

    sub_1E1AF385C();
    sub_1E13E44F8(v0 + 112);
    sub_1E1AF387C();
    *(v0 + 144) = v3;
    *(v0 + 168) = MEMORY[0x1E69E6370];
    sub_1E1AF385C();
    sub_1E13E44F8(v0 + 144);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    v5 = 1;
  }

  *(v0 + 754) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E15E9E24, 0, 0);
}

uint64_t sub_1E15E9E24()
{
  v1 = [*(v0 + 640) sharedConnection];
  if (v1)
  {
    v4 = v1;
    v5 = *(v0 + 584);
    *(v0 + 755) = [v1 isAppRemovalAllowed];

    v1 = sub_1E15E9EC0;
    v2 = v5;
    v3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E15E9EC0()
{
  v1 = *(v0 + 755);
  v2 = *(v0 + 672);
  sub_1E1AF690C();
  *(v0 + 680) = v2;
  if (v1 == *(v0 + 752))
  {
    v5 = *(v0 + 754);
  }

  else
  {
    v3 = *(v0 + 755);
    v7 = *(v0 + 632);
    v4 = *(v0 + 584);
    sub_1E15EAF18(v3);
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    *(v0 + 200) = v7;
    *(v0 + 176) = v4;

    sub_1E1AF385C();
    sub_1E13E44F8(v0 + 176);
    sub_1E1AF387C();
    *(v0 + 208) = v3;
    *(v0 + 232) = MEMORY[0x1E69E6370];
    sub_1E1AF385C();
    sub_1E13E44F8(v0 + 208);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    v5 = 1;
  }

  *(v0 + 756) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E15EA0B8, 0, 0);
}

uint64_t sub_1E15EA0B8()
{
  v1 = *(v0 + 584);
  *(v0 + 757) = [objc_opt_self() isRunningInStoreDemoMode];

  return MEMORY[0x1EEE6DFA0](sub_1E15EA138, v1, 0);
}

uint64_t sub_1E15EA138()
{
  v1 = *(v0 + 757);
  v2 = *(v0 + 680);
  sub_1E1AF690C();
  *(v0 + 688) = v2;
  if (v1 == *(v0 + 749))
  {
    v5 = *(v0 + 756);
  }

  else
  {
    v3 = *(v0 + 757);
    v7 = *(v0 + 632);
    v4 = *(v0 + 584);
    sub_1E15EAF18(v3);
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    *(v0 + 240) = v4;
    *(v0 + 264) = v7;

    sub_1E1AF385C();
    sub_1E13E44F8(v0 + 240);
    sub_1E1AF387C();
    *(v0 + 296) = MEMORY[0x1E69E6370];
    *(v0 + 272) = v3;
    sub_1E1AF385C();
    sub_1E13E44F8(v0 + 272);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    v5 = 1;
  }

  *(v0 + 758) = v5;
  *(v0 + 696) = *(*(v0 + 584) + 112);

  return MEMORY[0x1EEE6DFA0](sub_1E15EA338, 0, 0);
}

uint64_t sub_1E15EA338()
{
  v1 = [*(*(v0 + 696) + 16) ams_activeiTunesAccount];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 ams_isManagedAppleID];
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 759) = v3;
  v4 = *(v0 + 584);

  return MEMORY[0x1EEE6DFA0](sub_1E15EA3DC, v4, 0);
}