__n128 TSContentLanguage.Models.ListStyleType.init<A>(object:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_dynamicCast())
  {
    v23 = v53;
    v24 = v54;
    v25 = v55;
    v19 = v49;
    v20 = v50;
    v21 = v51;
    v22 = v52;
    v15 = v45;
    v16 = v46;
    v17 = v47;
    v18 = v48;
    sub_101148C74(&v15);
  }

  else
  {
    if (!swift_dynamicCast())
    {
      sub_1005BC6F0(&v59);
      goto LABEL_7;
    }

    v25 = v55;
    v26 = v56;
    v27 = v57;
    v28 = v58;
    v21 = v51;
    v22 = v52;
    v23 = v53;
    v24 = v54;
    v17 = v47;
    v18 = v48;
    v19 = v49;
    v20 = v50;
    v15 = v45;
    v16 = v46;
    sub_101148D24(&v15);
  }

  v42 = v27;
  v43 = v28;
  v44 = v29;
  v38 = v23;
  v39 = v24;
  v40 = v25;
  v41 = v26;
  v34 = v19;
  v35 = v20;
  v36 = v21;
  v37 = v22;
  v30 = v15;
  v31 = v16;
  v32 = v17;
  v33 = v18;
  v74 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v30, *&v6);
  v71 = v42;
  v72 = v43;
  v73 = v44;
  v67 = v38;
  v68 = v39;
  v69 = v40;
  v70 = v41;
  v63 = v34;
  v64 = v35;
  v65 = v36;
  v66 = v37;
  v59 = v30;
  v60 = v31;
  v61 = v32;
  v62 = v33;
LABEL_7:
  (*(*(a2 - 8) + 8))(a1, a2, v74.recordType._object);
  v8 = v72;
  *(a3 + 192) = v71;
  *(a3 + 208) = v8;
  *(a3 + 224) = v73;
  v9 = v68;
  *(a3 + 128) = v67;
  *(a3 + 144) = v9;
  v10 = v70;
  *(a3 + 160) = v69;
  *(a3 + 176) = v10;
  v11 = v64;
  *(a3 + 64) = v63;
  *(a3 + 80) = v11;
  v12 = v66;
  *(a3 + 96) = v65;
  *(a3 + 112) = v12;
  v13 = v60;
  *a3 = v59;
  *(a3 + 16) = v13;
  result = v62;
  *(a3 + 32) = v61;
  *(a3 + 48) = result;
  return result;
}

Swift::Int sub_101148F34()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_101148FFC()
{
  String.hash(into:)();
}

Swift::Int sub_1011490B0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_101149174@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101149E88(*a1);
  *a2 = result;
  return result;
}

void sub_1011491A4(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x736B72616DLL;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564695F65707974;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x656C797473;
    v2 = 0xE500000000000000;
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

uint64_t sub_101149228()
{
  v1 = 0x736B72616DLL;
  v2 = 0x6564695F65707974;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 0x656C797473;
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

unint64_t sub_1011492A8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_101149E88(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1011492D0(uint64_t a1)
{
  v2 = sub_10114AB5C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10114930C(uint64_t a1)
{
  v2 = sub_10114AB5C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 TSContentLanguage.Models.ListStyleType.init(from:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_101149ED4(a1, v11);
  if (!v2)
  {
    v5 = v11[13];
    *(a2 + 192) = v11[12];
    *(a2 + 208) = v5;
    *(a2 + 224) = v12;
    v6 = v11[9];
    *(a2 + 128) = v11[8];
    *(a2 + 144) = v6;
    v7 = v11[11];
    *(a2 + 160) = v11[10];
    *(a2 + 176) = v7;
    v8 = v11[5];
    *(a2 + 64) = v11[4];
    *(a2 + 80) = v8;
    v9 = v11[7];
    *(a2 + 96) = v11[6];
    *(a2 + 112) = v9;
    v10 = v11[1];
    *a2 = v11[0];
    *(a2 + 16) = v10;
    result = v11[3];
    *(a2 + 32) = v11[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t TSContentLanguage.Models.ListStyleType.encode(to:)(void *a1)
{
  v4 = sub_1005B981C(&qword_101A2B5B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v37[-v9];
  v11 = *(v1 + 208);
  v53[12] = *(v1 + 192);
  v53[13] = v11;
  v54 = *(v1 + 224);
  v12 = *(v1 + 144);
  v53[8] = *(v1 + 128);
  v53[9] = v12;
  v13 = *(v1 + 176);
  v53[10] = *(v1 + 160);
  v53[11] = v13;
  v14 = *(v1 + 80);
  v53[4] = *(v1 + 64);
  v53[5] = v14;
  v15 = *(v1 + 112);
  v53[6] = *(v1 + 96);
  v53[7] = v15;
  v16 = *(v1 + 16);
  v53[0] = *v1;
  v53[1] = v16;
  v17 = *(v1 + 48);
  v53[2] = *(v1 + 32);
  v53[3] = v17;
  v18 = sub_1007CE5F0(v53);
  if (v18)
  {
    if (v18 == 1)
    {
      v80 = v5;
      v20 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v53, v19);
      v21 = v20[11];
      v76 = v20[10];
      v77 = v21;
      v22 = v20[13];
      v78 = v20[12];
      v79 = v22;
      v23 = v20[7];
      v72 = v20[6];
      v73 = v23;
      v24 = v20[9];
      v74 = v20[8];
      v75 = v24;
      v25 = v20[3];
      v68 = v20[2];
      v69 = v25;
      v26 = v20[5];
      v70 = v20[4];
      v71 = v26;
      v27 = v20[1];
      v66 = *v20;
      v67 = v27;
      sub_100020E58(a1, a1[3]);
      sub_10114AB5C();
      dispatch thunk of Encoder.container<A>(keyedBy:)();
      v49 = v76;
      v50 = v77;
      v51 = v78;
      v52 = v79;
      v45 = v72;
      v46 = v73;
      v47 = v74;
      v48 = v75;
      v41 = v68;
      v42 = v69;
      v43 = v70;
      v44 = v71;
      v39 = v66;
      v40 = v67;
      v38 = 1;
      sub_10114ABB0();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v2)
      {
        return (*(v80 + 8))(v7, v4);
      }

      else
      {
        LOBYTE(v39) = 2;
        KeyedEncodingContainer.encode(_:forKey:)();
        v35 = v80;
        if (qword_1019F28D8 != -1)
        {
          swift_once();
        }

        *&v39 = static TSContentLanguage.Models.ListStyleType.version;
        v38 = 3;
        type metadata accessor for TSCLVersion();
        sub_100969804(&qword_101A00458);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        return (*(v35 + 8))(v7, v4);
      }
    }

    else
    {
      sub_100020E58(a1, a1[3]);
      dispatch thunk of Encoder.singleValueContainer()();
      sub_10002A948(&v39, *(&v40 + 1));
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      return sub_100005070(&v39);
    }
  }

  else
  {
    v80 = v5;
    v29 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v53, v19);
    v30 = v29[9];
    v63 = v29[8];
    v64 = v30;
    v65 = v29[10];
    v31 = v29[5];
    v59 = v29[4];
    v60 = v31;
    v32 = v29[7];
    v61 = v29[6];
    v62 = v32;
    v33 = v29[1];
    v55 = *v29;
    v56 = v33;
    v34 = v29[3];
    v57 = v29[2];
    v58 = v34;
    sub_100020E58(a1, a1[3]);
    sub_10114AB5C();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v47 = v63;
    v48 = v64;
    v49 = v65;
    v43 = v59;
    v44 = v60;
    v45 = v61;
    v46 = v62;
    v39 = v55;
    v40 = v56;
    v41 = v57;
    v42 = v58;
    v38 = 0;
    sub_10114AC04();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v2)
    {
      return (*(v80 + 8))(v10, v4);
    }

    else
    {
      LOBYTE(v39) = 2;
      KeyedEncodingContainer.encode(_:forKey:)();
      v36 = v80;
      if (qword_1019F28D8 != -1)
      {
        swift_once();
      }

      *&v39 = static TSContentLanguage.Models.ListStyleType.version;
      v38 = 3;
      type metadata accessor for TSCLVersion();
      sub_100969804(&qword_101A00458);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      return (*(v36 + 8))(v10, v4);
    }
  }
}

uint64_t static TSContentLanguage.Models.ListStyleType.__derived_enum_equals(_:_:)(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 208);
  v97[12] = *(a1 + 192);
  v97[13] = v3;
  v98 = *(a1 + 224);
  v4 = *(a1 + 144);
  v97[8] = *(a1 + 128);
  v97[9] = v4;
  v5 = *(a1 + 176);
  v97[10] = *(a1 + 160);
  v97[11] = v5;
  v6 = *(a1 + 80);
  v97[4] = *(a1 + 64);
  v97[5] = v6;
  v7 = *(a1 + 112);
  v97[6] = *(a1 + 96);
  v97[7] = v7;
  v8 = *(a1 + 16);
  v97[0] = *a1;
  v97[1] = v8;
  v9 = *(a1 + 48);
  v97[2] = *(a1 + 32);
  v97[3] = v9;
  v10 = sub_1007CE5F0(v97);
  if (!v10)
  {
    v39 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v97, *&v11);
    v40 = v39[9];
    v107 = v39[8];
    v108 = v40;
    v109 = v39[10];
    v41 = v39[5];
    v103 = v39[4];
    v104 = v41;
    v42 = v39[7];
    v105 = v39[6];
    v106 = v42;
    v43 = v39[1];
    v99 = *v39;
    v100 = v43;
    v44 = v39[3];
    v101 = v39[2];
    v102 = v44;
    v82 = *(a2 + 224);
    v45 = a2[13];
    v80 = a2[12];
    v81 = v45;
    v46 = a2[11];
    v78 = a2[10];
    v79 = v46;
    v47 = a2[9];
    v76 = a2[8];
    v77 = v47;
    v48 = a2[7];
    v74 = a2[6];
    v75 = v48;
    v49 = a2[5];
    v72 = a2[4];
    v73 = v49;
    v50 = a2[3];
    v70 = a2[2];
    v71 = v50;
    v51 = a2[1];
    v68 = *a2;
    v69 = v51;
    if (!sub_1007CE5F0(&v68))
    {
      v54 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v68, *&v52);
      v55 = v54[9];
      v91 = v54[8];
      v92 = v55;
      v93 = v54[10];
      v56 = v54[5];
      v87 = v54[4];
      v88 = v56;
      v57 = v54[7];
      v89 = v54[6];
      v90 = v57;
      v58 = v54[1];
      v83 = *v54;
      v84 = v58;
      v59 = v54[3];
      v85 = v54[2];
      v86 = v59;
      v38 = _s8Freeform17TSContentLanguageO6ModelsO14ListPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(&v99, &v83);
      return v38 & 1;
    }

LABEL_9:
    v38 = 0;
    return v38 & 1;
  }

  if (v10 != 1)
  {
    v60 = a2[13];
    v80 = a2[12];
    v81 = v60;
    v82 = *(a2 + 224);
    v61 = a2[9];
    v76 = a2[8];
    v77 = v61;
    v62 = a2[11];
    v78 = a2[10];
    v79 = v62;
    v63 = a2[5];
    v72 = a2[4];
    v73 = v63;
    v64 = a2[7];
    v74 = a2[6];
    v75 = v64;
    v65 = a2[1];
    v68 = *a2;
    v69 = v65;
    v66 = a2[3];
    v70 = a2[2];
    v71 = v66;
    if (sub_1007CE5F0(&v68) == 2)
    {
      v38 = 1;
      return v38 & 1;
    }

    goto LABEL_9;
  }

  v13 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v97, *&v11);
  v14 = v13[11];
  v109 = v13[10];
  v110 = v14;
  v15 = v13[13];
  v111 = v13[12];
  v112 = v15;
  v16 = v13[7];
  v105 = v13[6];
  v106 = v16;
  v17 = v13[9];
  v107 = v13[8];
  v108 = v17;
  v18 = v13[3];
  v101 = v13[2];
  v102 = v18;
  v19 = v13[5];
  v103 = v13[4];
  v104 = v19;
  v20 = v13[1];
  v99 = *v13;
  v100 = v20;
  v82 = *(a2 + 224);
  v21 = a2[13];
  v80 = a2[12];
  v81 = v21;
  v22 = a2[11];
  v78 = a2[10];
  v79 = v22;
  v23 = a2[9];
  v76 = a2[8];
  v77 = v23;
  v24 = a2[7];
  v74 = a2[6];
  v75 = v24;
  v25 = a2[5];
  v72 = a2[4];
  v73 = v25;
  v26 = a2[3];
  v70 = a2[2];
  v71 = v26;
  v27 = a2[1];
  v68 = *a2;
  v69 = v27;
  if (sub_1007CE5F0(&v68) != 1)
  {
    goto LABEL_9;
  }

  v30 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v68, *&v28);
  v31 = v30[11];
  v93 = v30[10];
  v94 = v31;
  v32 = v30[13];
  v95 = v30[12];
  v96 = v32;
  v33 = v30[7];
  v89 = v30[6];
  v90 = v33;
  v34 = v30[9];
  v91 = v30[8];
  v92 = v34;
  v35 = v30[3];
  v85 = v30[2];
  v86 = v35;
  v36 = v30[5];
  v87 = v30[4];
  v88 = v36;
  v37 = v30[1];
  v83 = *v30;
  v84 = v37;
  v38 = _s8Freeform17TSContentLanguageO6ModelsO17ScaffoldListStyleV23__derived_struct_equalsySbAG_AGtFZ_0(&v99, &v83);
  return v38 & 1;
}

uint64_t sub_101149C04(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 208);
  v111[12] = *(a1 + 192);
  v111[13] = v3;
  v112 = *(a1 + 224);
  v4 = *(a1 + 144);
  v111[8] = *(a1 + 128);
  v111[9] = v4;
  v5 = *(a1 + 176);
  v111[10] = *(a1 + 160);
  v111[11] = v5;
  v6 = *(a1 + 80);
  v111[4] = *(a1 + 64);
  v111[5] = v6;
  v7 = *(a1 + 112);
  v111[6] = *(a1 + 96);
  v111[7] = v7;
  v8 = *(a1 + 16);
  v111[0] = *a1;
  v111[1] = v8;
  v9 = *(a1 + 48);
  v111[2] = *(a1 + 32);
  v111[3] = v9;
  v10 = sub_1007CE5F0(v111);
  if (!v10)
  {
    v39 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v111, *&v11);
    v40 = v39[9];
    v91 = v39[8];
    v92 = v40;
    v93 = v39[10];
    v41 = v39[5];
    v87 = v39[4];
    v88 = v41;
    v42 = v39[7];
    v89 = v39[6];
    v90 = v42;
    v43 = v39[1];
    v83 = *v39;
    v84 = v43;
    v44 = v39[3];
    v85 = v39[2];
    v86 = v44;
    v82 = *(a2 + 224);
    v45 = a2[13];
    v80 = a2[12];
    v81 = v45;
    v46 = a2[11];
    v78 = a2[10];
    v79 = v46;
    v47 = a2[9];
    v76 = a2[8];
    v77 = v47;
    v48 = a2[7];
    v74 = a2[6];
    v75 = v48;
    v49 = a2[5];
    v72 = a2[4];
    v73 = v49;
    v50 = a2[3];
    v70 = a2[2];
    v71 = v50;
    v51 = a2[1];
    v68 = *a2;
    v69 = v51;
    if (!sub_1007CE5F0(&v68))
    {
      v61 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v68, *&v52);
      v62 = v61[9];
      v105 = v61[8];
      v106 = v62;
      v107 = v61[10];
      v63 = v61[5];
      v101 = v61[4];
      v102 = v63;
      v64 = v61[7];
      v103 = v61[6];
      v104 = v64;
      v65 = v61[1];
      v97 = *v61;
      v98 = v65;
      v66 = v61[3];
      v99 = v61[2];
      v100 = v66;
      v38 = _s8Freeform17TSContentLanguageO6ModelsO14ListPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(&v83, &v97);
      return v38 & 1;
    }

LABEL_6:
    v38 = 0;
    return v38 & 1;
  }

  if (v10 != 1)
  {
    v54 = a2[13];
    v80 = a2[12];
    v81 = v54;
    v82 = *(a2 + 224);
    v55 = a2[9];
    v76 = a2[8];
    v77 = v55;
    v56 = a2[11];
    v78 = a2[10];
    v79 = v56;
    v57 = a2[5];
    v72 = a2[4];
    v73 = v57;
    v58 = a2[7];
    v74 = a2[6];
    v75 = v58;
    v59 = a2[1];
    v68 = *a2;
    v69 = v59;
    v60 = a2[3];
    v70 = a2[2];
    v71 = v60;
    v38 = sub_1007CE5F0(&v68) == 2;
    return v38 & 1;
  }

  v13 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v111, *&v11);
  v14 = v13[11];
  v93 = v13[10];
  v94 = v14;
  v15 = v13[13];
  v95 = v13[12];
  v96 = v15;
  v16 = v13[7];
  v89 = v13[6];
  v90 = v16;
  v17 = v13[9];
  v91 = v13[8];
  v92 = v17;
  v18 = v13[3];
  v85 = v13[2];
  v86 = v18;
  v19 = v13[5];
  v87 = v13[4];
  v88 = v19;
  v20 = v13[1];
  v83 = *v13;
  v84 = v20;
  v82 = *(a2 + 224);
  v21 = a2[13];
  v80 = a2[12];
  v81 = v21;
  v22 = a2[11];
  v78 = a2[10];
  v79 = v22;
  v23 = a2[9];
  v76 = a2[8];
  v77 = v23;
  v24 = a2[7];
  v74 = a2[6];
  v75 = v24;
  v25 = a2[5];
  v72 = a2[4];
  v73 = v25;
  v26 = a2[3];
  v70 = a2[2];
  v71 = v26;
  v27 = a2[1];
  v68 = *a2;
  v69 = v27;
  if (sub_1007CE5F0(&v68) != 1)
  {
    goto LABEL_6;
  }

  v30 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v68, *&v28);
  v31 = v30[11];
  v107 = v30[10];
  v108 = v31;
  v32 = v30[13];
  v109 = v30[12];
  v110 = v32;
  v33 = v30[7];
  v103 = v30[6];
  v104 = v33;
  v34 = v30[9];
  v105 = v30[8];
  v106 = v34;
  v35 = v30[3];
  v99 = v30[2];
  v100 = v35;
  v36 = v30[5];
  v101 = v30[4];
  v102 = v36;
  v37 = v30[1];
  v97 = *v30;
  v98 = v37;
  v38 = _s8Freeform17TSContentLanguageO6ModelsO17ScaffoldListStyleV23__derived_struct_equalsySbAG_AGtFZ_0(&v83, &v97);
  return v38 & 1;
}

unint64_t sub_101149E88(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101877D10, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_101149ED4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v3 - 8);
  v42[4] = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v43 = v42 - v6;
  v7 = type metadata accessor for CodingUserInfoKey();
  v44 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v42 - v11;
  v13 = sub_1005B981C(&qword_101A2B610);
  v46 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v42 - v14;
  v16 = a1[3];
  v121 = a1;
  sub_100020E58(a1, v16);
  sub_10114AB5C();
  v17 = v47;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    v20 = v121;
    goto LABEL_4;
  }

  v42[2] = v9;
  v42[3] = v12;
  v47 = v7;
  LOBYTE(v91) = 2;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = v121;
  if (!v19)
  {
    goto LABEL_19;
  }

  if (v18 == 0xD00000000000002FLL && v19 == 0x800000010158A8A0)
  {

    goto LABEL_19;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
LABEL_19:
    type metadata accessor for TSCLVersion();
    LOBYTE(v76) = 3;
    sub_100969804(&qword_101A00400);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v38 = v91;
    if (v91)
    {
      if (qword_1019F28D8 != -1)
      {
        swift_once();
      }

      if (*(static TSContentLanguage.Models.ListStyleType.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v38[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
      {
        sub_1007C8648();
        swift_allocError();
        *v39 = xmmword_101463530;
        *(v39 + 16) = 0;
        swift_willThrow();

        goto LABEL_20;
      }
    }

    sub_100020E58(v20, v20[3]);
    v42[1] = dispatch thunk of Decoder.userInfo.getter();
    v90 = 0;
    sub_10114B154();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v70 = v84;
    v71 = v85;
    v72 = v86;
    v66 = v80;
    v67 = v81;
    v68 = v82;
    v69 = v83;
    v62 = v76;
    v63 = v77;
    v64 = v78;
    v65 = v79;
    if (sub_1007CE118(&v62) == 1)
    {
      v43 = v15;

      v99 = v84;
      v100 = v85;
      v101 = v86;
      v95 = v80;
      v96 = v81;
      v97 = v82;
      v98 = v83;
      v91 = v76;
      v92 = v77;
      v93 = v78;
      v94 = v79;
      sub_10000CAAC(&v91, &qword_101A005F0);
      v41 = v46;
      sub_100020E58(v20, v20[3]);
      dispatch thunk of Decoder.userInfo.getter();
      v90 = 1;
      sub_10114B1A8();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v72 = v86;
      v73 = v87;
      v74 = v88;
      v75 = v89;
      v68 = v82;
      v69 = v83;
      v70 = v84;
      v71 = v85;
      v64 = v78;
      v65 = v79;
      v66 = v80;
      v67 = v81;
      v62 = v76;
      v63 = v77;
      if (sub_10114B1FC(&v62) == 1)
      {

        (*(v41 + 8))(v43, v13);
        v101 = v86;
        v102 = v87;
        v103 = v88;
        v104 = v89;
        v97 = v82;
        v98 = v83;
        v99 = v84;
        v100 = v85;
        v93 = v78;
        v94 = v79;
        v95 = v80;
        v96 = v81;
        v91 = v76;
        v92 = v77;
        sub_10000CAAC(&v91, &qword_101A2B628);
        goto LABEL_27;
      }

      v58 = v86;
      v59 = v87;
      v60 = v88;
      v61 = v89;
      v54 = v82;
      v55 = v83;
      v56 = v84;
      v57 = v85;
      v50 = v78;
      v51 = v79;
      v52 = v80;
      v53 = v81;
      v48 = v76;
      v49 = v77;
      (*(v41 + 8))(v43, v13);
      v101 = v58;
      v102 = v59;
      v103 = v60;
      v104 = v61;
      v97 = v54;
      v98 = v55;
      v99 = v56;
      v100 = v57;
      v93 = v50;
      v94 = v51;
      v95 = v52;
      v96 = v53;
      v91 = v48;
      v92 = v49;
      sub_101148D24(&v91);
    }

    else
    {

      v56 = v84;
      v57 = v85;
      v58 = v86;
      v52 = v80;
      v53 = v81;
      v54 = v82;
      v55 = v83;
      v48 = v76;
      v49 = v77;
      v50 = v78;
      v51 = v79;
      (*(v46 + 8))(v15, v13);
      v99 = v56;
      v100 = v57;
      v101 = v58;
      v95 = v52;
      v96 = v53;
      v97 = v54;
      v98 = v55;
      v91 = v48;
      v92 = v49;
      v93 = v50;
      v94 = v51;
      sub_101148C74(&v91);
    }

    v118 = v103;
    v119 = v104;
    v120 = v105;
    v114 = v99;
    v115 = v100;
    v117 = v102;
    v116 = v101;
    v110 = v95;
    v111 = v96;
    v113 = v98;
    v112 = v97;
    v106 = v91;
    v107 = v92;
    v28 = v93;
    v27 = v94;
    goto LABEL_17;
  }

  sub_1007C8648();
  swift_allocError();
  v25[1] = 0;
  v25[2] = 0;
  *v25 = 0;
  swift_willThrow();
LABEL_20:
  (*(v46 + 8))(v15, v13);
LABEL_4:
  sub_100020E58(v20, v20[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  sub_100020E58(&v76, *(&v77 + 1));
  v21 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  if (v21 == 1701736302 && v22 == 0xE400000000000000)
  {

LABEL_16:
    sub_10114B128(&v91);
    sub_100005070(&v76);
    v118 = v103;
    v119 = v104;
    v120 = v105;
    v114 = v99;
    v115 = v100;
    v117 = v102;
    v116 = v101;
    v110 = v95;
    v111 = v96;
    v113 = v98;
    v112 = v97;
    v106 = v91;
    v107 = v92;
    v28 = v93;
    v27 = v94;
LABEL_17:
    v109 = v27;
    v108 = v28;
    result = sub_100005070(v20);
    v30 = v119;
    v31 = v45;
    *(v45 + 192) = v118;
    *(v31 + 208) = v30;
    *(v31 + 224) = v120;
    v32 = v115;
    *(v31 + 128) = v114;
    *(v31 + 144) = v32;
    v33 = v117;
    *(v31 + 160) = v116;
    *(v31 + 176) = v33;
    v34 = v111;
    *(v31 + 64) = v110;
    *(v31 + 80) = v34;
    v35 = v113;
    *(v31 + 96) = v112;
    *(v31 + 112) = v35;
    v36 = v107;
    *v31 = v106;
    *(v31 + 16) = v36;
    v37 = v109;
    *(v31 + 32) = v108;
    *(v31 + 48) = v37;
    return result;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
    goto LABEL_16;
  }

  sub_100005070(&v76);
LABEL_27:
  sub_1007C8648();
  swift_allocError();
  *v40 = xmmword_101478600;
  *(v40 + 16) = 0;
  swift_willThrow();
  return sub_100005070(v20);
}

unint64_t sub_10114AB5C()
{
  result = qword_101A2B5B8;
  if (!qword_101A2B5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B5B8);
  }

  return result;
}

unint64_t sub_10114ABB0()
{
  result = qword_101A2B5C0;
  if (!qword_101A2B5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B5C0);
  }

  return result;
}

unint64_t sub_10114AC04()
{
  result = qword_101A2B5C8;
  if (!qword_101A2B5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B5C8);
  }

  return result;
}

unint64_t sub_10114AC58(uint64_t a1)
{
  *(a1 + 8) = sub_10114AC88();
  result = sub_10114ACDC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10114AC88()
{
  result = qword_101A2B5D0;
  if (!qword_101A2B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B5D0);
  }

  return result;
}

unint64_t sub_10114ACDC()
{
  result = qword_101A2B5D8;
  if (!qword_101A2B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B5D8);
  }

  return result;
}

unint64_t sub_10114AD30(void *a1)
{
  a1[2] = sub_10114AD68();
  a1[3] = sub_10114ADBC();
  result = sub_10114AE10();
  a1[4] = result;
  return result;
}

unint64_t sub_10114AD68()
{
  result = qword_101A2B5E0;
  if (!qword_101A2B5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B5E0);
  }

  return result;
}

unint64_t sub_10114ADBC()
{
  result = qword_101A2B5E8;
  if (!qword_101A2B5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B5E8);
  }

  return result;
}

unint64_t sub_10114AE10()
{
  result = qword_101A2B5F0;
  if (!qword_101A2B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B5F0);
  }

  return result;
}

uint64_t sub_10114AE64(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10114AE7C(uint64_t a1)
{
  if ((*(a1 + 224) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 224) & 3;
  }
}

__n128 sub_10114AE98(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_10114AEE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 225))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 224);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10114AF2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 224) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 225) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 225) = 0;
    }

    if (a2)
    {
      *(result + 224) = -a2;
    }
  }

  return result;
}

uint64_t sub_10114AFAC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 168) = 0u;
    *(result + 184) = 0u;
    *(result + 200) = 0u;
    LOBYTE(a2) = 2;
    *(result + 216) = 0;
  }

  *(result + 224) = a2;
  return result;
}

unint64_t sub_10114B024()
{
  result = qword_101A2B5F8;
  if (!qword_101A2B5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B5F8);
  }

  return result;
}

unint64_t sub_10114B07C()
{
  result = qword_101A2B600;
  if (!qword_101A2B600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B600);
  }

  return result;
}

unint64_t sub_10114B0D4()
{
  result = qword_101A2B608;
  if (!qword_101A2B608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B608);
  }

  return result;
}

double sub_10114B128(uint64_t a1)
{
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 224) = 2;
  return result;
}

unint64_t sub_10114B154()
{
  result = qword_101A2B618;
  if (!qword_101A2B618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B618);
  }

  return result;
}

unint64_t sub_10114B1A8()
{
  result = qword_101A2B620;
  if (!qword_101A2B620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B620);
  }

  return result;
}

uint64_t sub_10114B1FC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 TSContentLanguage.Models.LayoutProperties.init(columns:continuous:margins:padding:shrinkToFit:verticalAlignment:verticalText:writingDirection:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, __int128 *a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, char a12)
{
  v13 = *a6;
  *&v20[22] = a6[1];
  *&v20[6] = v13;
  v20[38] = *(a6 + 32);
  v14 = *(a7 + 16);
  *&v19[7] = *a7;
  *&v19[23] = v14;
  *&v22[10] = *v20;
  *&v22[26] = *&v20[16];
  *&v22[49] = *v19;
  *&v22[65] = *&v19[16];
  *&v27[15] = *&v20[31];
  *v27 = *&v20[16];
  v26 = *v20;
  v19[39] = *(a7 + 32);
  *&v21 = a1;
  *(&v21 + 1) = a2;
  *v22 = a3;
  v22[8] = a4;
  v22[9] = a5;
  *&v22[41] = *&v20[31];
  *&v22[81] = *&v19[32];
  v22[89] = a8;
  v22[90] = a10;
  v22[91] = a11;
  v22[92] = a12;
  v23[0] = a1;
  v23[1] = a2;
  v23[2] = a3;
  v24 = a4;
  v25 = a5;
  v28 = *&v19[32];
  *&v27[39] = *&v19[16];
  *&v27[23] = *v19;
  v29 = a8;
  v30 = a10;
  v31 = a11;
  v32 = a12;
  sub_100BFE658(&v21, &v18);
  sub_100BFE6B4(v23);
  v15 = *&v22[64];
  *(a9 + 64) = *&v22[48];
  *(a9 + 80) = v15;
  *(a9 + 93) = *&v22[77];
  v16 = *v22;
  *a9 = v21;
  *(a9 + 16) = v16;
  result = *&v22[32];
  *(a9 + 32) = *&v22[16];
  *(a9 + 48) = result;
  return result;
}

id sub_10114B384()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.LayoutProperties.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.LayoutProperties.version.unsafeMutableAddressor()
{
  if (qword_1019F28E0 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.LayoutProperties.version;
}

id static TSContentLanguage.Models.LayoutProperties.version.getter()
{
  if (qword_1019F28E0 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.LayoutProperties.version;

  return v1;
}

uint64_t TSContentLanguage.Models.LayoutProperties.columns.getter()
{
  v1 = *v0;
  sub_10114B4F8(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));
  return v1;
}

uint64_t sub_10114B4F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_10114B50C(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_10114B50C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  return result;
}

uint64_t TSContentLanguage.Models.LayoutProperties.columns.setter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = sub_1007CEA10(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24));
  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return result;
}

__n128 TSContentLanguage.Models.LayoutProperties.margins.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 TSContentLanguage.Models.LayoutProperties.margins.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v3;
  *(v1 + 64) = *(a1 + 32);
  return result;
}

__n128 TSContentLanguage.Models.LayoutProperties.padding.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  result = *(v1 + 72);
  v4 = *(v1 + 88);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 TSContentLanguage.Models.LayoutProperties.padding.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 72) = *a1;
  *(v1 + 88) = v3;
  *(v1 + 104) = *(a1 + 32);
  return result;
}

unint64_t sub_10114B6F0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6564695F65707974;
    if (a1 != 8)
    {
      v5 = 0x6E6F6973726576;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 == 5)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0x6C61636974726576;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x736E6D756C6F63;
    v2 = 0x736E696772616DLL;
    v3 = 0x676E6964646170;
    if (a1 != 3)
    {
      v3 = 0x745F6B6E69726873;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6F756E69746E6F63;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10114B854(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10114B6F0(*a1);
  v5 = v4;
  if (v3 == sub_10114B6F0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10114B8DC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10114B6F0(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10114B940()
{
  sub_10114B6F0(*v0);
  String.hash(into:)();
}

Swift::Int sub_10114B994()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10114B6F0(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10114B9F4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10114C864(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10114BA24@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10114B6F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10114BA6C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10114C864(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10114BA94(uint64_t a1)
{
  v2 = sub_10114D344();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10114BAD0(uint64_t a1)
{
  v2 = sub_10114D344();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 TSContentLanguage.Models.LayoutProperties.init(from:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10114C8B0(a1, v7);
  if (!v2)
  {
    v5 = v8[0];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 93) = *(v8 + 13);
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t TSContentLanguage.Models.LayoutProperties.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A2B630);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-v7];
  sub_100020E58(a1, a1[3]);
  sub_10114D344();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *v12 = *v3;
  *&v12[9] = *(v3 + 9);
  v14 = 0;
  sub_10114D398();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v12[0] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v10 = *(v3 + 48);
  *v12 = *(v3 + 32);
  *&v12[16] = v10;
  v13 = *(v3 + 64);
  v14 = 2;
  sub_10114D3EC();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v11 = *(v3 + 88);
  *v12 = *(v3 + 72);
  *&v12[16] = v11;
  v13 = *(v3 + 104);
  v14 = 3;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v12[0] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v12[0] = *(v3 + 106);
  v14 = 5;
  sub_10114D440();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v12[0] = 6;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v12[0] = *(v3 + 108);
  v14 = 7;
  sub_10114D494();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v12[0] = 8;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F28E0 != -1)
  {
    swift_once();
  }

  *v12 = static TSContentLanguage.Models.LayoutProperties.version;
  v14 = 9;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t TSContentLanguage.Models.LayoutProperties.isEquivalent(to:)(uint64_t a1)
{
  if (!sub_1007C759C(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24)))
  {
    return 0;
  }

  v3 = *(v1 + 25);
  v4 = *(a1 + 25);
  if (v3 == 2)
  {
    if (v4 != 2)
    {
      return 0;
    }
  }

  else if (v4 == 2 || ((v3 ^ v4) & 1) != 0)
  {
    return 0;
  }

  if (*(v1 + 64) == 1)
  {
    if ((*(a1 + 64) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 64))
    {
      return 0;
    }

    v7 = *(v1 + 40);
    v9 = *(v1 + 48);
    v8 = *(v1 + 56);
    v10 = *(a1 + 40);
    v12 = *(a1 + 48);
    v11 = *(a1 + 56);
    result = sub_1007C87EC(*(v1 + 32), *(a1 + 32));
    if (!result)
    {
      return result;
    }

    result = sub_1007C87EC(v7, v10);
    if (!result)
    {
      return result;
    }

    result = sub_1007C87EC(v9, v12);
    if (!result)
    {
      return result;
    }

    result = sub_1007C87EC(v8, v11);
    if (!result)
    {
      return result;
    }
  }

  if (*(v1 + 104) == 1)
  {
    if ((*(a1 + 104) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 104))
    {
      return 0;
    }

    v14 = *(v1 + 80);
    v16 = *(v1 + 88);
    v15 = *(v1 + 96);
    v17 = *(a1 + 80);
    v19 = *(a1 + 88);
    v18 = *(a1 + 96);
    result = sub_1007C87EC(*(v1 + 72), *(a1 + 72));
    if (!result)
    {
      return result;
    }

    result = sub_1007C87EC(v14, v17);
    if (!result)
    {
      return result;
    }

    result = sub_1007C87EC(v16, v19);
    if (!result)
    {
      return result;
    }

    result = sub_1007C87EC(v15, v18);
    if (!result)
    {
      return result;
    }
  }

  v5 = *(v1 + 105);
  v6 = *(a1 + 105);
  if (v5 == 2)
  {
    if (v6 != 2)
    {
      return 0;
    }
  }

  else if (v6 == 2 || ((v5 ^ v6) & 1) != 0)
  {
    return 0;
  }

  v20 = *(v1 + 106);
  v21 = *(a1 + 106);
  if (v20 == 3)
  {
    if (v21 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v21 == 3)
    {
      return 0;
    }

    v22 = 0x6D6F74746F62;
    if (*(v1 + 106))
    {
      if (v20 == 1)
      {
        v23 = 0xE600000000000000;
        v24 = 0x7265746E6563;
      }

      else
      {
        v23 = 0xE300000000000000;
        v24 = 7368564;
      }
    }

    else
    {
      v23 = 0xE600000000000000;
      v24 = 0x6D6F74746F62;
    }

    if (*(a1 + 106))
    {
      if (v21 == 1)
      {
        v25 = 0xE600000000000000;
        v22 = 0x7265746E6563;
      }

      else
      {
        v25 = 0xE300000000000000;
        v22 = 7368564;
      }
    }

    else
    {
      v25 = 0xE600000000000000;
    }

    if (v24 == v22 && v23 == v25)
    {
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v27 = *(v1 + 107);
  v28 = *(a1 + 107);
  if (v27 == 2)
  {
    if (v28 != 2)
    {
      return 0;
    }
  }

  else if (v28 == 2 || ((v27 ^ v28) & 1) != 0)
  {
    return 0;
  }

  v29 = *(v1 + 108);
  v30 = *(a1 + 108);
  if (v29 == 3)
  {
    return v30 == 3;
  }

  if (v30 == 3)
  {
    return 0;
  }

  v31 = 0xED00007468676972;
  v32 = 0x5F6F745F7466656CLL;
  if (*(v1 + 108))
  {
    if (v29 == 1)
    {
      v33 = 0xE700000000000000;
      v34 = 0x6C61727574616ELL;
    }

    else
    {
      v34 = 0x6F745F7468676972;
      v33 = 0xED00007466656C5FLL;
    }
  }

  else
  {
    v34 = 0x5F6F745F7466656CLL;
    v33 = 0xED00007468676972;
  }

  if (v30)
  {
    if (v30 == 1)
    {
      v31 = 0xE700000000000000;
      v32 = 0x6C61727574616ELL;
    }

    else
    {
      v32 = 0x6F745F7468676972;
      v31 = 0xED00007466656C5FLL;
    }
  }

  if (v34 == v32 && v33 == v31)
  {

    return 1;
  }

  else
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v35 & 1;
  }
}

BOOL sub_10114C324(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[5];
  v10[4] = a1[4];
  v11[0] = v2;
  *(v11 + 13) = *(a1 + 93);
  v3 = a1[1];
  v10[0] = *a1;
  v10[1] = v3;
  v4 = a1[3];
  v10[2] = a1[2];
  v10[3] = v4;
  v5 = a2[1];
  v12[0] = *a2;
  v12[1] = v5;
  v6 = a2[2];
  v7 = a2[3];
  *&v13[13] = *(a2 + 93);
  v8 = a2[5];
  v12[4] = a2[4];
  *v13 = v8;
  v12[2] = v6;
  v12[3] = v7;
  return _s8Freeform17TSContentLanguageO6ModelsO16LayoutPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(v10, v12);
}

BOOL _s8Freeform17TSContentLanguageO6ModelsO16LayoutPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(a2 + 24);
  if (v3 == 255)
  {
    if (v4 != 255)
    {
      return 0;
    }

    goto LABEL_3;
  }

  if (v4 == 255)
  {
LABEL_8:
    sub_100BFE658(a2, v40);
    return 0;
  }

  v11 = *a1;
  v10 = *(a1 + 1);
  v12 = a1[2];
  v14 = *a2;
  v13 = *(a2 + 8);
  v15 = *(a2 + 16);
  if (!*(a1 + 24))
  {
    if (v4)
    {
      return 0;
    }

    if (*&v11 != v14)
    {
      goto LABEL_8;
    }

    if (v12)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if ((v15 & 1) != 0 || v10 != v13)
    {
      goto LABEL_8;
    }

LABEL_3:
    v5 = a1;
    sub_100BFE658(a2, v40);
    a1 = v5;
    goto LABEL_4;
  }

  if (v3 != 1)
  {
    if (v4 != 2 || *&v13 | v14 | v15)
    {
      return 0;
    }

    goto LABEL_3;
  }

  if (v4 != 1)
  {
    return 0;
  }

  if (*&v11 != v14)
  {
    return 0;
  }

  v16 = *(*&v10 + 16);
  if (v16 != *(*&v13 + 16))
  {
    return 0;
  }

  if (v16 && *&v10 != *&v13)
  {
    v17 = (*&v10 + 32);
    v18 = (*&v13 + 32);
    while (*v17 == *v18)
    {
      ++v17;
      ++v18;
      if (!--v16)
      {
        goto LABEL_21;
      }
    }

    return 0;
  }

LABEL_21:
  if (v12)
  {
    if (!v15)
    {
      return 0;
    }

    v19 = a1;
    v20 = sub_100673058(a1[2], v15);
    a1 = v19;
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

LABEL_4:
  v6 = *(a1 + 25);
  v7 = *(a2 + 25);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else
  {
    v8 = 0;
    if (v7 == 2 || ((v7 ^ v6) & 1) != 0)
    {
      return v8;
    }
  }

  if (a1[8])
  {
    if (!*(a2 + 64))
    {
      return 0;
    }
  }

  else
  {
    v8 = 0;
    if ((*(a2 + 64) & 1) != 0 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 2), *(a2 + 32)), vceqq_f64(*(a1 + 3), *(a2 + 48))), xmmword_10148D100)) & 0xF) != 0)
    {
      return v8;
    }
  }

  if (a1[13])
  {
    if (!*(a2 + 104))
    {
      return 0;
    }
  }

  else
  {
    v8 = 0;
    if ((*(a2 + 104) & 1) != 0 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 9), *(a2 + 72)), vceqq_f64(*(a1 + 11), *(a2 + 88))), xmmword_10148D100)) & 0xF) != 0)
    {
      return v8;
    }
  }

  v21 = *(a1 + 105);
  v22 = *(a2 + 105);
  if (v21 == 2)
  {
    if (v22 != 2)
    {
      return 0;
    }
  }

  else
  {
    v8 = 0;
    if (v22 == 2 || ((v22 ^ v21) & 1) != 0)
    {
      return v8;
    }
  }

  v23 = *(a1 + 106);
  v24 = *(a2 + 106);
  if (v23 == 3)
  {
    if (v24 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v24 == 3)
    {
      return 0;
    }

    v25 = 0x6D6F74746F62;
    if (*(a1 + 106))
    {
      if (v23 == 1)
      {
        v26 = 0xE600000000000000;
        v27 = 0x7265746E6563;
      }

      else
      {
        v26 = 0xE300000000000000;
        v27 = 7368564;
      }
    }

    else
    {
      v26 = 0xE600000000000000;
      v27 = 0x6D6F74746F62;
    }

    if (*(a2 + 106))
    {
      if (v24 == 1)
      {
        v28 = 0xE600000000000000;
        v25 = 0x7265746E6563;
      }

      else
      {
        v28 = 0xE300000000000000;
        v25 = 7368564;
      }
    }

    else
    {
      v28 = 0xE600000000000000;
    }

    v29 = a1;
    if (v27 == v25 && v26 == v28)
    {

      a1 = v29;
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      a1 = v29;
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v31 = *(a1 + 107);
  v32 = *(a2 + 107);
  if (v31 == 2)
  {
    if (v32 != 2)
    {
      return 0;
    }

    goto LABEL_78;
  }

  v8 = 0;
  if (v32 != 2 && ((v32 ^ v31) & 1) == 0)
  {
LABEL_78:
    v33 = *(a1 + 108);
    v34 = *(a2 + 108);
    if (v33 == 3)
    {
      return v34 == 3;
    }

    if (v34 != 3)
    {
      v35 = 0xED00007468676972;
      v36 = 0x5F6F745F7466656CLL;
      if (*(a1 + 108))
      {
        if (v33 == 1)
        {
          v37 = 0xE700000000000000;
          v38 = 0x6C61727574616ELL;
        }

        else
        {
          v38 = 0x6F745F7468676972;
          v37 = 0xED00007466656C5FLL;
        }
      }

      else
      {
        v38 = 0x5F6F745F7466656CLL;
        v37 = 0xED00007468676972;
      }

      if (v34)
      {
        if (v34 == 1)
        {
          v35 = 0xE700000000000000;
          v36 = 0x6C61727574616ELL;
        }

        else
        {
          v36 = 0x6F745F7468676972;
          v35 = 0xED00007466656C5FLL;
        }
      }

      if (v38 == v36 && v37 == v35)
      {

        return 1;
      }

      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v39)
      {
        return 1;
      }
    }

    return 0;
  }

  return v8;
}

unint64_t sub_10114C864(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101877D90, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10114C8B0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v75 = a2;
  v4 = sub_1005B981C(&qword_101A007D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v63 - v6;
  v110 = 1;
  v108 = 1;
  sub_100020E58(a1, a1[3]);
  sub_10114D344();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v82 = a1;
  if (v2)
  {
    v119 = v2;
LABEL_12:
    v76 = 0;
    v77 = 0uLL;
    v80 = 0uLL;
    v79 = 0;
    v81 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v78 = 3;
    v21 = -1;
    v22 = 2;
    v23 = 2;
    v24 = 2;
LABEL_13:
    sub_100005070(v82);
    *&v89 = v20;
    *(&v89 + 1) = v19;
    v90 = v18;
    v91 = v21;
    v92 = v23;
    v93 = v111;
    v94 = v112;
    v95 = v17;
    v96 = v81;
    v97 = v77;
    v98 = v110;
    *v99 = *v109;
    *&v99[3] = *&v109[3];
    v100 = v79;
    v101 = v80;
    v102 = v76;
    v103 = v108;
    v104 = v22;
    v105 = v78;
    v106 = v24;
    v107 = 3;
    return sub_100BFE6B4(&v89);
  }

  LOBYTE(v89) = 8;
  v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v10 = v4;
  v74 = v7;
  v11 = v5;
  if (v9)
  {
    if (v8 == 0xD000000000000031 && v9 == 0x800000010158A110)
    {
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        sub_1007C8648();
        v14 = swift_allocError();
        v15[1] = 0;
        v15[2] = 0;
        *v15 = 0;
        v119 = v14;
        swift_willThrow();
        (*(v5 + 8))(v74, v10);
        goto LABEL_12;
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v83) = 9;
  sub_100969804(&qword_101A00400);
  v16 = v74;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v26 = v89;
  if (v89)
  {
    if (qword_1019F28E0 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.LayoutProperties.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v26[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      v27 = swift_allocError();
      *v28 = xmmword_101463530;
      *(v28 + 16) = 0;
      v119 = v27;
      swift_willThrow();

      (*(v5 + 8))(v16, v10);
      goto LABEL_12;
    }

    v73 = v10;
  }

  else
  {
    v73 = v10;
  }

  v29 = a1;
  sub_100020E58(a1, a1[3]);
  v30 = dispatch thunk of Decoder.userInfo.getter();
  v31 = v74;
  v32 = sub_1007B98B8(0, v30, 0, 0);
  v70 = v33;
  *&v71 = v32;
  *(&v71 + 1) = v34;
  v72 = v35;

  sub_100020E58(a1, a1[3]);
  v36 = dispatch thunk of Decoder.userInfo.getter();
  v69 = sub_1007B9BBC(1, v36, 0, 0);

  sub_100020E58(a1, a1[3]);
  v37 = dispatch thunk of Decoder.userInfo.getter();
  sub_1007B9BE4(2, v37, 0, v113);
  v67 = v11;

  v68 = v113[0];
  v81 = v113[1];
  v38 = v113[3];
  *&v77 = v113[2];
  v39 = v114;
  v110 = v114;
  sub_100020E58(v29, v29[3]);
  v40 = dispatch thunk of Decoder.userInfo.getter();
  sub_1007B9BE4(3, v40, 0, &v115);
  *(&v77 + 1) = v38;

  v79 = v115;
  v80 = v116;
  v76 = v117;
  v41 = v118;
  v108 = v118;
  sub_100020E58(v29, v29[3]);
  v42 = dispatch thunk of Decoder.userInfo.getter();
  v43 = sub_1007B9BBC(4, v42, 0, 0);
  v119 = 0;
  v44 = v41;
  v66 = v43;

  sub_100020E58(v29, v29[3]);
  v45 = dispatch thunk of Decoder.userInfo.getter();
  v46 = v119;
  v47 = sub_1007B9ECC(5, v45, 0, 0);
  v119 = v46;
  v48 = v73;
  if (v46)
  {
    (*(v67 + 8))(v31, v73);

    v24 = 2;
    v78 = 3;
LABEL_25:
    v19 = *(&v71 + 1);
    v18 = v72;
    v20 = v71;
    v23 = v69;
    v21 = v70;
    v17 = v68;
    v22 = v66;
    goto LABEL_13;
  }

  v78 = v47;

  sub_100020E58(v29, v29[3]);
  v49 = dispatch thunk of Decoder.userInfo.getter();
  v50 = v119;
  v65 = sub_1007B9BBC(6, v49, 0, 0);
  v119 = v50;
  if (v50)
  {
    (*(v67 + 8))(v31, v48);

    v24 = 2;
    goto LABEL_25;
  }

  sub_100020E58(v82, v82[3]);
  v51 = dispatch thunk of Decoder.userInfo.getter();
  v52 = v119;
  v53 = sub_1007B9F10(7, v51, 0, 0);
  v119 = v52;
  if (v52)
  {
    (*(v67 + 8))(v74, v48);

    v19 = *(&v71 + 1);
    v18 = v72;
    v20 = v71;
    v23 = v69;
    v21 = v70;
    v17 = v68;
    v24 = v65;
    v22 = v66;
    goto LABEL_13;
  }

  v54 = v53;
  (*(v67 + 8))(v74, v48);

  v83 = v71;
  *&v84 = v72;
  BYTE8(v84) = v70;
  BYTE9(v84) = v69;
  *(&v84 + 10) = v111;
  HIWORD(v84) = v112;
  *&v85 = v68;
  *(&v85 + 1) = v81;
  v55 = v77;
  v86 = v77;
  v64 = v39;
  LOBYTE(v87) = v39;
  *(&v87 + 1) = *v109;
  DWORD1(v87) = *&v109[3];
  *(&v87 + 1) = v79;
  v88[0] = v80;
  v56 = v76;
  *&v88[1] = v76;
  BYTE8(v88[1]) = v44;
  v58 = v65;
  v57 = v66;
  BYTE9(v88[1]) = v66;
  BYTE10(v88[1]) = v78;
  BYTE11(v88[1]) = v65;
  BYTE12(v88[1]) = v54;
  sub_100BFE658(&v83, &v89);
  sub_100005070(v82);
  v89 = v71;
  v90 = v72;
  v91 = v70;
  v92 = v69;
  v93 = v111;
  v94 = v112;
  v95 = v68;
  v96 = v81;
  v97 = v55;
  v98 = v64;
  *v99 = *v109;
  *&v99[3] = *&v109[3];
  v100 = v79;
  v101 = v80;
  v102 = v56;
  v103 = v44;
  v104 = v57;
  v105 = v78;
  v106 = v58;
  v107 = v54;
  result = sub_100BFE6B4(&v89);
  v59 = v88[0];
  v60 = v75;
  v75[4] = v87;
  v60[5] = v59;
  *(v60 + 93) = *(v88 + 13);
  v61 = v84;
  *v60 = v83;
  v60[1] = v61;
  v62 = v86;
  v60[2] = v85;
  v60[3] = v62;
  return result;
}

unint64_t sub_10114D344()
{
  result = qword_101A2B638;
  if (!qword_101A2B638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B638);
  }

  return result;
}

unint64_t sub_10114D398()
{
  result = qword_101A2B640;
  if (!qword_101A2B640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B640);
  }

  return result;
}

unint64_t sub_10114D3EC()
{
  result = qword_101A2B648;
  if (!qword_101A2B648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B648);
  }

  return result;
}

unint64_t sub_10114D440()
{
  result = qword_101A2B650;
  if (!qword_101A2B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B650);
  }

  return result;
}

unint64_t sub_10114D494()
{
  result = qword_101A2B658;
  if (!qword_101A2B658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B658);
  }

  return result;
}

unint64_t sub_10114D4E8(uint64_t a1)
{
  result = sub_100B10494();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10114D510(void *a1)
{
  a1[2] = sub_100B2BB74();
  a1[3] = sub_100B2BC70();
  result = sub_10114D548();
  a1[4] = result;
  return result;
}

unint64_t sub_10114D548()
{
  result = qword_101A2B660;
  if (!qword_101A2B660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B660);
  }

  return result;
}

__n128 sub_10114D59C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 93) = *(a2 + 93);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10114D5C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 109))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 25);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10114D628(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 108) = 0;
    *(result + 104) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 109) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 109) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_10114D6B0()
{
  result = qword_101A2B668;
  if (!qword_101A2B668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B668);
  }

  return result;
}

unint64_t sub_10114D708()
{
  result = qword_101A2B670;
  if (!qword_101A2B670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B670);
  }

  return result;
}

unint64_t sub_10114D760()
{
  result = qword_101A2B678;
  if (!qword_101A2B678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B678);
  }

  return result;
}

id sub_10114D7DC()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.LayoutStyleType.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.LayoutStyleType.version.unsafeMutableAddressor()
{
  if (qword_1019F28E8 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.LayoutStyleType.version;
}

id static TSContentLanguage.Models.LayoutStyleType.version.getter()
{
  if (qword_1019F28E8 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.LayoutStyleType.version;

  return v1;
}

double TSContentLanguage.Models.LayoutStyleType.init(marks:)@<D0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[5];
  v15 = a1[4];
  *v16 = v3;
  *&v16[13] = *(a1 + 93);
  v4 = a1[1];
  v11 = *a1;
  v12 = v4;
  v5 = a1[3];
  v13 = a1[2];
  v14 = v5;
  sub_10114D97C(&v11);
  v6 = v17;
  a2[6] = *&v16[16];
  a2[7] = v6;
  a2[8] = v18[0];
  *(a2 + 142) = *(v18 + 14);
  v7 = v14;
  a2[2] = v13;
  a2[3] = v7;
  v8 = *v16;
  a2[4] = v15;
  a2[5] = v8;
  result = *&v11;
  v10 = v12;
  *a2 = v11;
  a2[1] = v10;
  return result;
}

double TSContentLanguage.Models.LayoutStyleType.init(style:)@<D0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[7];
  v18 = a1[6];
  v19 = v3;
  v20[0] = a1[8];
  *(v20 + 13) = *(a1 + 141);
  v4 = a1[3];
  v14 = a1[2];
  v15 = v4;
  v5 = a1[5];
  v16 = a1[4];
  v17 = v5;
  v6 = a1[1];
  v12 = *a1;
  v13 = v6;
  sub_10114DA18(&v12);
  v7 = v19;
  a2[6] = v18;
  a2[7] = v7;
  a2[8] = v20[0];
  *(a2 + 142) = *(v20 + 14);
  v8 = v15;
  a2[2] = v14;
  a2[3] = v8;
  v9 = v17;
  a2[4] = v16;
  a2[5] = v9;
  result = *&v12;
  v11 = v13;
  *a2 = v12;
  a2[1] = v11;
  return result;
}

double TSContentLanguage.Models.LayoutStyleType.init<A>(object:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (swift_dynamicCast())
  {
    v17 = v34;
    *v18 = *v35;
    *&v18[13] = *&v35[13];
    v13 = v30;
    v14 = v31;
    v15 = v32;
    v16 = v33;
    sub_10114D97C(&v13);
  }

  else
  {
    if (!swift_dynamicCast())
    {
      sub_1005BC604(&v38);
      goto LABEL_7;
    }

    *&v18[16] = *&v35[16];
    v19 = v36;
    v20[0] = v37[0];
    *(v20 + 13) = *(v37 + 13);
    v15 = v32;
    v16 = v33;
    v17 = v34;
    *v18 = *v35;
    v13 = v30;
    v14 = v31;
    sub_10114DA18(&v13);
  }

  v27 = *&v18[16];
  v28 = v19;
  v29[0] = v20[0];
  *(v29 + 14) = *(v20 + 14);
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = *v18;
  v21 = v13;
  v22 = v14;
  v47 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v21, *&v6);
  v44 = v27;
  v45 = v28;
  v46[0] = v29[0];
  *(v46 + 14) = *(v29 + 14);
  v40 = v23;
  v41 = v24;
  v42 = v25;
  v43 = v26;
  v38 = v21;
  v39 = v22;
LABEL_7:
  (*(*(a2 - 8) + 8))(a1, a2, v47.recordType._object);
  v8 = v45;
  a3[6] = v44;
  a3[7] = v8;
  a3[8] = v46[0];
  *(a3 + 142) = *(v46 + 14);
  v9 = v41;
  a3[2] = v40;
  a3[3] = v9;
  v10 = v43;
  a3[4] = v42;
  a3[5] = v10;
  result = *&v38;
  v12 = v39;
  *a3 = v38;
  a3[1] = v12;
  return result;
}

unint64_t sub_10114DBF4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10114E6D0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10114DC24@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10114E6D0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10114DC4C(uint64_t a1)
{
  v2 = sub_10114F36C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10114DC88(uint64_t a1)
{
  v2 = sub_10114F36C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double TSContentLanguage.Models.LayoutStyleType.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10114E71C(a1, v9);
  if (!v2)
  {
    v5 = v9[7];
    a2[6] = v9[6];
    a2[7] = v5;
    a2[8] = v10[0];
    *(a2 + 142) = *(v10 + 14);
    v6 = v9[3];
    a2[2] = v9[2];
    a2[3] = v6;
    v7 = v9[5];
    a2[4] = v9[4];
    a2[5] = v7;
    result = *v9;
    v8 = v9[1];
    *a2 = v9[0];
    a2[1] = v8;
  }

  return result;
}

uint64_t TSContentLanguage.Models.LayoutStyleType.encode(to:)(void *a1)
{
  v3 = sub_1005B981C(&qword_101A2B680);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v10 = v1[7];
  v41[6] = v1[6];
  v41[7] = v10;
  v42[0] = v1[8];
  *(v42 + 14) = *(v1 + 142);
  v11 = v1[3];
  v41[2] = v1[2];
  v41[3] = v11;
  v12 = v1[5];
  v41[4] = v1[4];
  v41[5] = v12;
  v13 = v1[1];
  v41[0] = *v1;
  v41[1] = v13;
  v14 = sub_1007CF090(v41);
  if (v14)
  {
    if (v14 == 1)
    {
      v31 = v4;
      v32 = v3;
      v16 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v41, v15);
      v17 = v16[7];
      v55 = v16[6];
      v56 = v17;
      v57[0] = v16[8];
      *(v57 + 13) = *(v16 + 141);
      v18 = v16[3];
      v51 = v16[2];
      v52 = v18;
      v19 = v16[5];
      v53 = v16[4];
      v54 = v19;
      v20 = v16[1];
      v49 = *v16;
      v50 = v20;
      sub_100020E58(a1, a1[3]);
      sub_10114F36C();
      dispatch thunk of Encoder.container<A>(keyedBy:)();
      v39[1] = v55;
      v39[2] = v56;
      v40[0] = v57[0];
      *(v40 + 13) = *(v57 + 13);
      v36 = v51;
      v37 = v52;
      v38 = v53;
      v39[0] = v54;
      v21 = v32;
      v34 = v49;
      v35 = v50;
      v33 = 1;
      sub_101146A4C();
      v22 = v58;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v22)
      {
        return (*(v31 + 8))(v6, v21);
      }

      else
      {
        LOBYTE(v34) = 2;
        KeyedEncodingContainer.encode(_:forKey:)();
        v29 = v31;
        if (qword_1019F28E8 != -1)
        {
          swift_once();
        }

        *&v34 = static TSContentLanguage.Models.LayoutStyleType.version;
        v33 = 3;
        type metadata accessor for TSCLVersion();
        sub_100969804(&qword_101A00458);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        return (*(v29 + 8))(v6, v21);
      }
    }

    else
    {
      sub_100020E58(a1, a1[3]);
      dispatch thunk of Encoder.singleValueContainer()();
      sub_10002A948(&v34, *(&v35 + 1));
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      return sub_100005070(&v34);
    }
  }

  else
  {
    v24 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v41, v15);
    v25 = v24[5];
    v47 = v24[4];
    v48[0] = v25;
    *(v48 + 13) = *(v24 + 93);
    v26 = v24[1];
    v43 = *v24;
    v44 = v26;
    v27 = v24[3];
    v45 = v24[2];
    v46 = v27;
    sub_100020E58(a1, a1[3]);
    sub_10114F36C();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v38 = v47;
    v39[0] = v48[0];
    *(v39 + 13) = *(v48 + 13);
    v34 = v43;
    v35 = v44;
    v36 = v45;
    v37 = v46;
    v33 = 0;
    sub_100B2BC70();
    v28 = v58;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v28)
    {
      LOBYTE(v34) = 2;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (qword_1019F28E8 != -1)
      {
        swift_once();
      }

      *&v34 = static TSContentLanguage.Models.LayoutStyleType.version;
      v33 = 3;
      type metadata accessor for TSCLVersion();
      sub_100969804(&qword_101A00458);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    return (*(v4 + 8))(v9, v3);
  }
}

BOOL static TSContentLanguage.Models.LayoutStyleType.__derived_enum_equals(_:_:)(_OWORD *a1, __int128 *a2)
{
  v3 = a1[7];
  v63[6] = a1[6];
  v63[7] = v3;
  v64[0] = a1[8];
  *(v64 + 14) = *(a1 + 142);
  v4 = a1[3];
  v63[2] = a1[2];
  v63[3] = v4;
  v5 = a1[5];
  v63[4] = a1[4];
  v63[5] = v5;
  v6 = a1[1];
  v63[0] = *a1;
  v63[1] = v6;
  v7 = sub_1007CF090(v63);
  if (!v7)
  {
    v27 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v63, *&v8);
    v28 = v27[5];
    v69 = v27[4];
    *v70 = v28;
    *&v70[13] = *(v27 + 93);
    v29 = v27[1];
    v65 = *v27;
    v66 = v29;
    v30 = v27[3];
    v67 = v27[2];
    v68 = v30;
    v31 = a2[1];
    v46 = *a2;
    v47 = v31;
    v32 = a2[5];
    v50 = a2[4];
    v51 = v32;
    v33 = a2[3];
    v48 = a2[2];
    v49 = v33;
    *(v54 + 14) = *(a2 + 142);
    v34 = a2[8];
    v53 = a2[7];
    v54[0] = v34;
    v52 = a2[6];
    if (!sub_1007CF090(&v46))
    {
      v37 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v46, *&v35);
      v38 = v37[5];
      v59 = v37[4];
      *v60 = v38;
      *&v60[13] = *(v37 + 93);
      v39 = v37[1];
      v55 = *v37;
      v56 = v39;
      v40 = v37[3];
      v57 = v37[2];
      v58 = v40;
      return _s8Freeform17TSContentLanguageO6ModelsO16LayoutPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(&v65, &v55);
    }

    return 0;
  }

  if (v7 != 1)
  {
    v41 = a2[7];
    v52 = a2[6];
    v53 = v41;
    v54[0] = a2[8];
    *(v54 + 14) = *(a2 + 142);
    v42 = a2[3];
    v48 = a2[2];
    v49 = v42;
    v43 = a2[5];
    v50 = a2[4];
    v51 = v43;
    v44 = a2[1];
    v46 = *a2;
    v47 = v44;
    return sub_1007CF090(&v46) == 2;
  }

  v10 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v63, *&v8);
  v11 = v10[7];
  *&v70[16] = v10[6];
  v71 = v11;
  v72[0] = v10[8];
  *(v72 + 13) = *(v10 + 141);
  v12 = v10[3];
  v67 = v10[2];
  v68 = v12;
  v13 = v10[5];
  v69 = v10[4];
  *v70 = v13;
  v14 = v10[1];
  v65 = *v10;
  v66 = v14;
  v15 = a2[1];
  v46 = *a2;
  v47 = v15;
  v16 = a2[3];
  v48 = a2[2];
  v49 = v16;
  v17 = a2[5];
  v50 = a2[4];
  v51 = v17;
  v18 = a2[7];
  v52 = a2[6];
  v53 = v18;
  v54[0] = a2[8];
  *(v54 + 14) = *(a2 + 142);
  if (sub_1007CF090(&v46) != 1)
  {
    return 0;
  }

  v21 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v46, *&v19);
  v22 = v21[7];
  *&v60[16] = v21[6];
  v61 = v22;
  v62[0] = v21[8];
  *(v62 + 13) = *(v21 + 141);
  v23 = v21[3];
  v57 = v21[2];
  v58 = v23;
  v24 = v21[5];
  v59 = v21[4];
  *v60 = v24;
  v25 = v21[1];
  v55 = *v21;
  v56 = v25;
  return _s8Freeform17TSContentLanguageO6ModelsO19ScaffoldLayoutStyleV23__derived_struct_equalsySbAG_AGtFZ_0(&v65, &v55);
}

BOOL sub_10114E4A8(_OWORD *a1, __int128 *a2)
{
  v3 = a1[7];
  v71[6] = a1[6];
  v71[7] = v3;
  v72[0] = a1[8];
  *(v72 + 14) = *(a1 + 142);
  v4 = a1[3];
  v71[2] = a1[2];
  v71[3] = v4;
  v5 = a1[5];
  v71[4] = a1[4];
  v71[5] = v5;
  v6 = a1[1];
  v71[0] = *a1;
  v71[1] = v6;
  v7 = sub_1007CF090(v71);
  if (!v7)
  {
    v27 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v71, *&v8);
    v28 = v27[5];
    v59 = v27[4];
    *v60 = v28;
    *&v60[13] = *(v27 + 93);
    v29 = v27[1];
    v55 = *v27;
    v56 = v29;
    v30 = v27[3];
    v57 = v27[2];
    v58 = v30;
    v31 = a2[1];
    v46 = *a2;
    v47 = v31;
    v32 = a2[5];
    v50 = a2[4];
    v51 = v32;
    v33 = a2[3];
    v48 = a2[2];
    v49 = v33;
    *(v54 + 14) = *(a2 + 142);
    v34 = a2[8];
    v53 = a2[7];
    v54[0] = v34;
    v52 = a2[6];
    if (!sub_1007CF090(&v46))
    {
      v41 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v46, *&v35);
      v42 = v41[5];
      v67 = v41[4];
      *v68 = v42;
      *&v68[13] = *(v41 + 93);
      v43 = v41[1];
      v63 = *v41;
      v64 = v43;
      v44 = v41[3];
      v65 = v41[2];
      v66 = v44;
      return _s8Freeform17TSContentLanguageO6ModelsO16LayoutPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(&v55, &v63);
    }

    return 0;
  }

  if (v7 != 1)
  {
    v37 = a2[7];
    v52 = a2[6];
    v53 = v37;
    v54[0] = a2[8];
    *(v54 + 14) = *(a2 + 142);
    v38 = a2[3];
    v48 = a2[2];
    v49 = v38;
    v39 = a2[5];
    v50 = a2[4];
    v51 = v39;
    v40 = a2[1];
    v46 = *a2;
    v47 = v40;
    return sub_1007CF090(&v46) == 2;
  }

  v10 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v71, *&v8);
  v11 = v10[7];
  *&v60[16] = v10[6];
  v61 = v11;
  v62[0] = v10[8];
  *(v62 + 13) = *(v10 + 141);
  v12 = v10[3];
  v57 = v10[2];
  v58 = v12;
  v13 = v10[5];
  v59 = v10[4];
  *v60 = v13;
  v14 = v10[1];
  v55 = *v10;
  v56 = v14;
  v15 = a2[1];
  v46 = *a2;
  v47 = v15;
  v16 = a2[3];
  v48 = a2[2];
  v49 = v16;
  v17 = a2[5];
  v50 = a2[4];
  v51 = v17;
  v18 = a2[7];
  v52 = a2[6];
  v53 = v18;
  v54[0] = a2[8];
  *(v54 + 14) = *(a2 + 142);
  if (sub_1007CF090(&v46) != 1)
  {
    return 0;
  }

  v21 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v46, *&v19);
  v22 = v21[7];
  *&v68[16] = v21[6];
  v69 = v22;
  v70[0] = v21[8];
  *(v70 + 13) = *(v21 + 141);
  v23 = v21[3];
  v65 = v21[2];
  v66 = v23;
  v24 = v21[5];
  v67 = v21[4];
  *v68 = v24;
  v25 = v21[1];
  v63 = *v21;
  v64 = v25;
  return _s8Freeform17TSContentLanguageO6ModelsO19ScaffoldLayoutStyleV23__derived_struct_equalsySbAG_AGtFZ_0(&v55, &v63);
}

unint64_t sub_10114E6D0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101877EA0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10114E71C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v56 = a2;
  v3 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v3 - 8);
  v53 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v54 = &v49 - v6;
  v7 = type metadata accessor for CodingUserInfoKey();
  v55 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v49 - v11;
  v13 = sub_1005B981C(&qword_101A2B6C0);
  v57 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v49 - v14;
  v16 = a1[3];
  v101 = a1;
  sub_100020E58(a1, v16);
  sub_10114F36C();
  v17 = v58;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    goto LABEL_2;
  }

  v58 = v12;
  v51 = v9;
  v52 = v7;
  v19 = v57;
  LOBYTE(v84) = 2;
  v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v18 = v101;
  if (v21)
  {
    if (v20 == 0xD000000000000031 && v21 == 0x800000010158A350)
    {
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v23 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v24[1] = 0;
        v24[2] = 0;
        *v24 = 0;
        swift_willThrow();
        (*(v19 + 8))(v15, v13);
        goto LABEL_18;
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v75) = 3;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v25 = v84;
  if (v84)
  {
    if (qword_1019F28E8 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.LayoutStyleType.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v25[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v26 = xmmword_101463530;
      *(v26 + 16) = 0;
      swift_willThrow();

      (*(v19 + 8))(v15, v13);
LABEL_18:
      sub_100020E58(v18, v18[3]);
      dispatch thunk of Decoder.singleValueContainer()();
      sub_100020E58(&v75, *(&v76 + 1));
      if (dispatch thunk of SingleValueDecodingContainer.decode(_:)() == 1701736302 && v28 == 0xE400000000000000)
      {

LABEL_22:
        sub_10114F798(&v84);
        sub_100005070(&v75);
        v98 = v89[1];
        v99 = v90;
        v100[0] = v91[0];
        *(v100 + 14) = *(v91 + 14);
        v94 = v86;
        v95 = v87;
        v96 = v88;
        v97 = v89[0];
        v30 = v84;
        v31 = v85;
LABEL_23:
        v92 = v30;
        v93 = v31;
LABEL_24:
        result = sub_100005070(v18);
        v33 = v99;
        v34 = v56;
        v56[6] = v98;
        v34[7] = v33;
        v34[8] = v100[0];
        *(v34 + 142) = *(v100 + 14);
        v35 = v95;
        v34[2] = v94;
        v34[3] = v35;
        v36 = v97;
        v34[4] = v96;
        v34[5] = v36;
        v37 = v93;
        *v34 = v92;
        v34[1] = v37;
        return result;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v29)
      {
        goto LABEL_22;
      }

      sub_100005070(&v75);
      goto LABEL_26;
    }
  }

  v27 = v18[3];
  v50 = v18[4];
  sub_100020E58(v18, v27);
  v50 = dispatch thunk of Decoder.userInfo.getter();
  LOBYTE(v59) = 0;
  sub_100B2BB74();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v49 = 0;
  if (BYTE9(v76) << 8 != 768)
  {

    v72 = v79;
    v73[0] = v80[0];
    *(v73 + 13) = *(v80 + 13);
    v68 = v75;
    v69 = v76;
    v70 = v77;
    v71 = v78;
    (*(v19 + 8))(v15, v13);
    v88 = v72;
    v89[0] = v73[0];
    *(v89 + 13) = *(v73 + 13);
    v84 = v68;
    v85 = v69;
    v86 = v70;
    v87 = v71;
    sub_10114D97C(&v84);
    v98 = v89[1];
    v99 = v90;
    v100[0] = v91[0];
    *(v100 + 14) = *(v91 + 14);
    v94 = v86;
    v95 = v87;
    v96 = v88;
    v97 = v89[0];
    v30 = v84;
    v31 = v85;
    goto LABEL_23;
  }

  v39 = v15;

  v88 = v79;
  v89[0] = v80[0];
  *(v89 + 13) = *(v80 + 13);
  v84 = v75;
  v85 = v76;
  v86 = v77;
  v87 = v78;
  sub_10000CAAC(&v84, &qword_101A00900);
  sub_100020E58(v101, v101[3]);
  v40 = dispatch thunk of Decoder.userInfo.getter();
  v83 = 1;
  sub_1011469F8();
  v41 = v49;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v49 = v41;
  v42 = v53;
  if (!v41)
  {
    v73[1] = v80[1];
    v73[2] = v81;
    v74[0] = *v82;
    *(v74 + 13) = *&v82[13];
    v70 = v77;
    v71 = v78;
    v72 = v79;
    v73[0] = v80[0];
    v68 = v75;
    v69 = v76;
    if (sub_10114B1FC(&v68) != 1)
    {

      v65 = v80[1];
      v66 = v81;
      v67[0] = *v82;
      *(v67 + 13) = *&v82[13];
      v61 = v77;
      v62 = v78;
      v63 = v79;
      v64 = v80[0];
      v59 = v75;
      v60 = v76;
      (*(v19 + 8))(v39, v13);
      v89[1] = v65;
      v90 = v66;
      v91[0] = v67[0];
      *(v91 + 13) = *(v67 + 13);
      v86 = v61;
      v87 = v62;
      v88 = v63;
      v89[0] = v64;
      v84 = v59;
      v85 = v60;
      sub_10114DA18(&v84);
      v98 = v89[1];
      v99 = v90;
      v100[0] = v91[0];
      *(v100 + 14) = *(v91 + 14);
      v94 = v86;
      v95 = v87;
      v96 = v88;
      v97 = v89[0];
      v92 = v84;
      v93 = v85;
      v18 = v101;
      goto LABEL_24;
    }

    (*(v19 + 8))(v39, v13);
    v89[1] = v80[1];
    v90 = v81;
    v91[0] = *v82;
    *(v91 + 13) = *&v82[13];
    v86 = v77;
    v87 = v78;
    v88 = v79;
    v89[0] = v80[0];
    v84 = v75;
    v85 = v76;
    sub_10000CAAC(&v84, &qword_101A2B6C8);
    v18 = v101;
    goto LABEL_26;
  }

  CodingUserInfoKey.init(rawValue:)();
  v43 = v55;
  v44 = v42;
  v45 = v52;
  result = (*(v55 + 48))(v42, 1, v52);
  if (result != 1)
  {
    v46 = v51;
    (*(v43 + 32))(v51, v44, v45);
    if (*(v40 + 16) && (v47 = sub_1007C8514(v46), v46 = v51, (v48 & 1) != 0))
    {
      sub_100064288(*(v40 + 56) + 32 * v47, &v84);
      (*(v43 + 8))(v46, v45);
      if (swift_dynamicCast() && (v75 & 1) != 0)
      {

        (*(v19 + 8))(v39, v13);
        v18 = v101;
LABEL_26:
        sub_1007C8648();
        swift_allocError();
        *v38 = xmmword_101478600;
        *(v38 + 16) = 0;
        swift_willThrow();
        return sub_100005070(v18);
      }
    }

    else
    {
      (*(v43 + 8))(v46, v45);
    }

    swift_willThrow();

    (*(v19 + 8))(v39, v13);
LABEL_2:
    v18 = v101;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

unint64_t sub_10114F36C()
{
  result = qword_101A2B688;
  if (!qword_101A2B688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B688);
  }

  return result;
}

unint64_t sub_10114F3C0(uint64_t a1)
{
  *(a1 + 8) = sub_10114F3F0();
  result = sub_10114F444();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10114F3F0()
{
  result = qword_101A2B690;
  if (!qword_101A2B690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B690);
  }

  return result;
}

unint64_t sub_10114F444()
{
  result = qword_101A2B698;
  if (!qword_101A2B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B698);
  }

  return result;
}

unint64_t sub_10114F498(void *a1)
{
  a1[2] = sub_1007C8578();
  a1[3] = sub_1007C8744();
  result = sub_10114F4D0();
  a1[4] = result;
  return result;
}

unint64_t sub_10114F4D0()
{
  result = qword_101A2B6A0;
  if (!qword_101A2B6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B6A0);
  }

  return result;
}

uint64_t sub_10114F524(uint64_t a1)
{
  if ((*(a1 + 157) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 157) & 3;
  }
}

__n128 sub_10114F540(uint64_t a1, uint64_t a2)
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
  *(a1 + 142) = *(a2 + 142);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_10114F574(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 158))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 157);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10114F5BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
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
    *(result + 156) = 0;
    *(result + 152) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 158) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 158) = 0;
    }

    if (a2)
    {
      *(result + 157) = -a2;
    }
  }

  return result;
}

uint64_t sub_10114F62C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = 0u;
    LOBYTE(a2) = 2;
    *(result + 149) = 0;
  }

  *(result + 157) = a2;
  return result;
}

unint64_t sub_10114F694()
{
  result = qword_101A2B6A8;
  if (!qword_101A2B6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B6A8);
  }

  return result;
}

unint64_t sub_10114F6EC()
{
  result = qword_101A2B6B0;
  if (!qword_101A2B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B6B0);
  }

  return result;
}

unint64_t sub_10114F744()
{
  result = qword_101A2B6B8;
  if (!qword_101A2B6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B6B8);
  }

  return result;
}

double sub_10114F798(uint64_t a1)
{
  result = 0.0;
  *(a1 + 141) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 157) = 2;
  return result;
}

uint64_t *TSContentLanguage.Models.LineSpacingType.version.unsafeMutableAddressor()
{
  if (qword_1019F28F0 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.LineSpacingType.version;
}

Swift::Int sub_10114F878()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10114F93C()
{
  String.hash(into:)();
}

Swift::Int sub_10114F9EC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10114FAAC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101150974(*a1);
  *a2 = result;
  return result;
}

void sub_10114FADC(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1684957547;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564695F65707974;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x65756C6176;
    v2 = 0xE500000000000000;
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

uint64_t sub_10114FB5C()
{
  v1 = 1684957547;
  v2 = 0x6564695F65707974;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 0x65756C6176;
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

unint64_t sub_10114FBD8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_101150974(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10114FC00(uint64_t a1)
{
  v2 = sub_101150EFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10114FC3C(uint64_t a1)
{
  v2 = sub_101150EFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TSContentLanguage.Models.LineSpacingType.encode(to:)(void *a1, char a2)
{
  v5 = sub_1005B981C(&qword_101A2B6D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - v7;
  sub_100020E58(a1, a1[3]);
  sub_101150EFC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  sub_101150F50();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v13 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v12 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F28F0 != -1)
  {
    swift_once();
  }

  v10[1] = static TSContentLanguage.Models.LineSpacingType.version;
  v11 = 3;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

BOOL TSContentLanguage.Models.LineSpacingType.isEquivalent(to:)(unsigned __int8 a1, unsigned __int8 a2, double a3, double a4)
{
  if (a2 == 5)
  {
    if (a1 == 5)
    {
      return sub_1007C87EC(a4, a3);
    }

    return 0;
  }

  if (a1 == 5)
  {
    return 0;
  }

  v6 = 0x6E656577746562;
  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x7463617865;
    }

    else
    {
      v7 = 0x6E656577746562;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }
  }

  else if (a2 == 2)
  {
    v8 = 0xE700000000000000;
    v7 = 0x6D756D6978616DLL;
  }

  else
  {
    v7 = 0x6D756D696E696DLL;
    if (a2 == 3)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v7 = 0x65766974616C6572;
      v8 = 0xE800000000000000;
    }
  }

  v9 = 0xE700000000000000;
  v10 = 0xE700000000000000;
  v11 = 0x6D756D6978616DLL;
  v12 = 0xE700000000000000;
  v13 = 0x6D756D696E696DLL;
  if (a1 != 3)
  {
    v13 = 0x65766974616C6572;
    v12 = 0xE800000000000000;
  }

  if (a1 != 2)
  {
    v11 = v13;
    v10 = v12;
  }

  if (a1)
  {
    v6 = 0x7463617865;
    v9 = 0xE500000000000000;
  }

  if (a1 <= 1u)
  {
    v14 = v6;
  }

  else
  {
    v14 = v11;
  }

  if (a1 <= 1u)
  {
    v15 = v9;
  }

  else
  {
    v15 = v10;
  }

  v16 = a4;
  if (v7 == v14 && v8 == v15)
  {

    a4 = v16;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    a4 = v16;
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  return sub_1007C87EC(a4, a3);
}

BOOL static TSContentLanguage.Models.LineSpacingType.__derived_struct_equals(_:_:)(unsigned __int8 a1, unsigned __int8 a2, double a3, double a4)
{
  if (a1 == 5)
  {
    if (a2 == 5)
    {
      return a3 == a4;
    }

    return 0;
  }

  if (a2 == 5)
  {
    return 0;
  }

  v5 = 0x6E656577746562;
  v6 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v7 = 0x7463617865;
    }

    else
    {
      v7 = 0x6E656577746562;
    }

    if (v6)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v8 = 0xE700000000000000;
    v7 = 0x6D756D6978616DLL;
  }

  else
  {
    if (a1 == 3)
    {
      v7 = 0x6D756D696E696DLL;
    }

    else
    {
      v7 = 0x65766974616C6572;
    }

    if (v6 == 3)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE800000000000000;
    }
  }

  v9 = 0xE700000000000000;
  v10 = 0xE700000000000000;
  v11 = 0x6D756D6978616DLL;
  v12 = 0xE700000000000000;
  v13 = 0x6D756D696E696DLL;
  if (a2 != 3)
  {
    v13 = 0x65766974616C6572;
    v12 = 0xE800000000000000;
  }

  if (a2 != 2)
  {
    v11 = v13;
    v10 = v12;
  }

  if (a2)
  {
    v5 = 0x7463617865;
    v9 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v14 = v5;
  }

  else
  {
    v14 = v11;
  }

  if (a2 <= 1u)
  {
    v15 = v9;
  }

  else
  {
    v15 = v10;
  }

  v16 = a3;
  v17 = a4;
  if (v7 == v14 && v8 == v15)
  {

    a4 = v17;
    a3 = v16;
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    a4 = v17;
    a3 = v16;
    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  return a3 == a4;
}

void sub_1011502BC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1011509C0(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

BOOL sub_101150330(double *a1, double *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (v4 != 5)
  {
    if (v6 == 5 || (sub_100B5AF18(v4, v6) & 1) == 0)
    {
      return 0;
    }

    return v5 == v7;
  }

  if (v6 == 5)
  {
    return v5 == v7;
  }

  return 0;
}

BOOL sub_101150398(double *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *v1;
  v5 = v1[1];
  if (v4 != 5)
  {
    if (v2 == 5 || (sub_100B5AF18(v4, v2) & 1) == 0)
    {
      return 0;
    }

    return sub_1007C87EC(v5, v3);
  }

  if (v2 == 5)
  {
    return sub_1007C87EC(v5, v3);
  }

  return 0;
}

void *TSContentLanguage.Models.LineSpacingType.LineSpacingKindType.version.unsafeMutableAddressor()
{
  if (qword_1019F28F8 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.LineSpacingType.LineSpacingKindType.version;
}

uint64_t TSContentLanguage.Models.LineSpacingType.LineSpacingKindType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6E656577746562;
  v2 = 0x6D756D6978616DLL;
  v3 = 0x6D756D696E696DLL;
  if (a1 != 3)
  {
    v3 = 0x65766974616C6572;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x7463617865;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_10115054C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10115062C()
{
  String.hash(into:)();
}

Swift::Int sub_1011506F8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1011507D4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8Freeform17TSContentLanguageO6ModelsO15LineSpacingTypeV0ef4KindG0O8rawValueAISgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_101150804(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E656577746562;
  v5 = 0xE700000000000000;
  v6 = 0x6D756D6978616DLL;
  v7 = 0xE700000000000000;
  v8 = 0x6D756D696E696DLL;
  if (v2 != 3)
  {
    v8 = 0x65766974616C6572;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7463617865;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_101150974(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101877F20, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

double sub_1011509C0(void *a1)
{
  v4 = sub_1005B981C(&qword_101A007C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - v6;
  sub_100020E58(a1, a1[3]);
  sub_101150EFC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_28;
  }

  LOBYTE(v31) = 2;
  v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v9)
  {
    if (v8 == 0xD000000000000031 && v9 == 0x800000010158A210)
    {
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v12[1] = 0;
        v12[2] = 0;
        *v12 = 0;
LABEL_26:
        swift_willThrow();
        goto LABEL_27;
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v34) = 3;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v13 = v31;
  if (v31)
  {
    if (qword_1019F28F0 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.LineSpacingType.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v13[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v14 = xmmword_101463530;
      *(v14 + 16) = 0;
      swift_willThrow();

LABEL_27:
      (*(v5 + 8))(v7, v4);
LABEL_28:
      sub_100005070(a1);
      return v2;
    }
  }

  sub_100020E58(a1, a1[3]);
  v15 = dispatch thunk of Decoder.userInfo.getter();
  sub_1007B9F54(0, v15, 0, 0);

  sub_100020E58(a1, a1[3]);
  dispatch thunk of Decoder.userInfo.getter();

  v35 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v32)
  {
    v16 = KeyedDecodingContainer.codingPath.getter();
    v17 = *(v16 + 16);
    if (v17)
    {
      v34 = _swiftEmptyArrayStorage;
      sub_100034080(0, v17, 0);
      v18 = v34;
      v28 = v16;
      v19 = v16 + 32;
      do
      {
        v30 = v17;
        sub_10000630C(v19, &v31);
        sub_100020E58(&v31, v33);
        v20 = dispatch thunk of CodingKey.stringValue.getter();
        v29 = v21;
        sub_100005070(&v31);
        v34 = v18;
        v23 = v18[2];
        v22 = v18[3];
        if (v23 >= v22 >> 1)
        {
          sub_100034080((v22 > 1), v23 + 1, 1);
          v18 = v34;
        }

        v18[2] = v23 + 1;
        v24 = &v18[2 * v23];
        v25 = v29;
        v24[4] = v20;
        v24[5] = v25;
        v19 += 40;
        v17 = v30 - 1;
      }

      while (v30 != 1);
    }

    else
    {

      v18 = _swiftEmptyArrayStorage;
    }

    sub_1007CDECC();
    swift_allocError();
    *v26 = 0x65756C6176;
    v26[1] = 0xE500000000000000;
    v26[2] = v18;
    swift_willThrow();
    goto LABEL_26;
  }

  v2 = *&v31;
  (*(v5 + 8))(v7, v4);
  sub_100005070(a1);
  return v2;
}

unint64_t sub_101150EFC()
{
  result = qword_101A2B6D8;
  if (!qword_101A2B6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B6D8);
  }

  return result;
}

unint64_t sub_101150F50()
{
  result = qword_101A2B6E0;
  if (!qword_101A2B6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B6E0);
  }

  return result;
}

unint64_t _s8Freeform17TSContentLanguageO6ModelsO15LineSpacingTypeV0ef4KindG0O8rawValueAISgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101877FA0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_101150FF0(uint64_t a1)
{
  result = sub_100B10344();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_101151058()
{
  result = qword_101A2B6E8;
  if (!qword_101A2B6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B6E8);
  }

  return result;
}

unint64_t sub_1011510AC()
{
  result = qword_101A2B6F0;
  if (!qword_101A2B6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B6F0);
  }

  return result;
}

unint64_t sub_101151104()
{
  result = qword_101A2B6F8;
  if (!qword_101A2B6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B6F8);
  }

  return result;
}

unint64_t sub_101151158(uint64_t a1)
{
  *(a1 + 8) = sub_101151188();
  result = sub_1011511DC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_101151188()
{
  result = qword_101A2B700;
  if (!qword_101A2B700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B700);
  }

  return result;
}

unint64_t sub_1011511DC()
{
  result = qword_101A2B708;
  if (!qword_101A2B708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B708);
  }

  return result;
}

unint64_t sub_101151230(uint64_t a1)
{
  result = sub_100B102F0();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_101151298(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[2] = a4();
  a1[3] = a5();
  result = a6();
  a1[4] = result;
  return result;
}

uint64_t _s15LineSpacingTypeVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && a1[16])
  {
    return (*a1 + 251);
  }

  v3 = *a1;
  if (v3 <= 5)
  {
    v4 = 5;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 6;
  if (v3 < 5)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t _s15LineSpacingTypeVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

unint64_t sub_1011513B4()
{
  result = qword_101A2B710;
  if (!qword_101A2B710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B710);
  }

  return result;
}

unint64_t sub_10115140C()
{
  result = qword_101A2B718;
  if (!qword_101A2B718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B718);
  }

  return result;
}

unint64_t sub_101151464()
{
  result = qword_101A2B720;
  if (!qword_101A2B720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B720);
  }

  return result;
}

id sub_1011514E0()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.ParagraphStyleType.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.ParagraphStyleType.version.unsafeMutableAddressor()
{
  if (qword_1019F2900 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.ParagraphStyleType.version;
}

id static TSContentLanguage.Models.ParagraphStyleType.version.getter()
{
  if (qword_1019F2900 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.ParagraphStyleType.version;

  return v1;
}

void *TSContentLanguage.Models.ParagraphStyleType.init(marks:)@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0x594uLL);
  sub_101151650(__dst);
  return memcpy(a2, __dst, 0x5C5uLL);
}

void *TSContentLanguage.Models.ParagraphStyleType.init(style:)@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0x5C4uLL);
  sub_1011516A8(__dst);
  return memcpy(a2, __dst, 0x5C5uLL);
}

void *TSContentLanguage.Models.ParagraphStyleType.init<A>(object:)(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  if (swift_dynamicCast())
  {
    memcpy(v9, __src, 0x594uLL);
    sub_101151650(v9);
  }

  else
  {
    if (!swift_dynamicCast())
    {
      sub_1005BC630(v12);
      goto LABEL_7;
    }

    memcpy(v9, __src, 0x5C4uLL);
    sub_1011516A8(v9);
  }

  memcpy(__dst, v9, 0x5C5uLL);
  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(__dst, v7);
  memcpy(v12, __dst, 0x5C5uLL);
LABEL_7:
  (*(*(v2 - 8) + 8))(v4, v2);
  return memcpy(v6, v12, 0x5C5uLL);
}

unint64_t sub_1011517FC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101152088(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10115182C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_101152088(a1);
  *a2 = result;
  return result;
}

uint64_t sub_101151854(uint64_t a1)
{
  v2 = sub_101152BE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101151890(uint64_t a1)
{
  v2 = sub_101152BE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *TSContentLanguage.Models.ParagraphStyleType.init(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1011520D4(a1);
  if (!v2)
  {
    return memcpy(a2, __src, 0x5C5uLL);
  }

  return result;
}

uint64_t TSContentLanguage.Models.ParagraphStyleType.encode(to:)(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v1;
  v5 = v4;
  v6 = sub_1005B981C(&qword_101A2B728);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v18 - v11;
  memcpy(v19, v3, 0x5C5uLL);
  v13 = sub_1007CF078(v19);
  if (v13)
  {
    if (v13 == 1)
    {
      v15 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v19, v14);
      memcpy(v21, v15, sizeof(v21));
      sub_100020E58(v5, v5[3]);
      sub_101152BE0();
      dispatch thunk of Encoder.container<A>(keyedBy:)();
      memcpy(v18, v21, 0x5C4uLL);
      v22 = 1;
      sub_101152C34();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v2)
      {
        LOBYTE(v18[0]) = 2;
        KeyedEncodingContainer.encode(_:forKey:)();
        if (qword_1019F2900 != -1)
        {
          swift_once();
        }

        v18[0] = static TSContentLanguage.Models.ParagraphStyleType.version;
        v22 = 3;
        type metadata accessor for TSCLVersion();
        sub_100969804(&qword_101A00458);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      return (*(v7 + 8))(v9, v6);
    }

    else
    {
      sub_100020E58(v5, v5[3]);
      dispatch thunk of Encoder.singleValueContainer()();
      sub_10002A948(v18, v18[3]);
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      return sub_100005070(v18);
    }
  }

  else
  {
    v17 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v19, v14);
    memcpy(v20, v17, sizeof(v20));
    sub_100020E58(v5, v5[3]);
    sub_101152BE0();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    memcpy(v18, v20, 0x594uLL);
    v22 = 0;
    sub_101152C88();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v2)
    {
      LOBYTE(v18[0]) = 2;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (qword_1019F2900 != -1)
      {
        swift_once();
      }

      v18[0] = static TSContentLanguage.Models.ParagraphStyleType.version;
      v22 = 3;
      type metadata accessor for TSCLVersion();
      sub_100969804(&qword_101A00458);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    return (*(v7 + 8))(v12, v6);
  }
}

BOOL static TSContentLanguage.Models.ParagraphStyleType.__derived_enum_equals(_:_:)(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  memcpy(__dst, v3, 0x5C5uLL);
  v4 = sub_1007CF078(__dst);
  if (!v4)
  {
    v12 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(__dst, *&v5);
    memcpy(v20, v12, 0x594uLL);
    memcpy(v17, v2, 0x5C5uLL);
    if (!sub_1007CF078(v17))
    {
      v15 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v17, *&v13);
      memcpy(v18, v15, 0x594uLL);
      return _s8Freeform17TSContentLanguageO6ModelsO19ParagraphPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(v20);
    }

    return 0;
  }

  if (v4 != 1)
  {
    memcpy(v17, v2, 0x5C5uLL);
    return sub_1007CF078(v17) == 2;
  }

  v7 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(__dst, *&v5);
  memcpy(v20, v7, 0x5C4uLL);
  memcpy(v17, v2, 0x5C5uLL);
  if (sub_1007CF078(v17) != 1)
  {
    return 0;
  }

  v10 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v17, *&v8);
  memcpy(v18, v10, sizeof(v18));
  return _s8Freeform17TSContentLanguageO6ModelsO22ScaffoldParagraphStyleV23__derived_struct_equalsySbAG_AGtFZ_0(v20);
}

BOOL sub_101151F28(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  memcpy(v20, v3, 0x5C5uLL);
  v4 = sub_1007CF078(v20);
  if (!v4)
  {
    v12 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v20, *&v5);
    memcpy(__dst, v12, 0x594uLL);
    memcpy(v17, v2, 0x5C5uLL);
    if (!sub_1007CF078(v17))
    {
      v15 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v17, *&v13);
      memcpy(v19, v15, 0x594uLL);
      return _s8Freeform17TSContentLanguageO6ModelsO19ParagraphPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(__dst);
    }

    return 0;
  }

  if (v4 != 1)
  {
    memcpy(v17, v2, 0x5C5uLL);
    return sub_1007CF078(v17) == 2;
  }

  v7 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v20, *&v5);
  memcpy(__dst, v7, 0x5C4uLL);
  memcpy(v17, v2, 0x5C5uLL);
  if (sub_1007CF078(v17) != 1)
  {
    return 0;
  }

  v10 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v17, *&v8);
  memcpy(v19, v10, sizeof(v19));
  return _s8Freeform17TSContentLanguageO6ModelsO22ScaffoldParagraphStyleV23__derived_struct_equalsySbAG_AGtFZ_0(__dst);
}

unint64_t sub_101152088(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101878038, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void *sub_1011520D4(uint64_t a1)
{
  __chkstk_darwin(a1);
  v43 = v1;
  v3 = v2;
  v40 = v4;
  v5 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v5 - 8);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v41 = &v34 - v8;
  v9 = type metadata accessor for CodingUserInfoKey();
  v39 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  v15 = sub_1005B981C(&qword_101A2B778);
  v42 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v34 - v16;
  v18 = v3[3];
  v50 = v3;
  sub_100020E58(v3, v18);
  sub_101152BE0();
  v19 = v43;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    v20 = v50;
    goto LABEL_13;
  }

  v36 = v11;
  v37 = v14;
  v43 = v9;
  LOBYTE(v48[0]) = 2;
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = v50;
  if (!v22)
  {
    goto LABEL_11;
  }

  if (v21 == 0xD000000000000034 && v22 == 0x800000010158A150)
  {

    goto LABEL_11;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
LABEL_11:
    type metadata accessor for TSCLVersion();
    v46[0] = 3;
    sub_100969804(&qword_101A00400);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v29 = v48[0];
    if (v48[0])
    {
      if (qword_1019F2900 != -1)
      {
        swift_once();
      }

      if (*(static TSContentLanguage.Models.ParagraphStyleType.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v29[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
      {
        sub_1007C8648();
        swift_allocError();
        *v30 = xmmword_101463530;
        *(v30 + 16) = 0;
        swift_willThrow();

        goto LABEL_12;
      }
    }

    v32 = v20[3];
    v35 = v20[4];
    sub_100020E58(v20, v32);
    v35 = dispatch thunk of Decoder.userInfo.getter();
    v47 = 0;
    sub_101153238();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    memcpy(v45, v46, 0x594uLL);
    if (sub_1011532E0(v45) == 1)
    {
      v41 = v17;

      memcpy(v48, v46, 0x594uLL);
      sub_10000CAAC(v48, &qword_101A2B798);
      v33 = v42;
      sub_100020E58(v20, v20[3]);
      dispatch thunk of Decoder.userInfo.getter();
      v47 = 1;
      sub_10115328C();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      memcpy(v45, v46, 0x5C4uLL);
      if (sub_10114B1FC(v45) == 1)
      {

        (*(v33 + 8))(v41, v15);
        memcpy(v48, v46, 0x5C4uLL);
        sub_10000CAAC(v48, &qword_101A2B790);
        goto LABEL_25;
      }

      memcpy(v44, v46, sizeof(v44));
      (*(v33 + 8))(v41, v15);
      memcpy(v48, v44, 0x5C4uLL);
      sub_1011516A8(v48);
    }

    else
    {

      memcpy(v44, v46, 0x594uLL);
      (*(v42 + 8))(v17, v15);
      memcpy(v48, v44, 0x594uLL);
      sub_101151650(v48);
    }

    memcpy(v49, v48, sizeof(v49));
    goto LABEL_18;
  }

  sub_1007C8648();
  swift_allocError();
  v25[1] = 0;
  v25[2] = 0;
  *v25 = 0;
  swift_willThrow();
LABEL_12:
  (*(v42 + 8))(v17, v15);
LABEL_13:
  sub_100020E58(v20, v20[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  sub_100020E58(v46, *&v46[24]);
  if (dispatch thunk of SingleValueDecodingContainer.decode(_:)() == 1701736302 && v26 == 0xE400000000000000)
  {

LABEL_17:
    sub_101153208(v48);
    sub_100005070(v46);
    memcpy(v49, v48, sizeof(v49));
LABEL_18:
    sub_100005070(v20);
    return memcpy(v40, v49, 0x5C5uLL);
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27)
  {
    goto LABEL_17;
  }

  sub_100005070(v46);
LABEL_25:
  sub_1007C8648();
  swift_allocError();
  *v31 = xmmword_101478600;
  *(v31 + 16) = 0;
  swift_willThrow();
  return sub_100005070(v20);
}

unint64_t sub_101152BE0()
{
  result = qword_101A2B730;
  if (!qword_101A2B730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B730);
  }

  return result;
}

unint64_t sub_101152C34()
{
  result = qword_101A2B738;
  if (!qword_101A2B738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B738);
  }

  return result;
}

unint64_t sub_101152C88()
{
  result = qword_101A2B740;
  if (!qword_101A2B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B740);
  }

  return result;
}

unint64_t sub_101152CDC(uint64_t a1)
{
  *(a1 + 8) = sub_101152D0C();
  result = sub_101152D60();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_101152D0C()
{
  result = qword_101A2B748;
  if (!qword_101A2B748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B748);
  }

  return result;
}

unint64_t sub_101152D60()
{
  result = qword_101A2B750;
  if (!qword_101A2B750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B750);
  }

  return result;
}

unint64_t sub_101152DB4(void *a1)
{
  a1[2] = sub_1007C85CC();
  a1[3] = sub_1007C8798();
  result = sub_101152DEC();
  a1[4] = result;
  return result;
}

unint64_t sub_101152DEC()
{
  result = qword_101A2B758;
  if (!qword_101A2B758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B758);
  }

  return result;
}

uint64_t sub_101152E40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_101152E64(uint64_t a1)
{
  if ((*(a1 + 1476) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 1476) & 3;
  }
}

uint64_t sub_101152E88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 1477))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 1476);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_101152ED0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 1464) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 1476) = 0;
    *(result + 1472) = 0;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 1477) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 1477) = 0;
    }

    if (a2)
    {
      *(result + 1476) = -a2;
    }
  }

  return result;
}

void sub_1011530A0(uint64_t a1, unsigned int a2)
{
  if (a2 >= 2)
  {
    *a1 = a2 - 2;
    bzero((a1 + 8), 0x5BCuLL);
    LOBYTE(a2) = 2;
  }

  *(a1 + 1476) = a2;
}

unint64_t sub_101153104()
{
  result = qword_101A2B760;
  if (!qword_101A2B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B760);
  }

  return result;
}

unint64_t sub_10115315C()
{
  result = qword_101A2B768;
  if (!qword_101A2B768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B768);
  }

  return result;
}

unint64_t sub_1011531B4()
{
  result = qword_101A2B770;
  if (!qword_101A2B770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B770);
  }

  return result;
}

unint64_t sub_101153238()
{
  result = qword_101A2B780;
  if (!qword_101A2B780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B780);
  }

  return result;
}

unint64_t sub_10115328C()
{
  result = qword_101A2B788;
  if (!qword_101A2B788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B788);
  }

  return result;
}

uint64_t sub_1011532E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t *TSContentLanguage.Models.CharacterProperties.version.unsafeMutableAddressor()
{
  if (qword_1019F2908 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.CharacterProperties.version;
}

uint64_t TSContentLanguage.Models.CharacterProperties.baselineShift.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t sub_101153468(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A00768);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1011534E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A00768);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TSContentLanguage.Models.CharacterProperties.compatibilityFontName.getter()
{
  v1 = *(v0 + 464);

  return v1;
}

uint64_t TSContentLanguage.Models.CharacterProperties.compatibilityFontName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 464) = a1;
  *(v2 + 472) = a2;
  return result;
}

uint64_t TSContentLanguage.Models.CharacterProperties.emphasisMark.getter()
{
  v1 = *(v0 + 488);

  return v1;
}

uint64_t TSContentLanguage.Models.CharacterProperties.emphasisMark.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 488) = a1;
  *(v2 + 496) = a2;
  return result;
}

uint64_t TSContentLanguage.Models.CharacterProperties.fontFeatures.setter(uint64_t a1)
{

  *(v1 + 512) = a1;
  return result;
}

uint64_t TSContentLanguage.Models.CharacterProperties.fontName.getter()
{
  v1 = *(v0 + 528);

  return v1;
}

uint64_t TSContentLanguage.Models.CharacterProperties.fontName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 528) = a1;
  *(v2 + 536) = a2;
  return result;
}

uint64_t TSContentLanguage.Models.CharacterProperties.fontSize.setter(uint64_t result, char a2)
{
  *(v2 + 552) = result;
  *(v2 + 560) = a2 & 1;
  return result;
}

uint64_t TSContentLanguage.Models.CharacterProperties.kerning.setter(uint64_t result, char a2)
{
  *(v2 + 568) = result;
  *(v2 + 576) = a2 & 1;
  return result;
}

uint64_t TSContentLanguage.Models.CharacterProperties.language.getter()
{
  v1 = *(v0 + 584);

  return v1;
}

uint64_t TSContentLanguage.Models.CharacterProperties.language.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 584) = a1;
  *(v2 + 592) = a2;
  return result;
}

__n128 TSContentLanguage.Models.CharacterProperties.shadow.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 688);
  *(a1 + 64) = *(v1 + 672);
  *(a1 + 80) = v2;
  *(a1 + 96) = *(v1 + 704);
  v3 = *(v1 + 624);
  *a1 = *(v1 + 608);
  *(a1 + 16) = v3;
  result = *(v1 + 656);
  *(a1 + 32) = *(v1 + 640);
  *(a1 + 48) = result;
  return result;
}

__n128 TSContentLanguage.Models.CharacterProperties.shadow.setter(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(v1 + 672) = *(a1 + 64);
  *(v1 + 688) = v2;
  *(v1 + 704) = *(a1 + 96);
  v3 = *(a1 + 16);
  *(v1 + 608) = *a1;
  *(v1 + 624) = v3;
  result = *(a1 + 48);
  *(v1 + 640) = *(a1 + 32);
  *(v1 + 656) = result;
  return result;
}

__n128 TSContentLanguage.Models.CharacterProperties.strikethroughColor.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 744);
  result = *(v1 + 712);
  v4 = *(v1 + 728);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 TSContentLanguage.Models.CharacterProperties.strikethroughColor.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 712) = *a1;
  *(v1 + 728) = v3;
  *(v1 + 744) = *(a1 + 32);
  return result;
}

uint64_t TSContentLanguage.Models.CharacterProperties.strikethroughWidth.setter(uint64_t result, char a2)
{
  *(v2 + 752) = result;
  *(v2 + 760) = a2 & 1;
  return result;
}

__n128 TSContentLanguage.Models.CharacterProperties.stroke.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 816);
  v3 = *(v1 + 784);
  *a1 = *(v1 + 768);
  *(a1 + 16) = v3;
  result = *(v1 + 800);
  *(a1 + 32) = result;
  *(a1 + 48) = v2;
  return result;
}

__n128 TSContentLanguage.Models.CharacterProperties.stroke.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 768) = *a1;
  *(v1 + 784) = v2;
  result = *(a1 + 32);
  *(v1 + 800) = result;
  *(v1 + 816) = *(a1 + 48);
  return result;
}

uint64_t TSContentLanguage.Models.CharacterProperties.tracking.setter(uint64_t result, char a2)
{
  *(v2 + 824) = result;
  *(v2 + 832) = a2 & 1;
  return result;
}

__n128 TSContentLanguage.Models.CharacterProperties.underlineColor.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 872);
  result = *(v1 + 840);
  v4 = *(v1 + 856);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 TSContentLanguage.Models.CharacterProperties.underlineColor.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 840) = *a1;
  *(v1 + 856) = v3;
  *(v1 + 872) = *(a1 + 32);
  return result;
}

uint64_t TSContentLanguage.Models.CharacterProperties.underlineWidth.setter(uint64_t result, char a2)
{
  *(v2 + 880) = result;
  *(v2 + 888) = a2 & 1;
  return result;
}

void *TSContentLanguage.Models.CharacterProperties.init(backgroundColor:backgroundColorNone:baseline:baselineShift:bold:capitalization:characterFill:characterFillShouldFillContainer:compatibilityFontName:compatibilityFontNameNone:emphasisMark:emphasisMarkNone:fontFeatures:fontFeaturesNone:fontName:fontNameNone:fontSize:isNamedPointSize:italic:kerning:language:languageNone:ligatures:shadow:strikethrough:strikethroughColor:strikethroughColorNone:strikethroughWidth:stroke:tracking:underline:underlineColor:underlineColorNone:underlineWidth:wordStrikethrough:wordUnderline:writingDirection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, __int128 a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, __int128 a17, char a18, uint64_t a19, int a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, __int16 a25, __int128 *a26, char a27, uint64_t a28, char a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, __int16 a34, uint64_t a35, char a36, uint64_t a37, int a38)
{
  __chkstk_darwin(a1);
  v64 = v38;
  v62 = v39;
  v63 = v40;
  v61 = v41;
  v60 = v42;
  v59 = v43;
  v58 = v44;
  v46 = v45;
  v65 = v47;
  sub_1005BC698(__src);
  memcpy(&v67[3] + 8, __src, 0x190uLL);
  memset(&v67[38], 0, 96);
  LOWORD(v67[44]) = 4;
  memset(&v67[48], 0, 32);
  v67[50] = xmmword_1014669B0;
  LOBYTE(v67[51]) = 0;
  v48 = *(v46 + 16);
  v67[0] = *v46;
  v67[1] = v48;
  LOBYTE(v67[2]) = *(v46 + 32);
  BYTE1(v67[2]) = v58;
  BYTE2(v67[2]) = v59;
  *(&v67[2] + 1) = v60;
  LOBYTE(v67[3]) = v61 & 1;
  BYTE1(v67[3]) = v62;
  BYTE2(v67[3]) = v63;
  sub_1011534E0(v64, &v67[3] + 8);
  *(&v67[35] + 1) = *(&a20 + 1);
  BYTE8(v67[28]) = a9;
  v67[29] = a10;
  LOBYTE(v67[30]) = a11;
  *(&v67[30] + 1) = a12;
  *&v67[31] = a13;
  BYTE8(v67[31]) = a14;
  *&v67[32] = a15;
  BYTE8(v67[32]) = a16;
  v67[33] = a17;
  LOBYTE(v67[34]) = a18;
  *(&v67[34] + 1) = a19;
  LOBYTE(v67[35]) = a20 & 1;
  *(&v67[35] + 1) = a21;
  LOBYTE(v67[36]) = a22 & 1;
  *(&v67[36] + 1) = a23;
  *&v67[37] = a24;
  WORD4(v67[37]) = a25;
  v49 = *a26;
  v67[39] = a26[1];
  v67[38] = v49;
  LOWORD(v67[44]) = *(a26 + 48);
  v50 = a26[3];
  v67[40] = a26[2];
  v67[41] = v50;
  v51 = a26[5];
  v67[42] = a26[4];
  v67[43] = v51;
  BYTE2(v67[44]) = a27;
  v52 = *(a28 + 32);
  v53 = *(a28 + 16);
  *(&v67[44] + 8) = *a28;
  *(&v67[45] + 8) = v53;
  BYTE8(v67[46]) = v52;
  BYTE9(v67[46]) = a29;
  *&v67[47] = a30;
  BYTE8(v67[47]) = a31 & 1;
  v54 = *(a32 + 16);
  v67[48] = *a32;
  v67[49] = v54;
  v67[50] = *(a32 + 32);
  LOBYTE(v67[51]) = *(a32 + 48);
  *(&v67[51] + 1) = a33;
  LOWORD(v67[52]) = a34 & 0xFF01;
  v55 = *(a35 + 32);
  v56 = *(a35 + 16);
  *(&v67[52] + 8) = *a35;
  *(&v67[53] + 8) = v56;
  BYTE8(v67[54]) = v55;
  BYTE9(v67[54]) = a36;
  *&v67[55] = a37;
  DWORD2(v67[55]) = a38 & 0xFFFFFF01;
  memcpy(__dst, v67, 0x37CuLL);
  memcpy(v70, v67, 0x37CuLL);
  sub_101154170(__dst, v66);
  sub_1011541A8(v70);
  return memcpy(v65, __dst, 0x37CuLL);
}

unint64_t sub_1011541D8(char a1)
{
  result = 0x656E696C65736162;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
    case 3:
      return result;
    case 4:
      result = 1684828002;
      break;
    case 5:
      result = 0x696C617469706163;
      break;
    case 6:
      result = 0x6574636172616863;
      break;
    case 7:
      result = 0xD000000000000024;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0xD00000000000001CLL;
      break;
    case 10:
      result = 0x7369736168706D65;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0x6165665F746E6F66;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0x6D616E5F746E6F66;
      break;
    case 15:
      result = 0x6D616E5F746E6F66;
      break;
    case 16:
      result = 0x7A69735F746E6F66;
      break;
    case 17:
    case 25:
    case 27:
      result = 0xD000000000000013;
      break;
    case 18:
      result = 0x63696C617469;
      break;
    case 19:
      result = 0x676E696E72656BLL;
      break;
    case 20:
    case 21:
      result = 0x65676175676E616CLL;
      break;
    case 22:
      result = 0x657275746167696CLL;
      break;
    case 23:
      result = 0x776F64616873;
      break;
    case 24:
      result = 0x6874656B69727473;
      break;
    case 26:
      result = 0xD000000000000018;
      break;
    case 28:
      result = 0x656B6F727473;
      break;
    case 29:
      result = 0x676E696B63617274;
      break;
    case 30:
      result = 0x6E696C7265646E75;
      break;
    case 31:
    case 33:
      result = 0x6E696C7265646E75;
      break;
    case 32:
      result = 0xD000000000000014;
      break;
    case 34:
      result = 0xD000000000000012;
      break;
    case 35:
      result = 0x646E755F64726F77;
      break;
    case 36:
      result = 0xD000000000000011;
      break;
    case 37:
      result = 0x6564695F65707974;
      break;
    case 38:
      result = 0x6E6F6973726576;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_101154618(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1011541D8(*a1);
  v5 = v4;
  if (v3 == sub_1011541D8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1011546A0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1011541D8(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_101154704()
{
  sub_1011541D8(*v0);
  String.hash(into:)();
}

Swift::Int sub_101154758()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1011541D8(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1011547B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_101158BFC();
  *a1 = result;
  return result;
}

unint64_t sub_1011547E8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1011541D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10115481C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_101158BFC();
  *a1 = result;
  return result;
}

uint64_t sub_101154850(uint64_t a1)
{
  v2 = sub_10115C1E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10115488C(uint64_t a1)
{
  v2 = sub_10115C1E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *TSContentLanguage.Models.CharacterProperties.init(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_101158C50(a1);
  if (!v2)
  {
    return memcpy(a2, v5, 0x37CuLL);
  }

  return result;
}

uint64_t TSContentLanguage.Models.CharacterProperties.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A2B7A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_100020E58(a1, a1[3]);
  sub_10115C1E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 16);
  v25[0] = *v3;
  v25[1] = v9;
  LOBYTE(v25[2]) = *(v3 + 32);
  v24[0] = 0;
  sub_100B64688();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v25[0]) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v25[0]) = *(v3 + 34);
    v24[0] = 2;
    sub_10115C238();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v25[0]) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v25[0]) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v25[0]) = *(v3 + 50);
    v24[0] = 5;
    sub_10115C28C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    memcpy(v26, (v3 + 56), 0x190uLL);
    memcpy(v25, (v3 + 56), sizeof(v25));
    v28 = 6;
    sub_101153468(v26, v24);
    sub_10115C2E0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    memcpy(v24, v25, sizeof(v24));
    sub_10000CAAC(v24, &qword_101A00768);
    LOBYTE(v17) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v17) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v17) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v17) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v17) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v17 = *(v3 + 512);
    v27 = 12;
    sub_1005B981C(&qword_101A00798);
    sub_10115C334();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v17) = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v17) = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v17) = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v17) = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v17) = 17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v17) = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v17) = 19;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v17) = 20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v17) = 21;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v17) = *(v3 + 601);
    v27 = 22;
    sub_10115C40C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11 = *(v3 + 688);
    v21 = *(v3 + 672);
    v22 = v11;
    v23 = *(v3 + 704);
    v12 = *(v3 + 624);
    v17 = *(v3 + 608);
    v18 = v12;
    v13 = *(v3 + 656);
    v19 = *(v3 + 640);
    v20 = v13;
    v27 = 23;
    sub_101144428();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v17) = *(v3 + 706);
    v27 = 24;
    sub_10115C460();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = *(v3 + 728);
    v17 = *(v3 + 712);
    v18 = v14;
    LOBYTE(v19) = *(v3 + 744);
    v27 = 25;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v17) = 26;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v17) = 27;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = *(v3 + 784);
    v17 = *(v3 + 768);
    v18 = v15;
    v19 = *(v3 + 800);
    LOBYTE(v20) = *(v3 + 816);
    v27 = 28;
    sub_100969518();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v17) = 29;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v17) = *(v3 + 833);
    v27 = 30;
    sub_10115C4B4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = *(v3 + 856);
    v17 = *(v3 + 840);
    v18 = v16;
    LOBYTE(v19) = *(v3 + 872);
    v27 = 31;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v17) = 32;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v17) = 33;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v17) = 34;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v17) = 35;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v17) = *(v3 + 891);
    v27 = 36;
    sub_10114D494();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v17) = 37;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (qword_1019F2908 != -1)
    {
      swift_once();
    }

    *&v17 = static TSContentLanguage.Models.CharacterProperties.version;
    v27 = 38;
    type metadata accessor for TSCLVersion();
    sub_100969804(&qword_101A00458);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

BOOL TSContentLanguage.Models.CharacterProperties.isEquivalent(to:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(a1 + 32);
  if (v2 == 2)
  {
    if (v3 != 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = ~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*v1, *a1), vceqq_f64(*(v1 + 16), *(a1 + 16))), xmmword_10148D100)) & 0xF;
    v5 = v3 != 2 && v4 == 0;
    if (!v5)
    {
      return 0;
    }

    v6 = a1;
    if (v2)
    {
      v7 = 1650946675;
    }

    else
    {
      v7 = 13168;
    }

    if (v2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE200000000000000;
    }

    if (v3)
    {
      v9 = 1650946675;
    }

    else
    {
      v9 = 13168;
    }

    if (v3)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE200000000000000;
    }

    if (v7 == v9 && v8 == v10)
    {

      a1 = v6;
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      a1 = v6;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v12 = *(v1 + 33);
  v13 = *(a1 + 33);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else if (v13 == 2 || ((v12 ^ v13) & 1) != 0)
  {
    return 0;
  }

  v14 = *(v1 + 34);
  v15 = *(a1 + 34);
  if (v14 == 3)
  {
    if (v15 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v15 == 3)
    {
      return 0;
    }

    v16 = 0x7069726373627573;
    v17 = 0xE900000000000074;
    if (v14 != 1)
    {
      v16 = 0x7263737265707573;
      v17 = 0xEB00000000747069;
    }

    v18 = v14 == 0;
    if (*(v1 + 34))
    {
      v19 = v16;
    }

    else
    {
      v19 = 0x746C7561666564;
    }

    if (v18)
    {
      v20 = 0xE700000000000000;
    }

    else
    {
      v20 = v17;
    }

    v21 = 0x7069726373627573;
    v22 = 0xE900000000000074;
    if (v15 != 1)
    {
      v21 = 0x7263737265707573;
      v22 = 0xEB00000000747069;
    }

    if (*(a1 + 34))
    {
      v23 = v21;
    }

    else
    {
      v23 = 0x746C7561666564;
    }

    if (*(a1 + 34))
    {
      v24 = v22;
    }

    else
    {
      v24 = 0xE700000000000000;
    }

    v25 = a1;
    if (v19 == v23 && v20 == v24)
    {

      a1 = v25;
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      a1 = v25;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if (*(v1 + 48) == 1)
  {
    if ((*(a1 + 48) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48))
    {
      return 0;
    }

    v27 = a1;
    v28 = sub_1007C87EC(*(v1 + 40), *(a1 + 40));
    a1 = v27;
    if (!v28)
    {
      return 0;
    }
  }

  v29 = *(v1 + 49);
  v30 = *(a1 + 49);
  if (v29 == 2)
  {
    if (v30 != 2)
    {
      return 0;
    }
  }

  else if (v30 == 2 || ((v29 ^ v30) & 1) != 0)
  {
    return 0;
  }

  v31 = *(a1 + 50);
  if (*(v1 + 50) == 5)
  {
    if (v31 != 5)
    {
      return 0;
    }
  }

  else
  {
    if (v31 == 5)
    {
      return 0;
    }

    v32 = a1;
    v33 = sub_100B5ADB8(*(v1 + 50), v31);
    a1 = v32;
    if ((v33 & 1) == 0)
    {
      return 0;
    }
  }

  v34 = a1;
  memcpy(__dst, (v1 + 56), sizeof(__dst));
  memcpy(v149, (v34 + 56), sizeof(v149));
  if ((sub_1007C7000(v149) & 1) == 0)
  {
    return 0;
  }

  v35 = v34;
  v36 = *(v1 + 456);
  v37 = *(v34 + 456);
  if (v36 == 2)
  {
    if (v37 != 2)
    {
      return 0;
    }
  }

  else if (v37 == 2 || ((v36 ^ v37) & 1) != 0)
  {
    return 0;
  }

  v38 = *(v1 + 472);
  v39 = *(v34 + 472);
  if (v38)
  {
    if (!v39)
    {
      return 0;
    }

    if (*(v1 + 464) != *(v34 + 464) || v38 != v39)
    {
      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v35 = v34;
      if ((v40 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v39)
  {
    return 0;
  }

  v41 = *(v1 + 480);
  v42 = *(v35 + 480);
  if (v41 == 2)
  {
    if (v42 != 2)
    {
      return 0;
    }
  }

  else if (v42 == 2 || ((v41 ^ v42) & 1) != 0)
  {
    return 0;
  }

  v43 = *(v1 + 496);
  v44 = *(v35 + 496);
  if (v43)
  {
    if (!v44)
    {
      return 0;
    }

    if (*(v1 + 488) != *(v35 + 488) || v43 != v44)
    {
      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v35 = v34;
      if ((v45 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v44)
  {
    return 0;
  }

  v46 = *(v1 + 504);
  v47 = *(v35 + 504);
  if (v46 == 2)
  {
    v48 = v1;
    v49 = v34;
    if (v47 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v47 == 2)
    {
      return 0;
    }

    v48 = v1;
    v49 = v34;
    if ((v46 ^ v47))
    {
      return 0;
    }
  }

  v50 = *(v48 + 512);
  v51 = *(v49 + 512);
  if (v50)
  {
    if (!v51)
    {
      return 0;
    }

    v52 = sub_100B5EC34(v51, v50);
    v53 = v34;
    if (!v52)
    {
      return 0;
    }
  }

  else
  {
    v53 = v34;
    if (v51)
    {
      return 0;
    }
  }

  v54 = *(v1 + 520);
  v55 = *(v53 + 520);
  if (v54 == 2)
  {
    v56 = v1;
    v57 = v34;
    if (v55 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v55 == 2)
    {
      return 0;
    }

    v56 = v1;
    v57 = v34;
    if ((v54 ^ v55))
    {
      return 0;
    }
  }

  v58 = *(v56 + 536);
  v59 = *(v57 + 536);
  if (v58)
  {
    if (!v59)
    {
      return 0;
    }

    v60 = v34;
    if (*(v1 + 528) != *(v34 + 528) || v58 != v59)
    {
      v61 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v60 = v34;
      if ((v61 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v60 = v34;
    if (v59)
    {
      return 0;
    }
  }

  v62 = *(v1 + 544);
  v63 = *(v60 + 544);
  if (v62 == 2)
  {
    v64 = v1;
    v65 = v34;
    if (v63 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v63 == 2)
    {
      return 0;
    }

    v64 = v1;
    v65 = v34;
    if ((v62 ^ v63))
    {
      return 0;
    }
  }

  v66 = v65 + 560;
  v67 = v64 + 560;
  if (*(v64 + 560) == 1)
  {
    v68 = v34;
    if ((*(v65 + 560) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(v65 + 560))
    {
      return 0;
    }

    v69 = sub_1007C87EC(*(v1 + 552), *(v34 + 552));
    v68 = v34;
    if (!v69)
    {
      return 0;
    }
  }

  v70 = *(v1 + 561);
  v71 = *(v68 + 561);
  if (v70 == 2)
  {
    v72 = v1;
    v73 = v34;
    if (v71 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v71 == 2)
    {
      return 0;
    }

    v72 = v1;
    v73 = v34;
    if ((v70 ^ v71))
    {
      return 0;
    }
  }

  v74 = *(v72 + 562);
  v75 = *(v73 + 562);
  if (v74 == 2)
  {
    if (v75 != 2)
    {
      return 0;
    }
  }

  else if (v75 == 2 || ((v74 ^ v75) & 1) != 0)
  {
    return 0;
  }

  if (*(v67 + 16) == 1)
  {
    v76 = v34;
    if ((*(v66 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(v66 + 16))
    {
      return 0;
    }

    v77 = sub_1007C87EC(*(v1 + 568), *(v34 + 568));
    v76 = v34;
    if (!v77)
    {
      return 0;
    }
  }

  v78 = *(v1 + 592);
  v79 = *(v76 + 592);
  if (v78)
  {
    if (!v79)
    {
      return 0;
    }

    v80 = v34;
    if (*(v1 + 584) != *(v34 + 584) || v78 != v79)
    {
      v81 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v80 = v34;
      if ((v81 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v80 = v34;
    if (v79)
    {
      return 0;
    }
  }

  v82 = *(v1 + 600);
  v83 = *(v80 + 600);
  if (v82 == 2)
  {
    v84 = v34;
    if (v83 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v83 == 2)
    {
      return 0;
    }

    v84 = v34;
    if ((v82 ^ v83))
    {
      return 0;
    }
  }

  if (!sub_1007C725C(*(v84 + 601), *(v1 + 601)))
  {
    return 0;
  }

  v85 = *(v1 + 688);
  v146 = *(v1 + 672);
  v147 = v85;
  v148 = *(v1 + 704);
  v86 = *(v1 + 624);
  v142 = *(v1 + 608);
  v143 = v86;
  v87 = *(v1 + 656);
  v144 = *(v1 + 640);
  v145 = v87;
  v88 = *(v34 + 624);
  v140[0] = *(v34 + 608);
  v140[1] = v88;
  v89 = *(v34 + 640);
  v90 = *(v34 + 656);
  v91 = *(v34 + 672);
  v92 = *(v34 + 688);
  v141 = *(v34 + 704);
  v140[4] = v91;
  v140[5] = v92;
  v140[2] = v89;
  v140[3] = v90;
  if ((sub_1007C73A8(v140) & 1) == 0 || !sub_1007C7468(*(v34 + 706), *(v1 + 706)))
  {
    return 0;
  }

  v93 = *(v1 + 744);
  v94 = *(v34 + 744);
  if (v93 == 2)
  {
    v5 = v94 == 2;
    v95 = v1;
    v96 = v34;
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    if (v94 == 2)
    {
      return 0;
    }

    v97 = *(v67 + 168);
    v98 = *(v66 + 152);
    v99 = *(v66 + 168);
    v158 = *(v67 + 152);
    v159 = v97;
    v160 = v93 & 1;
    v156[0] = v98;
    v156[1] = v99;
    v157 = v94 & 1;
    v100 = sub_100B1BBC8(v156);
    v95 = v1;
    v96 = v34;
    if ((v100 & 1) == 0)
    {
      return 0;
    }
  }

  v101 = *(v95 + 745);
  v102 = *(v96 + 745);
  if (v101 == 2)
  {
    if (v102 != 2)
    {
      return 0;
    }
  }

  else if (v102 == 2 || ((v101 ^ v102) & 1) != 0)
  {
    return 0;
  }

  if (*(v67 + 200) == 1)
  {
    v103 = v34;
    if ((*(v66 + 200) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(v66 + 200))
    {
      return 0;
    }

    v104 = sub_1007C87EC(*(v1 + 752), *(v34 + 752));
    v103 = v34;
    if (!v104)
    {
      return 0;
    }
  }

  v105 = *(v1 + 784);
  v136 = *(v1 + 768);
  v137 = v105;
  v138 = *(v1 + 800);
  v139 = *(v1 + 816);
  v106 = *(v103 + 784);
  v134[0] = *(v103 + 768);
  v134[1] = v106;
  v134[2] = *(v103 + 800);
  v135 = *(v103 + 816);
  if ((sub_1007C6E18(v134) & 1) == 0)
  {
    return 0;
  }

  if (*(v67 + 272) == 1)
  {
    v107 = v34;
    if ((*(v66 + 272) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(v66 + 272))
    {
      return 0;
    }

    v108 = sub_1007C87EC(*(v1 + 824), *(v34 + 824));
    v107 = v34;
    if (!v108)
    {
      return 0;
    }
  }

  v109 = *(v1 + 833);
  v110 = *(v107 + 833);
  if (v109 == 4)
  {
    v111 = v34;
    if (v110 != 4)
    {
      return 0;
    }
  }

  else
  {
    if (v110 == 4)
    {
      return 0;
    }

    v112 = sub_100B5ACA4(v109, v110);
    v111 = v34;
    if ((v112 & 1) == 0)
    {
      return 0;
    }
  }

  v113 = *(v1 + 872);
  v114 = *(v111 + 872);
  if (v113 == 2)
  {
    v5 = v114 == 2;
    v115 = v1;
    v116 = v34;
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    if (v114 == 2)
    {
      return 0;
    }

    v117 = *(v67 + 296);
    v118 = *(v66 + 280);
    v119 = *(v66 + 296);
    v153 = *(v67 + 280);
    v154 = v117;
    v155 = v113 & 1;
    v151[0] = v118;
    v151[1] = v119;
    v152 = v114 & 1;
    v120 = sub_100B1BBC8(v151);
    v115 = v1;
    v116 = v34;
    if ((v120 & 1) == 0)
    {
      return 0;
    }
  }

  v121 = *(v115 + 873);
  v122 = *(v116 + 873);
  if (v121 == 2)
  {
    if (v122 != 2)
    {
      return 0;
    }
  }

  else if (v122 == 2 || ((v121 ^ v122) & 1) != 0)
  {
    return 0;
  }

  if (*(v67 + 328) == 1)
  {
    v123 = v34;
    if ((*(v66 + 328) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(v66 + 328))
    {
      return 0;
    }

    v124 = sub_1007C87EC(*(v1 + 880), *(v34 + 880));
    v123 = v34;
    if (!v124)
    {
      return 0;
    }
  }

  v125 = *(v1 + 889);
  v126 = *(v123 + 889);
  if (v125 == 2)
  {
    v127 = v1;
    v128 = v34;
    if (v126 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v126 == 2)
    {
      return 0;
    }

    v127 = v1;
    v128 = v34;
    if ((v125 ^ v126))
    {
      return 0;
    }
  }

  v129 = *(v127 + 890);
  v130 = *(v128 + 890);
  if (v129 == 2)
  {
    if (v130 == 2)
    {
      goto LABEL_208;
    }

    return 0;
  }

  if (v130 == 2 || ((v129 ^ v130) & 1) != 0)
  {
    return 0;
  }

LABEL_208:
  v132 = *(v34 + 891);
  v133 = *(v1 + 891);

  return sub_1007C4E98(v132, v133);
}

BOOL sub_101155D58(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x37CuLL);
  memcpy(__dst, a2, sizeof(__dst));
  return _s8Freeform17TSContentLanguageO6ModelsO19CharacterPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(v4);
}

void *TSContentLanguage.Models.CharacterProperties.BaselineType.version.unsafeMutableAddressor()
{
  if (qword_1019F2910 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.CharacterProperties.BaselineType.version;
}

uint64_t TSContentLanguage.Models.CharacterProperties.BaselineType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x746C7561666564;
  }

  if (a1 == 1)
  {
    return 0x7069726373627573;
  }

  return 0x7263737265707573;
}

uint64_t sub_101155EC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7069726373627573;
  v4 = 0xE900000000000074;
  if (v2 != 1)
  {
    v3 = 0x7263737265707573;
    v4 = 0xEB00000000747069;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x7069726373627573;
  v8 = 0xE900000000000074;
  if (*a2 != 1)
  {
    v7 = 0x7263737265707573;
    v8 = 0xEB00000000747069;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_101155FE0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_101156090()
{
  String.hash(into:)();
}

Swift::Int sub_10115612C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1011561D8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8Freeform17TSContentLanguageO6ModelsO19CharacterPropertiesV12BaselineTypeO8rawValueAISgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_101156208(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000074;
  v5 = 0x7069726373627573;
  if (v2 != 1)
  {
    v5 = 0x7263737265707573;
    v4 = 0xEB00000000747069;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void *TSContentLanguage.Models.CharacterProperties.CapitalizationType.version.unsafeMutableAddressor()
{
  if (qword_1019F2918 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.CharacterProperties.CapitalizationType.version;
}

uint64_t TSContentLanguage.Models.CharacterProperties.CapitalizationType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x737061635F6C6C61;
  v2 = 0x61635F6C6C616D73;
  v3 = 0x7472617473;
  if (a1 != 3)
  {
    v3 = 0x656C746974;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 1701736302;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_101156490()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_101156568()
{
  String.hash(into:)();
}

Swift::Int sub_10115662C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_101156700@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8Freeform17TSContentLanguageO6ModelsO19CharacterPropertiesV18CapitalizationTypeO8rawValueAISgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_101156730(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x737061635F6C6C61;
  v5 = 0xEA00000000007370;
  v6 = 0x61635F6C6C616D73;
  v7 = 0x7472617473;
  if (v2 != 3)
  {
    v7 = 0x656C746974;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 1701736302;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t *TSContentLanguage.Models.CharacterProperties.FontFeaturesType.version.unsafeMutableAddressor()
{
  if (qword_1019F2920 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.CharacterProperties.FontFeaturesType.version;
}

Swift::Int sub_10115695C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_101156A2C()
{
  String.hash(into:)();
}

Swift::Int sub_101156AE8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_101156BB4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10115C5A0(*a1);
  *a2 = result;
  return result;
}

void sub_101156BE4(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x65727574616566;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564695F65707974;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x726F7463656C6573;
    v2 = 0xE800000000000000;
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

uint64_t sub_101156C70()
{
  v1 = 0x65727574616566;
  v2 = 0x6564695F65707974;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 0x726F7463656C6573;
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

unint64_t sub_101156CF8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10115C5A0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_101156D20(uint64_t a1)
{
  v2 = sub_10115CC48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101156D5C(uint64_t a1)
{
  v2 = sub_10115CC48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TSContentLanguage.Models.CharacterProperties.FontFeaturesType.encode(to:)(void *a1)
{
  v3 = sub_1005B981C(&qword_101A2B7F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - v5;
  sub_100020E58(a1, a1[3]);
  sub_10115CC48();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v11 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v10 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F2920 != -1)
  {
    swift_once();
  }

  v8[1] = static TSContentLanguage.Models.CharacterProperties.FontFeaturesType.version;
  v9 = 3;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_101157018@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10115C5EC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void *TSContentLanguage.Models.CharacterProperties.LigatureType.version.unsafeMutableAddressor()
{
  if (qword_1019F2928 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.CharacterProperties.LigatureType.version;
}

uint64_t TSContentLanguage.Models.CharacterProperties.LigatureType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 7105633;
  }

  if (a1 == 1)
  {
    return 0x6465726975716572;
  }

  return 0x647261646E617473;
}

uint64_t sub_1011571C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6465726975716572;
  if (v2 != 1)
  {
    v3 = 0x647261646E617473;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 7105633;
  }

  if (v2)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  v6 = 0x6465726975716572;
  if (*a2 != 1)
  {
    v6 = 0x647261646E617473;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 7105633;
  }

  if (*a2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1011572C0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10115735C()
{
  String.hash(into:)();
}

Swift::Int sub_1011573E4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10115747C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8Freeform17TSContentLanguageO6ModelsO19CharacterPropertiesV12LigatureTypeO8rawValueAISgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1011574AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0x6465726975716572;
  if (v2 != 1)
  {
    v4 = 0x647261646E617473;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 7105633;
  }

  if (!v5)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

void *TSContentLanguage.Models.CharacterProperties.StrikethroughType.version.unsafeMutableAddressor()
{
  if (qword_1019F2930 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.CharacterProperties.StrikethroughType.version;
}

uint64_t TSContentLanguage.Models.CharacterProperties.StrikethroughType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x656C62756F64;
  }

  if (a1 == 1)
  {
    return 1701736302;
  }

  return 0x656C676E6973;
}

uint64_t sub_1011576CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  if (v2 != 1)
  {
    v4 = 0x656C676E6973;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x656C62756F64;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1701736302;
  if (*a2 != 1)
  {
    v8 = 0x656C676E6973;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656C62756F64;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1011577B4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_101157848()
{
  String.hash(into:)();
}

Swift::Int sub_1011578C8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_101157958@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8Freeform17TSContentLanguageO6ModelsO19CharacterPropertiesV17StrikethroughTypeO8rawValueAISgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_101157988(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE400000000000000;
  v5 = 1701736302;
  if (v2 != 1)
  {
    v5 = 0x656C676E6973;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C62756F64;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void *TSContentLanguage.Models.CharacterProperties.UnderlineType.version.unsafeMutableAddressor()
{
  if (qword_1019F2938 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.CharacterProperties.UnderlineType.version;
}

uint64_t TSContentLanguage.Models.CharacterProperties.UnderlineType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x656C62756F64;
  v2 = 0x656C676E6973;
  if (a1 != 2)
  {
    v2 = 2037801335;
  }

  if (a1)
  {
    v1 = 1701736302;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_101157BC4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_101157C6C()
{
  String.hash(into:)();
}

Swift::Int sub_101157D00()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_101157DA4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8Freeform17TSContentLanguageO6ModelsO19CharacterPropertiesV13UnderlineTypeO8rawValueAISgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_101157DD4(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x656C62756F64;
  v4 = 0xE600000000000000;
  v5 = 0x656C676E6973;
  if (*v1 != 2)
  {
    v5 = 2037801335;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 1701736302;
    v2 = 0xE400000000000000;
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

BOOL _s8Freeform17TSContentLanguageO6ModelsO19CharacterPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = *(v1 + 32);
  v4 = *(v2 + 32);
  if (v3 == 2)
  {
    if (v4 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == 2)
    {
      return 0;
    }

    v5 = *(v1 + 16);
    v6 = *v2;
    v7 = v2[1];
    v150[0] = *v1;
    v150[1] = v5;
    v151 = v3 & 1;
    v152[0] = v6;
    v152[1] = v7;
    v153 = v4 & 1;
    v8 = v1;
    v9 = v2;
    v10 = _s8Freeform17TSContentLanguageO6ModelsO5ColorO4RGBAV23__derived_struct_equalsySbAI_AItFZ_0(v150, v152);
    v2 = v9;
    v11 = v10;
    v1 = v8;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *(v1 + 33);
  v13 = *(v2 + 33);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else
  {
    v14 = 0;
    if (v13 == 2 || ((v13 ^ v12) & 1) != 0)
    {
      return v14;
    }
  }

  v15 = *(v1 + 34);
  v16 = *(v2 + 34);
  if (v15 == 3)
  {
    if (v16 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v16 == 3)
    {
      return 0;
    }

    v17 = 0x7069726373627573;
    v18 = 0xE900000000000074;
    if (v15 != 1)
    {
      v17 = 0x7263737265707573;
      v18 = 0xEB00000000747069;
    }

    v19 = v15 == 0;
    if (*(v1 + 34))
    {
      v20 = v17;
    }

    else
    {
      v20 = 0x746C7561666564;
    }

    if (v19)
    {
      v21 = 0xE700000000000000;
    }

    else
    {
      v21 = v18;
    }

    v22 = 0x7069726373627573;
    v23 = 0xE900000000000074;
    if (v16 != 1)
    {
      v22 = 0x7263737265707573;
      v23 = 0xEB00000000747069;
    }

    if (*(v2 + 34))
    {
      v24 = v22;
    }

    else
    {
      v24 = 0x746C7561666564;
    }

    if (*(v2 + 34))
    {
      v25 = v23;
    }

    else
    {
      v25 = 0xE700000000000000;
    }

    v26 = v1;
    v27 = v2;
    if (v20 == v24 && v21 == v25)
    {

      v2 = v27;
      v1 = v26;
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v2 = v27;
      v1 = v26;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v14 = *(v2 + 48);
  if (*(v1 + 48))
  {
    if (!*(v2 + 48))
    {
      return v14;
    }
  }

  else
  {
    if (*(v1 + 40) != *(v2 + 5))
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v29 = *(v1 + 49);
  v30 = *(v2 + 49);
  if (v29 == 2)
  {
    if (v30 != 2)
    {
      return 0;
    }

LABEL_46:
    v31 = *(v2 + 50);
    if (*(v1 + 50) == 5)
    {
      v32 = v1;
      v33 = v2;
      if (v31 != 5)
      {
        return 0;
      }
    }

    else
    {
      if (v31 == 5)
      {
        return 0;
      }

      v32 = v1;
      v33 = v2;
      if ((sub_100B5ADB8(*(v1 + 50), *(v2 + 50)) & 1) == 0)
      {
        return 0;
      }
    }

    memcpy(__dst, (v32 + 56), sizeof(__dst));
    v34 = v33;
    memcpy(v135, v33 + 56, sizeof(v135));
    memcpy(__src, (v32 + 56), 0x190uLL);
    v35 = v33;
    memcpy(&__src[400], v33 + 56, 0x190uLL);
    v36 = v32;
    memcpy(v134, (v32 + 56), sizeof(v134));
    if (sub_1007CE6B0(v134) == 1)
    {
      memcpy(v132, &__src[400], 0x190uLL);
      if (sub_1007CE6B0(v132) == 1)
      {
        sub_101153468(__dst, v149);
        sub_101153468(v135, v149);
LABEL_60:
        memcpy(v131, __src, sizeof(v131));
        sub_10000CAAC(v131, &qword_101A00768);
        v41 = v32;
        v42 = *(v32 + 456);
        v43 = v34;
        v44 = *(v34 + 456);
        if (v42 == 2)
        {
          if (v44 != 2)
          {
            return 0;
          }
        }

        else if (v44 == 2 || ((v44 ^ v42) & 1) != 0)
        {
          return 0;
        }

        v45 = *(v32 + 472);
        v46 = *(v35 + 59);
        if (v45)
        {
          if (!v46)
          {
            return 0;
          }

          if (*(v32 + 464) != *(v35 + 58) || v45 != v46)
          {
            v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v43 = v34;
            v41 = v32;
            if ((v47 & 1) == 0)
            {
              return 0;
            }
          }
        }

        else if (v46)
        {
          return 0;
        }

        v48 = *(v41 + 480);
        v49 = *(v43 + 480);
        if (v48 == 2)
        {
          if (v49 != 2)
          {
            return 0;
          }
        }

        else if (v49 == 2 || ((v49 ^ v48) & 1) != 0)
        {
          return 0;
        }

        v50 = *(v41 + 496);
        v51 = *(v43 + 62);
        if (v50)
        {
          if (!v51)
          {
            return 0;
          }

          if (*(v41 + 488) != *(v43 + 61) || v50 != v51)
          {
            v52 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v43 = v34;
            v41 = v32;
            if ((v52 & 1) == 0)
            {
              return 0;
            }
          }
        }

        else if (v51)
        {
          return 0;
        }

        v53 = *(v41 + 504);
        v54 = *(v43 + 504);
        if (v53 == 2)
        {
          if (v54 != 2)
          {
            return 0;
          }
        }

        else if (v54 == 2 || ((v54 ^ v53) & 1) != 0)
        {
          return 0;
        }

        v55 = *(v41 + 512);
        v56 = *(v43 + 64);
        if (v55)
        {
          if (!v56 || (sub_100672A60(v55, v56) & 1) == 0)
          {
            return 0;
          }
        }

        else if (v56)
        {
          return 0;
        }

        v57 = *(v32 + 520);
        v58 = *(v34 + 520);
        if (v57 == 2)
        {
          if (v58 != 2)
          {
            return 0;
          }
        }

        else if (v58 == 2 || ((v58 ^ v57) & 1) != 0)
        {
          return 0;
        }

        v59 = *(v32 + 536);
        v60 = *(v34 + 67);
        if (v59)
        {
          if (!v60 || (*(v32 + 528) != *(v34 + 66) || v59 != v60) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v60)
        {
          return 0;
        }

        v61 = *(v32 + 544);
        v62 = *(v34 + 544);
        if (v61 == 2)
        {
          if (v62 != 2)
          {
            return 0;
          }
        }

        else if (v62 == 2 || ((v62 ^ v61) & 1) != 0)
        {
          return 0;
        }

        v63 = *(v34 + 560);
        if (*(v32 + 560))
        {
          if (!*(v34 + 560))
          {
            return 0;
          }
        }

        else
        {
          if (*(v32 + 552) != *(v34 + 69))
          {
            v63 = 1;
          }

          if (v63)
          {
            return 0;
          }
        }

        v64 = *(v32 + 561);
        v65 = *(v34 + 561);
        if (v64 == 2)
        {
          if (v65 != 2)
          {
            return 0;
          }
        }

        else if (v65 == 2 || ((v65 ^ v64) & 1) != 0)
        {
          return 0;
        }

        v66 = *(v32 + 562);
        v67 = *(v34 + 562);
        if (v66 == 2)
        {
          if (v67 != 2)
          {
            return 0;
          }
        }

        else if (v67 == 2 || ((v67 ^ v66) & 1) != 0)
        {
          return 0;
        }

        v68 = *(v35 + 576);
        if (*(v32 + 576))
        {
          if (!*(v35 + 576))
          {
            return 0;
          }
        }

        else
        {
          if (*(v32 + 568) != *(v34 + 71))
          {
            v68 = 1;
          }

          if (v68)
          {
            return 0;
          }
        }

        v69 = *(v32 + 592);
        v70 = *(v34 + 74);
        if (v69)
        {
          if (!v70 || (*(v32 + 584) != *(v34 + 73) || v69 != v70) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v70)
        {
          return 0;
        }

        v71 = *(v32 + 600);
        v72 = *(v34 + 600);
        if (v71 == 2)
        {
          if (v72 != 2)
          {
            return 0;
          }
        }

        else if (v72 == 2 || ((v72 ^ v71) & 1) != 0)
        {
          return 0;
        }

        v73 = *(v32 + 601);
        v74 = *(v34 + 601);
        if (v73 == 3)
        {
          if (v74 != 3)
          {
            return 0;
          }
        }

        else
        {
          if (v74 == 3)
          {
            return 0;
          }

          v75 = 7105633;
          if (*(v32 + 601))
          {
            v76 = 0xE800000000000000;
            if (v73 == 1)
            {
              v77 = 0x6465726975716572;
            }

            else
            {
              v77 = 0x647261646E617473;
            }
          }

          else
          {
            v76 = 0xE300000000000000;
            v77 = 7105633;
          }

          if (*(v34 + 601))
          {
            v78 = 0xE800000000000000;
            if (v74 == 1)
            {
              v75 = 0x6465726975716572;
            }

            else
            {
              v75 = 0x647261646E617473;
            }
          }

          else
          {
            v78 = 0xE300000000000000;
          }

          if (v77 == v75 && v76 == v78)
          {
          }

          else
          {
            v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v79 & 1) == 0)
            {
              return 0;
            }
          }
        }

        v80 = *(v36 + 704);
        v81 = *(v35 + 352);
        if (v80 == 4)
        {
          if (v81 != 4)
          {
            return 0;
          }
        }

        else
        {
          if (v81 == 4)
          {
            return 0;
          }

          if (v80 == 3)
          {
            if (v81 != 3)
            {
              return 0;
            }
          }

          else
          {
            v87 = *(v36 + 656);
            v129[2] = *(v36 + 640);
            v129[3] = v87;
            v88 = *(v36 + 688);
            v129[4] = *(v36 + 672);
            v129[5] = v88;
            v89 = *(v36 + 624);
            v129[0] = *(v36 + 608);
            v129[1] = v89;
            LOWORD(v129[6]) = v80;
            if (v81 == 3)
            {
              return 0;
            }

            v90 = v35[41];
            v130[2] = v35[40];
            v130[3] = v90;
            v91 = v35[43];
            v130[4] = v35[42];
            v130[5] = v91;
            v92 = v35[39];
            v130[0] = v35[38];
            v130[1] = v92;
            LOWORD(v130[6]) = v81;
            if ((_s8Freeform17TSContentLanguageO6ModelsO14ScaffoldShadowO0eF4TypeV23__derived_struct_equalsySbAI_AItFZ_0(v129, v130) & 1) == 0)
            {
              return 0;
            }
          }
        }

        v82 = *(v36 + 706);
        v83 = *(v35 + 706);
        if (v82 == 3)
        {
          if (v83 != 3)
          {
            return 0;
          }
        }

        else
        {
          if (v83 == 3)
          {
            return 0;
          }

          v84 = 0x656C62756F64;
          if (*(v36 + 706))
          {
            if (v82 == 1)
            {
              v85 = 0xE400000000000000;
              v86 = 1701736302;
            }

            else
            {
              v85 = 0xE600000000000000;
              v86 = 0x656C676E6973;
            }
          }

          else
          {
            v85 = 0xE600000000000000;
            v86 = 0x656C62756F64;
          }

          if (*(v35 + 706))
          {
            if (v83 == 1)
            {
              v93 = 0xE400000000000000;
              v84 = 1701736302;
            }

            else
            {
              v93 = 0xE600000000000000;
              v84 = 0x656C676E6973;
            }
          }

          else
          {
            v93 = 0xE600000000000000;
          }

          if (v86 == v84 && v85 == v93)
          {
          }

          else
          {
            v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v94 & 1) == 0)
            {
              return 0;
            }
          }
        }

        v95 = *(v36 + 744);
        v96 = *(v35 + 744);
        if (v95 == 2)
        {
          if (v96 != 2)
          {
            return 0;
          }
        }

        else
        {
          if (v96 == 2)
          {
            return 0;
          }

          v97 = *(v36 + 728);
          v98 = *(v35 + 712);
          v99 = *(v35 + 728);
          v145[0] = *(v36 + 712);
          v145[1] = v97;
          v146 = v95 & 1;
          v147[0] = v98;
          v147[1] = v99;
          v148 = v96 & 1;
          if ((_s8Freeform17TSContentLanguageO6ModelsO5ColorO4RGBAV23__derived_struct_equalsySbAI_AItFZ_0(v145, v147) & 1) == 0)
          {
            return 0;
          }
        }

        v100 = *(v36 + 745);
        v101 = *(v35 + 745);
        if (v100 == 2)
        {
          if (v101 != 2)
          {
            return 0;
          }
        }

        else if (v101 == 2 || ((v101 ^ v100) & 1) != 0)
        {
          return 0;
        }

        v102 = *(v35 + 760);
        if (*(v36 + 760))
        {
          if (!*(v35 + 760))
          {
            return 0;
          }
        }

        else
        {
          if (*(v36 + 752) != *(v35 + 94))
          {
            v102 = 1;
          }

          if (v102)
          {
            return 0;
          }
        }

        v103 = *(v36 + 768);
        v104 = *(v36 + 784);
        v105 = *(v36 + 800);
        v106 = *(v36 + 816);
        v107 = v35[49];
        v108 = v35[50];
        v109 = *(v35 + 816);
        v110.i64[0] = -256;
        v110.i64[1] = -256;
        v111 = vmovn_s64(vceqq_s64(vandq_s8(vzip1q_s64(v108, v105), v110), vdupq_n_s64(0xFFFFFFFE00uLL)));
        if ((v111.i8[4] & 1) != 0 && v106 < 0x10)
        {
          if ((v111.i8[0] & (v109 < 0x10)) == 0)
          {
            return 0;
          }
        }

        else
        {
          if ((v111.i8[0] & (v109 < 0x10)) != 0)
          {
            return 0;
          }

          v143[0] = v35[48];
          v143[1] = v107;
          v143[2] = v108;
          v144 = v109;
          v141[0] = v103;
          v141[1] = v104;
          v141[2] = v105;
          v142 = v106;
          if (!_s8Freeform17TSContentLanguageO6ModelsO10TextStrokeO21__derived_enum_equalsySbAG_AGtFZ_0(v141, v143))
          {
            return 0;
          }
        }

        v112 = *(v35 + 832);
        if (*(v36 + 832))
        {
          if (!*(v35 + 832))
          {
            return 0;
          }
        }

        else
        {
          if (*(v36 + 824) != *(v35 + 103))
          {
            v112 = 1;
          }

          if (v112)
          {
            return 0;
          }
        }

        v113 = *(v36 + 833);
        v114 = *(v35 + 833);
        if (v113 == 4)
        {
          if (v114 != 4)
          {
            return 0;
          }
        }

        else if (v114 == 4 || (sub_100B5ACA4(v113, v114) & 1) == 0)
        {
          return 0;
        }

        v115 = *(v36 + 872);
        v116 = *(v35 + 872);
        if (v115 == 2)
        {
          if (v116 != 2)
          {
            return 0;
          }
        }

        else
        {
          if (v116 == 2)
          {
            return 0;
          }

          v117 = *(v36 + 856);
          v118 = *(v35 + 840);
          v119 = *(v35 + 856);
          v137[0] = *(v36 + 840);
          v137[1] = v117;
          v138 = v115 & 1;
          v139[0] = v118;
          v139[1] = v119;
          v140 = v116 & 1;
          if ((_s8Freeform17TSContentLanguageO6ModelsO5ColorO4RGBAV23__derived_struct_equalsySbAI_AItFZ_0(v137, v139) & 1) == 0)
          {
            return 0;
          }
        }

        v120 = *(v36 + 873);
        v121 = *(v35 + 873);
        if (v120 == 2)
        {
          if (v121 != 2)
          {
            return 0;
          }
        }

        else if (v121 == 2 || ((v121 ^ v120) & 1) != 0)
        {
          return 0;
        }

        v122 = *(v35 + 888);
        if (*(v36 + 888))
        {
          if (!*(v35 + 888))
          {
            return 0;
          }
        }

        else
        {
          if (*(v36 + 880) != *(v35 + 110))
          {
            v122 = 1;
          }

          if (v122)
          {
            return 0;
          }
        }

        v123 = *(v36 + 889);
        v124 = *(v35 + 889);
        if (v123 == 2)
        {
          if (v124 != 2)
          {
            return 0;
          }
        }

        else if (v124 == 2 || ((v124 ^ v123) & 1) != 0)
        {
          return 0;
        }

        v125 = *(v36 + 890);
        v126 = *(v35 + 890);
        if (v125 == 2)
        {
          if (v126 != 2)
          {
            return 0;
          }
        }

        else if (v126 == 2 || ((v126 ^ v125) & 1) != 0)
        {
          return 0;
        }

        v127 = *(v36 + 891);
        v128 = *(v35 + 891);
        if (v127 != 3)
        {
          return v128 != 3 && (sub_100B556AC(v127, v128) & 1) != 0;
        }

        return v128 == 3;
      }
    }

    else
    {
      memcpy(v131, &__src[400], sizeof(v131));
      if (sub_1007CE6B0(v131) != 1)
      {
        memcpy(v130, &__src[400], sizeof(v130));
        memcpy(v132, &__src[400], 0x190uLL);
        memcpy(v149, __src, sizeof(v149));
        sub_101153468(__dst, v129);
        sub_101153468(v135, v129);
        v40 = _s8Freeform17TSContentLanguageO6ModelsO12ScaffoldFillV0eF4TypeO21__derived_enum_equalsySbAI_AItFZ_0(v149, v132);
        sub_10000CAAC(v130, &qword_101A00768);
        if (v40)
        {
          goto LABEL_60;
        }

        memcpy(v129, __src, sizeof(v129));
        v37 = &qword_101A00768;
        v38 = v129;
LABEL_56:
        sub_10000CAAC(v38, v37);
        return 0;
      }
    }

    memcpy(v132, __src, sizeof(v132));
    sub_101153468(__dst, v149);
    sub_101153468(v135, v149);
    v37 = &unk_101A00770;
    v38 = v132;
    goto LABEL_56;
  }

  v14 = 0;
  if (v30 != 2 && ((v30 ^ v29) & 1) == 0)
  {
    goto LABEL_46;
  }

  return v14;
}

uint64_t sub_101158BFC()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x27)
  {
    return 39;
  }

  else
  {
    return v0;
  }
}

void *sub_101158C50(uint64_t a1)
{
  __chkstk_darwin(a1);
  v217 = v1;
  v3 = v2;
  v153 = v4;
  v5 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v5 - 8);
  v181 = &v140 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v205 = &v140 - v8;
  __chkstk_darwin(v9);
  v216 = &v140 - v10;
  v11 = type metadata accessor for CodingUserInfoKey();
  v184 = *(v11 - 8);
  v185 = v11;
  __chkstk_darwin(v11);
  v180 = &v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v140 - v14;
  __chkstk_darwin(v16);
  v18 = &v140 - v17;
  v19 = sub_1005B981C(&qword_101A00778);
  v154 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v140 - v20;
  v334 = 1;
  sub_1005BC698(v343);
  memcpy(&v333[5], v343, 0x190uLL);
  v327 = 1;
  v324 = 1;
  v316 = 1;
  v313 = 1;
  v308 = 1;
  v22 = v3[3];
  v344 = v3;
  sub_100020E58(v3, v22);
  sub_10115C1E4();
  v23 = v217;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    v217 = v23;
LABEL_15:
    v204 = 0;
    v205 = 0;
    v203 = 0;
    v201 = 0;
    v198 = 0;
    v199 = 0;
    v196 = 0;
    v197 = 0;
    v195 = 0;
    v191 = 0;
    v192 = 0;
    v193 = 0;
    v178 = 0;
    v179 = 0;
    v185 = 0;
    v186 = 0;
    v180 = 0;
    v181 = 0;
    v175 = 0;
    v176 = 0;
    v173 = 0;
    v174 = 0;
    LODWORD(v184) = 0;
    v171 = 0;
    v172 = 0;
    v182 = 0;
    v183 = 0;
    v187 = 0;
    v188 = 0;
    v177 = 0;
    v189 = 0;
    v190 = 0;
    v194 = 0;
    v202 = 0;
    v200 = 0;
    v206 = 0;
    v213 = 0;
    v214 = 0;
    v215 = 0;
    v216 = 0;
    v208 = 0;
    v209 = 0;
    v210 = 0;
    v211 = 0;
    v33 = 0;
    v207 = 5;
    v168 = 0xFFFFFFFE00;
    v163 = 2;
    v155 = 2;
    v156 = 2;
    v157 = 2;
    v158 = 2;
    v159 = 4;
    v160 = 2;
    v161 = 3;
    v162 = 2;
    v164 = 2;
    v165 = 2;
    v166 = 4;
    v167 = 2;
    v169 = 2;
    v170 = 3;
    v212 = 2;
    v34 = 2;
    v35 = 2;
    v36 = 2;
    v37 = 3;
    v38 = 2;
    v39 = 2;
    v40 = v344;
LABEL_16:
    sub_100005070(v40);
    v222[0] = v33;
    v222[1] = v209;
    v222[2] = v210;
    v222[3] = v211;
    LOBYTE(v222[4]) = v39;
    BYTE1(v222[4]) = v38;
    BYTE2(v222[4]) = v37;
    *(&v222[4] + 3) = v335;
    HIBYTE(v222[4]) = v336;
    v222[5] = v208;
    LOBYTE(v222[6]) = v334;
    BYTE1(v222[6]) = v36;
    BYTE2(v222[6]) = v207;
    memcpy(&v222[6] + 3, v333, 0x195uLL);
    v223 = v35;
    v225 = v215;
    v226 = v216;
    v227 = v34;
    v229 = v213;
    v230 = v214;
    v231 = v212;
    v233 = v206;
    v234 = v169;
    v236 = v200;
    v237 = v202;
    v238 = v167;
    v240 = v194;
    v242 = v165;
    v243 = v164;
    v246 = v190;
    v249 = v188;
    v250 = v189;
    v251 = v162;
    v252 = v161;
    v255 = v204;
    v256 = v205;
    v257 = v203;
    v258 = v201;
    v259 = v199;
    v260 = v198;
    v261 = v197;
    v262 = v195;
    v263 = v192;
    v264 = v191;
    *v224 = *v332;
    *v228 = *v331;
    *v232 = *v330;
    *v235 = *v329;
    *v239 = *v328;
    v244 = v325;
    *v248 = *v323;
    v253 = v321;
    *&v224[3] = *&v332[3];
    *&v228[3] = *&v331[3];
    *&v232[3] = *&v330[3];
    *&v235[3] = *&v329[3];
    *&v239[3] = *&v328[3];
    v241 = v327;
    v245 = v326;
    v247 = v324;
    *&v248[3] = *&v323[3];
    v254 = v322;
    v265 = v196;
    v266 = v193;
    v267 = v159;
    v268 = v170;
    v269 = v319;
    v270 = v320;
    v271 = v177;
    v272 = v183;
    v273 = v186;
    v274 = v187;
    v275 = v160;
    v276 = v157;
    v277 = v317;
    v278 = v318;
    v279 = v182;
    v280 = v316;
    *v281 = *v315;
    *&v281[3] = *&v315[3];
    v282 = v171;
    v283 = v172;
    v284 = v174;
    v285 = v176;
    v286 = v168;
    v287 = v179;
    v288 = v184;
    *v289 = *v314;
    *&v289[3] = *&v314[3];
    v290 = v180;
    v291 = v313;
    v292 = v166;
    v293 = v311;
    v294 = v312;
    v295 = v173;
    v296 = v175;
    v297 = v181;
    v298 = v185;
    v299 = v158;
    v300 = v156;
    v301 = v309;
    v302 = v310;
    v303 = v178;
    v304 = v308;
    v305 = v155;
    v306 = v163;
    v307 = 3;
    return sub_1011541A8(v222);
  }

  v215 = v18;
  v204 = v15;
  LOBYTE(v222[0]) = 37;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = v154;
  if (v25)
  {
    if (v24 == 0xD000000000000034 && v25 == 0x800000010158A470)
    {
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        sub_1007C8648();
        v31 = swift_allocError();
        v32[1] = 0;
        v32[2] = 0;
        *v32 = 0;
        v217 = v31;
        swift_willThrow();
        goto LABEL_14;
      }
    }
  }

  type metadata accessor for TSCLVersion();
  v218[0] = 38;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v28 = v222[0];
  if (v222[0])
  {
    if (qword_1019F2908 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.CharacterProperties.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v28[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      v29 = swift_allocError();
      *v30 = xmmword_101463530;
      *(v30 + 16) = 0;
      v217 = v29;
      swift_willThrow();

LABEL_14:
      (*(v26 + 8))(v21, v19);
      goto LABEL_15;
    }
  }

  sub_100020E58(v344, v344[3]);
  v42 = dispatch thunk of Decoder.userInfo.getter();
  sub_1007B9F98(0, v42, 0, 0, v337);

  v152 = v337[0];
  v209 = v337[1];
  v210 = v337[2];
  v211 = v337[3];
  v43 = v338;
  sub_100020E58(v344, v344[3]);
  v44 = dispatch thunk of Decoder.userInfo.getter();
  v151 = sub_1007B9FC0(1, v44, 0, 0);

  sub_100020E58(v344, v344[3]);
  v45 = dispatch thunk of Decoder.userInfo.getter();
  v150 = sub_1007B9FE8(2, v45, 0, 0);

  sub_100020E58(v344, v344[3]);
  v46 = dispatch thunk of Decoder.userInfo.getter();
  v47 = sub_1007BA02C(3, v46, 0, 0);
  v49 = v48;
  v208 = v47;

  v334 = v49 & 1;
  sub_100020E58(v344, v344[3]);
  v50 = dispatch thunk of Decoder.userInfo.getter();
  v148 = sub_1007B9FC0(4, v50, 0, 0);
  v149 = v43;

  sub_100020E58(v344, v344[3]);
  v51 = dispatch thunk of Decoder.userInfo.getter();
  v207 = sub_1007BA054(5, v51, 0, 0);

  sub_100020E58(v344, v344[3]);
  dispatch thunk of Decoder.userInfo.getter();
  v220[407] = 6;
  sub_10115DDEC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v217 = 0;
  memcpy(v218, v222, 0x190uLL);
  if (sub_1007CE6B0(v218) == 1)
  {

    memcpy(v220, v222, 0x190uLL);
    sub_10000CAAC(v220, &qword_101A00768);
    v52 = v343;
  }

  else
  {

    v52 = v222;
  }

  memcpy(v221, v52, sizeof(v221));
  memcpy(v220, &v333[5], 0x190uLL);
  sub_10000CAAC(v220, &qword_101A00768);
  memcpy(&v333[5], v221, 0x190uLL);
  sub_100020E58(v344, v344[3]);
  v53 = dispatch thunk of Decoder.userInfo.getter();
  v54 = v217;
  v147 = sub_1007B9FC0(7, v53, 0, 0);
  v217 = v54;
  if (v54)
  {
    (*(v154 + 8))(v21, v19);

    v204 = 0;
    v205 = 0;
    v203 = 0;
    v201 = 0;
    v198 = 0;
    v199 = 0;
    v196 = 0;
    v197 = 0;
    v195 = 0;
    v191 = 0;
    v192 = 0;
    v193 = 0;
    v178 = 0;
    v179 = 0;
    v185 = 0;
    v186 = 0;
    v180 = 0;
    v181 = 0;
    v175 = 0;
    v176 = 0;
    v173 = 0;
    v174 = 0;
    LODWORD(v184) = 0;
    v171 = 0;
    v172 = 0;
    v182 = 0;
    v183 = 0;
    v187 = 0;
    v188 = 0;
    v177 = 0;
    v189 = 0;
    v190 = 0;
    v194 = 0;
    v202 = 0;
    v200 = 0;
    v206 = 0;
    v213 = 0;
    v214 = 0;
    v215 = 0;
    v216 = 0;
    v168 = 0xFFFFFFFE00;
    v163 = 2;
    v155 = 2;
    v156 = 2;
    v157 = 2;
    v158 = 2;
    v159 = 4;
    v160 = 2;
    v161 = 3;
    v162 = 2;
    v164 = 2;
    v165 = 2;
    v166 = 4;
    v167 = 2;
    v169 = 2;
    v170 = 3;
    v212 = 2;
    v34 = 2;
    v35 = 2;
    v40 = v344;
    v33 = v152;
    v39 = v149;
    v37 = v150;
    v38 = v151;
    v36 = v148;
    goto LABEL_16;
  }

  sub_100020E58(v344, v344[3]);
  v55 = dispatch thunk of Decoder.userInfo.getter();
  v56 = v217;
  v215 = sub_1007BA098(8, v55, 0, 0);
  v216 = v57;
  v217 = v56;
  if (v56)
  {
    (*(v154 + 8))(v21, v19);

    v204 = 0;
    v205 = 0;
    v203 = 0;
    v201 = 0;
    v198 = 0;
    v199 = 0;
    v196 = 0;
    v197 = 0;
    v195 = 0;
    v191 = 0;
    v192 = 0;
    v193 = 0;
    v178 = 0;
    v179 = 0;
    v185 = 0;
    v186 = 0;
    v180 = 0;
    v181 = 0;
    v175 = 0;
    v176 = 0;
    v173 = 0;
    v174 = 0;
    LODWORD(v184) = 0;
    v171 = 0;
    v172 = 0;
    v182 = 0;
    v183 = 0;
    v187 = 0;
    v188 = 0;
    v177 = 0;
    v189 = 0;
    v190 = 0;
    v194 = 0;
    v202 = 0;
    v200 = 0;
    v206 = 0;
    v213 = 0;
    v214 = 0;
    v215 = 0;
    v216 = 0;
LABEL_28:
    v168 = 0xFFFFFFFE00;
    v163 = 2;
    v155 = 2;
    v156 = 2;
    v157 = 2;
    v158 = 2;
    v159 = 4;
    v160 = 2;
    v161 = 3;
    v162 = 2;
    v164 = 2;
    v165 = 2;
    v166 = 4;
    v167 = 2;
    v169 = 2;
    v170 = 3;
    v212 = 2;
    v34 = 2;
    v40 = v344;
    v33 = v152;
    v39 = v149;
    v37 = v150;
    v38 = v151;
    v35 = v147;
    v36 = v148;
    goto LABEL_16;
  }

  sub_100020E58(v344, v344[3]);
  v58 = dispatch thunk of Decoder.userInfo.getter();
  v59 = v217;
  v146 = sub_1007B9FC0(9, v58, 0, 0);
  v217 = v59;
  if (v59)
  {
    (*(v154 + 8))(v21, v19);

    v204 = 0;
    v205 = 0;
    v203 = 0;
    v201 = 0;
    v198 = 0;
    v199 = 0;
    v196 = 0;
    v197 = 0;
    v195 = 0;
    v191 = 0;
    v192 = 0;
    v193 = 0;
    v178 = 0;
    v179 = 0;
    v185 = 0;
    v186 = 0;
    v180 = 0;
    v181 = 0;
    v175 = 0;
    v176 = 0;
    v173 = 0;
    v174 = 0;
    LODWORD(v184) = 0;
    v171 = 0;
    v172 = 0;
    v182 = 0;
    v183 = 0;
    v187 = 0;
    v188 = 0;
    v177 = 0;
    v189 = 0;
    v190 = 0;
    v194 = 0;
    v202 = 0;
    v200 = 0;
    v206 = 0;
    v213 = 0;
    v214 = 0;
    goto LABEL_28;
  }

  sub_100020E58(v344, v344[3]);
  v60 = dispatch thunk of Decoder.userInfo.getter();
  v61 = v217;
  v213 = sub_1007BA098(10, v60, 0, 0);
  v214 = v62;
  v217 = v61;
  if (v61)
  {
    (*(v154 + 8))(v21, v19);

    v204 = 0;
    v205 = 0;
    v203 = 0;
    v201 = 0;
    v198 = 0;
    v199 = 0;
    v196 = 0;
    v197 = 0;
    v195 = 0;
    v191 = 0;
    v192 = 0;
    v193 = 0;
    v178 = 0;
    v179 = 0;
    v185 = 0;
    v186 = 0;
    v180 = 0;
    v181 = 0;
    v175 = 0;
    v176 = 0;
    v173 = 0;
    v174 = 0;
    LODWORD(v184) = 0;
    v171 = 0;
    v172 = 0;
    v182 = 0;
    v183 = 0;
    v187 = 0;
    v188 = 0;
    v177 = 0;
    v189 = 0;
    v190 = 0;
    v194 = 0;
    v202 = 0;
    v200 = 0;
    v206 = 0;
    v213 = 0;
    v214 = 0;
LABEL_33:
    v168 = 0xFFFFFFFE00;
    v163 = 2;
    v155 = 2;
    v156 = 2;
    v157 = 2;
    v158 = 2;
    v159 = 4;
    v160 = 2;
    v161 = 3;
    v162 = 2;
    v164 = 2;
    v165 = 2;
    v166 = 4;
    v167 = 2;
    v169 = 2;
    v170 = 3;
    v212 = 2;
LABEL_34:
    v40 = v344;
    v33 = v152;
    v39 = v149;
    v37 = v150;
    v38 = v151;
    v35 = v147;
    v36 = v148;
    v34 = v146;
    goto LABEL_16;
  }

  sub_100020E58(v344, v344[3]);
  v63 = dispatch thunk of Decoder.userInfo.getter();
  v64 = v217;
  v212 = sub_1007B9FC0(11, v63, 0, 0);
  v217 = v64;
  if (v64)
  {
    (*(v154 + 8))(v21, v19);

    v204 = 0;
    v205 = 0;
    v203 = 0;
    v201 = 0;
    v198 = 0;
    v199 = 0;
    v196 = 0;
    v197 = 0;
    v195 = 0;
    v191 = 0;
    v192 = 0;
    v193 = 0;
    v178 = 0;
    v179 = 0;
    v185 = 0;
    v186 = 0;
    v180 = 0;
    v181 = 0;
    v175 = 0;
    v176 = 0;
    v173 = 0;
    v174 = 0;
    LODWORD(v184) = 0;
    v171 = 0;
    v172 = 0;
    v182 = 0;
    v183 = 0;
    v187 = 0;
    v188 = 0;
    v177 = 0;
    v189 = 0;
    v190 = 0;
    v194 = 0;
    v202 = 0;
    v200 = 0;
    v206 = 0;
    goto LABEL_33;
  }

  sub_100020E58(v344, v344[3]);
  v65 = dispatch thunk of Decoder.userInfo.getter();
  v66 = v217;
  v206 = sub_1007BA0C0(12, v65, 0, 0);
  v217 = v66;
  if (v66)
  {
    (*(v154 + 8))(v21, v19);

    v204 = 0;
    v205 = 0;
    v203 = 0;
    v201 = 0;
    v198 = 0;
    v199 = 0;
    v196 = 0;
    v197 = 0;
    v195 = 0;
    v191 = 0;
    v192 = 0;
    v193 = 0;
    v178 = 0;
    v179 = 0;
    v185 = 0;
    v186 = 0;
    v180 = 0;
    v181 = 0;
    v175 = 0;
    v176 = 0;
    v173 = 0;
    v174 = 0;
    LODWORD(v184) = 0;
    v171 = 0;
    v172 = 0;
    v182 = 0;
    v183 = 0;
    v187 = 0;
    v188 = 0;
    v177 = 0;
    v189 = 0;
    v190 = 0;
    v194 = 0;
    v202 = 0;
    v200 = 0;
    v206 = 0;
LABEL_39:
    v168 = 0xFFFFFFFE00;
    v163 = 2;
    v155 = 2;
    v156 = 2;
    v157 = 2;
    v158 = 2;
    v159 = 4;
    v160 = 2;
    v161 = 3;
    v162 = 2;
    v164 = 2;
    v165 = 2;
    v166 = 4;
    v167 = 2;
    v169 = 2;
    v170 = 3;
    goto LABEL_34;
  }

  sub_100020E58(v344, v344[3]);
  v67 = dispatch thunk of Decoder.userInfo.getter();
  v68 = v217;
  v169 = sub_1007B9FC0(13, v67, 0, 0);
  v217 = v68;
  if (v68)
  {
    (*(v154 + 8))(v21, v19);

    v204 = 0;
    v205 = 0;
    v203 = 0;
    v201 = 0;
    v198 = 0;
    v199 = 0;
    v196 = 0;
    v197 = 0;
    v195 = 0;
    v191 = 0;
    v192 = 0;
    v193 = 0;
    v178 = 0;
    v179 = 0;
    v185 = 0;
    v186 = 0;
    v180 = 0;
    v181 = 0;
    v175 = 0;
    v176 = 0;
    v173 = 0;
    v174 = 0;
    LODWORD(v184) = 0;
    v171 = 0;
    v172 = 0;
    v182 = 0;
    v183 = 0;
    v187 = 0;
    v188 = 0;
    v177 = 0;
    v189 = 0;
    v190 = 0;
    v194 = 0;
    v202 = 0;
    v200 = 0;
    goto LABEL_39;
  }

  sub_100020E58(v344, v344[3]);
  v69 = dispatch thunk of Decoder.userInfo.getter();
  v70 = v217;
  v200 = sub_1007BA098(14, v69, 0, 0);
  v202 = v71;
  v217 = v70;
  if (v70)
  {
    (*(v154 + 8))(v21, v19);

    v204 = 0;
    v205 = 0;
    v203 = 0;
    v201 = 0;
    v198 = 0;
    v199 = 0;
    v196 = 0;
    v197 = 0;
    v195 = 0;
    v191 = 0;
    v192 = 0;
    v193 = 0;
    v178 = 0;
    v179 = 0;
    v185 = 0;
    v186 = 0;
    v180 = 0;
    v181 = 0;
    v175 = 0;
    v176 = 0;
    v173 = 0;
    v174 = 0;
    LODWORD(v184) = 0;
    v171 = 0;
    v172 = 0;
    v182 = 0;
    v183 = 0;
    v187 = 0;
    v188 = 0;
    v177 = 0;
    v189 = 0;
    v190 = 0;
    v194 = 0;
    v202 = 0;
    v200 = 0;
LABEL_44:
    v170 = 3;
    v168 = 0xFFFFFFFE00;
    v163 = 2;
    v155 = 2;
    v156 = 2;
    v157 = 2;
    v158 = 2;
    v159 = 4;
    v160 = 2;
    v161 = 3;
    v162 = 2;
    v164 = 2;
    v165 = 2;
    v166 = 4;
    v167 = 2;
    goto LABEL_34;
  }

  sub_100020E58(v344, v344[3]);
  v72 = dispatch thunk of Decoder.userInfo.getter();
  v73 = v217;
  v167 = sub_1007B9FC0(15, v72, 0, 0);
  v217 = v73;
  if (v73)
  {
    (*(v154 + 8))(v21, v19);

    v204 = 0;
    v205 = 0;
    v203 = 0;
    v201 = 0;
    v198 = 0;
    v199 = 0;
    v196 = 0;
    v197 = 0;
    v195 = 0;
    v191 = 0;
    v192 = 0;
    v193 = 0;
    v178 = 0;
    v179 = 0;
    v185 = 0;
    v186 = 0;
    v180 = 0;
    v181 = 0;
    v175 = 0;
    v176 = 0;
    v173 = 0;
    v174 = 0;
    LODWORD(v184) = 0;
    v171 = 0;
    v172 = 0;
    v182 = 0;
    v183 = 0;
    v187 = 0;
    v188 = 0;
    v177 = 0;
    v189 = 0;
    v190 = 0;
    v194 = 0;
    goto LABEL_44;
  }

  sub_100020E58(v344, v344[3]);
  v74 = dispatch thunk of Decoder.userInfo.getter();
  v75 = v217;
  v194 = sub_1007BA02C(16, v74, 0, 0);
  v217 = v75;
  if (v75)
  {
    (*(v154 + 8))(v21, v19);

    v204 = 0;
    v205 = 0;
    v203 = 0;
    v201 = 0;
    v198 = 0;
    v199 = 0;
    v196 = 0;
    v197 = 0;
    v195 = 0;
    v191 = 0;
    v192 = 0;
    v193 = 0;
    v178 = 0;
    v179 = 0;
    v185 = 0;
    v186 = 0;
    v180 = 0;
    v181 = 0;
    v175 = 0;
    v176 = 0;
    v173 = 0;
    v174 = 0;
    LODWORD(v184) = 0;
    v171 = 0;
    v172 = 0;
    v182 = 0;
    v183 = 0;
    v187 = 0;
    v188 = 0;
    v177 = 0;
    v189 = 0;
    v190 = 0;
    v194 = 0;
LABEL_49:
    v170 = 3;
    v168 = 0xFFFFFFFE00;
    v163 = 2;
    v155 = 2;
    v156 = 2;
    v157 = 2;
    v158 = 2;
    v159 = 4;
    v160 = 2;
    v161 = 3;
    v162 = 2;
    v164 = 2;
    v165 = 2;
    v166 = 4;
    goto LABEL_34;
  }

  v77 = v76;

  v327 = v77 & 1;
  sub_100020E58(v344, v344[3]);
  v78 = dispatch thunk of Decoder.userInfo.getter();
  v79 = v217;
  v165 = sub_1007B9FC0(17, v78, 0, 0);
  v217 = v79;
  if (v79)
  {
    (*(v154 + 8))(v21, v19);

    v204 = 0;
    v205 = 0;
    v203 = 0;
    v201 = 0;
    v198 = 0;
    v199 = 0;
    v196 = 0;
    v197 = 0;
    v195 = 0;
    v191 = 0;
    v192 = 0;
    v193 = 0;
    v178 = 0;
    v179 = 0;
    v185 = 0;
    v186 = 0;
    v180 = 0;
    v181 = 0;
    v175 = 0;
    v176 = 0;
    v173 = 0;
    v174 = 0;
    LODWORD(v184) = 0;
    v171 = 0;
    v172 = 0;
    v182 = 0;
    v183 = 0;
    v187 = 0;
    v188 = 0;
    v177 = 0;
    v189 = 0;
    v190 = 0;
    goto LABEL_49;
  }

  sub_100020E58(v344, v344[3]);
  v80 = dispatch thunk of Decoder.userInfo.getter();
  v81 = v217;
  v164 = sub_1007B9FC0(18, v80, 0, 0);
  v217 = v81;
  if (v81)
  {
    (*(v154 + 8))(v21, v19);

    v204 = 0;
    v205 = 0;
    v203 = 0;
    v201 = 0;
    v198 = 0;
    v199 = 0;
    v196 = 0;
    v197 = 0;
    v195 = 0;
    v191 = 0;
    v192 = 0;
    v193 = 0;
    v178 = 0;
    v179 = 0;
    v185 = 0;
    v186 = 0;
    v180 = 0;
    v181 = 0;
    v175 = 0;
    v176 = 0;
    v173 = 0;
    v174 = 0;
    LODWORD(v184) = 0;
    v171 = 0;
    v172 = 0;
    v182 = 0;
    v183 = 0;
    v187 = 0;
    v188 = 0;
    v177 = 0;
    v189 = 0;
    v190 = 0;
    v166 = 4;
    v170 = 3;
    v168 = 0xFFFFFFFE00;
    v163 = 2;
    v155 = 2;
    v156 = 2;
    v157 = 2;
    v158 = 2;
    v159 = 4;
    v160 = 2;
    v161 = 3;
    v162 = 2;
    v164 = 2;
    goto LABEL_34;
  }

  sub_100020E58(v344, v344[3]);
  v82 = dispatch thunk of Decoder.userInfo.getter();
  v83 = v217;
  v190 = sub_1007BA02C(19, v82, 0, 0);
  v217 = v83;
  if (v83)
  {
    (*(v154 + 8))(v21, v19);

    v204 = 0;
    v205 = 0;
    v203 = 0;
    v201 = 0;
    v198 = 0;
    v199 = 0;
    v196 = 0;
    v197 = 0;
    v195 = 0;
    v191 = 0;
    v192 = 0;
    v193 = 0;
    v178 = 0;
    v179 = 0;
    v185 = 0;
    v186 = 0;
    v180 = 0;
    v181 = 0;
    v175 = 0;
    v176 = 0;
    v173 = 0;
    v174 = 0;
    LODWORD(v184) = 0;
    v171 = 0;
    v172 = 0;
    v182 = 0;
    v183 = 0;
    v187 = 0;
    v188 = 0;
    v177 = 0;
    v189 = 0;
    v190 = 0;
LABEL_58:
    v166 = 4;
    v170 = 3;
    v168 = 0xFFFFFFFE00;
    v163 = 2;
    v155 = 2;
    v156 = 2;
    v157 = 2;
    v158 = 2;
    v159 = 4;
    v160 = 2;
    v161 = 3;
    v162 = 2;
    goto LABEL_34;
  }

  v85 = v84;

  v324 = v85 & 1;
  sub_100020E58(v344, v344[3]);
  v86 = dispatch thunk of Decoder.userInfo.getter();
  v87 = v217;
  v188 = sub_1007BA098(20, v86, 0, 0);
  v189 = v88;
  v217 = v87;
  if (v87)
  {
    (*(v154 + 8))(v21, v19);

    v204 = 0;
    v205 = 0;
    v203 = 0;
    v201 = 0;
    v198 = 0;
    v199 = 0;
    v196 = 0;
    v197 = 0;
    v195 = 0;
    v191 = 0;
    v192 = 0;
    v193 = 0;
    v178 = 0;
    v179 = 0;
    v185 = 0;
    v186 = 0;
    v180 = 0;
    v181 = 0;
    v175 = 0;
    v176 = 0;
    v173 = 0;
    v174 = 0;
    LODWORD(v184) = 0;
    v171 = 0;
    v172 = 0;
    v182 = 0;
    v183 = 0;
    v187 = 0;
    v188 = 0;
    v177 = 0;
    v189 = 0;
    goto LABEL_58;
  }

  sub_100020E58(v344, v344[3]);
  v89 = dispatch thunk of Decoder.userInfo.getter();
  v90 = v217;
  v162 = sub_1007B9FC0(21, v89, 0, 0);
  v217 = v90;
  if (v90)
  {
    (*(v154 + 8))(v21, v19);

    v204 = 0;
    v205 = 0;
    v203 = 0;
    v201 = 0;
    v198 = 0;
    v199 = 0;
    v196 = 0;
    v197 = 0;
    v195 = 0;
    v191 = 0;
    v192 = 0;
    v193 = 0;
    v178 = 0;
    v179 = 0;
    v185 = 0;
    v186 = 0;
    v180 = 0;
    v181 = 0;
    v175 = 0;
    v176 = 0;
    v173 = 0;
    v174 = 0;
    LODWORD(v184) = 0;
    v171 = 0;
    v172 = 0;
    v182 = 0;
    v183 = 0;
    v187 = 0;
    v177 = 0;
    goto LABEL_58;
  }

  sub_100020E58(v344, v344[3]);
  v91 = dispatch thunk of Decoder.userInfo.getter();
  v92 = v217;
  v161 = sub_1007BA3B8(22, v91, 0, 0);
  v217 = v92;
  if (v92)
  {
    (*(v154 + 8))(v21, v19);

    v204 = 0;
    v205 = 0;
    v203 = 0;
    v201 = 0;
    v198 = 0;
    v199 = 0;
    v196 = 0;
    v197 = 0;
    v195 = 0;
    v191 = 0;
    v192 = 0;
    v193 = 0;
    v178 = 0;
    v179 = 0;
    v185 = 0;
    v186 = 0;
    v180 = 0;
    v181 = 0;
    v175 = 0;
    v176 = 0;
    v173 = 0;
    v174 = 0;
    LODWORD(v184) = 0;
    v171 = 0;
    v172 = 0;
    v182 = 0;
    v183 = 0;
    v187 = 0;
    v177 = 0;
    v166 = 4;
    v170 = 3;
    v168 = 0xFFFFFFFE00;
    v163 = 2;
    v155 = 2;
    v156 = 2;
    v157 = 2;
    v158 = 2;
    v159 = 4;
    v160 = 2;
    v161 = 3;
    goto LABEL_34;
  }

  sub_100020E58(v344, v344[3]);
  v93 = dispatch thunk of Decoder.userInfo.getter();
  v218[0] = 23;
  sub_1011443D4();
  v94 = v217;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v217 = v94;
  if (v94)
  {
    v95 = v205;
    CodingUserInfoKey.init(rawValue:)();
    if ((*(v184 + 48))(v95, 1, v185) == 1)
    {
      __break(1u);
      goto LABEL_108;
    }

    (*(v184 + 32))(v204, v205, v185);
    if (*(v93 + 16) && (v96 = sub_1007C8514(v204), (v97 & 1) != 0))
    {
      sub_100064288(*(v93 + 56) + 32 * v96, v222);
      (*(v184 + 8))(v204, v185);
      if (swift_dynamicCast() && (v219 & 1) != 0)
      {

        v204 = 0;
        v205 = 0;
        v203 = 0;
        v201 = 0;
        v198 = 0;
        v199 = 0;
        v196 = 0;
        v197 = 0;
        v195 = 0;
        v191 = 0;
        v192 = 0;
        v193 = 0;
        v217 = 0;
        v98 = 4;
        goto LABEL_71;
      }
    }

    else
    {
      (*(v184 + 8))(v204, v185);
    }

    swift_willThrow();

    (*(v154 + 8))(v21, v19);
    v204 = 0;
    v205 = 0;
    v203 = 0;
    v201 = 0;
    v198 = 0;
    v199 = 0;
    v196 = 0;
    v197 = 0;
    v195 = 0;
    v191 = 0;
    v192 = 0;
    v193 = 0;
    v178 = 0;
    v179 = 0;
    v185 = 0;
    v186 = 0;
    v180 = 0;
    v181 = 0;
    v175 = 0;
    v176 = 0;
    v173 = 0;
    v174 = 0;
    LODWORD(v184) = 0;
    v171 = 0;
    v172 = 0;
    v182 = 0;
    v183 = 0;
    v187 = 0;
    v177 = 0;
    v166 = 4;
    v170 = 3;
    v168 = 0xFFFFFFFE00;
    v163 = 2;
    v155 = 2;
    v156 = 2;
    v157 = 2;
    v158 = 2;
    v159 = 4;
    v160 = 2;
    goto LABEL_34;
  }

  v204 = v222[0];
  v205 = v222[1];
  v203 = v222[2];
  v201 = v222[3];
  v198 = v222[5];
  v199 = v222[4];
  v195 = v222[7];
  v191 = v222[9];
  v192 = v222[8];
  v196 = v222[10];
  v197 = v222[6];
  v193 = v222[11];
  v98 = LOWORD(v222[12]);
LABEL_71:
  v159 = v98;
  sub_100020E58(v344, v344[3]);
  v99 = dispatch thunk of Decoder.userInfo.getter();
  v100 = v217;
  v170 = sub_1007BA3FC(24, v99, 0, 0);
  v217 = v100;
  if (v100)
  {
    (*(v154 + 8))(v21, v19);

    v178 = 0;
    v179 = 0;
    v185 = 0;
    v186 = 0;
    v180 = 0;
    v181 = 0;
    v175 = 0;
    v176 = 0;
    v173 = 0;
    v174 = 0;
    LODWORD(v184) = 0;
    v171 = 0;
    v172 = 0;
    v182 = 0;
    v183 = 0;
    v187 = 0;
    v177 = 0;
    v170 = 3;
LABEL_75:
    v168 = 0xFFFFFFFE00;
    v166 = 4;
    v163 = 2;
    v155 = 2;
    v156 = 2;
    v157 = 2;
    v158 = 2;
    v160 = 2;
    goto LABEL_34;
  }

  sub_100020E58(v344, v344[3]);
  v101 = dispatch thunk of Decoder.userInfo.getter();
  v102 = v217;
  sub_1007B9F98(25, v101, 0, 0, v339);
  v217 = v102;
  if (v102)
  {
    (*(v154 + 8))(v21, v19);

    v178 = 0;
    v179 = 0;
    v185 = 0;
    v186 = 0;
    v180 = 0;
    v181 = 0;
    v175 = 0;
    v176 = 0;
    v173 = 0;
    v174 = 0;
    LODWORD(v184) = 0;
    v171 = 0;
    v172 = 0;
    v182 = 0;
    v183 = 0;
    v187 = 0;
    v177 = 0;
    goto LABEL_75;
  }

  v177 = v339[0];
  v183 = v339[1];
  v186 = v339[2];
  v187 = v339[3];
  v160 = v340;
  sub_100020E58(v344, v344[3]);
  v103 = dispatch thunk of Decoder.userInfo.getter();
  v104 = v217;
  v157 = sub_1007B9FC0(26, v103, 0, 0);
  v217 = v104;
  if (v104)
  {
    (*(v154 + 8))(v21, v19);

    v178 = 0;
    v179 = 0;
    v185 = 0;
    v180 = 0;
    v181 = 0;
    v175 = 0;
    v176 = 0;
    v173 = 0;
    v174 = 0;
    LODWORD(v184) = 0;
    v171 = 0;
    v172 = 0;
    v182 = 0;
    v168 = 0xFFFFFFFE00;
    v166 = 4;
    v163 = 2;
    v155 = 2;
    v156 = 2;
    v157 = 2;
    v158 = 2;
    goto LABEL_34;
  }

  sub_100020E58(v344, v344[3]);
  v105 = dispatch thunk of Decoder.userInfo.getter();
  v106 = v217;
  v182 = sub_1007BA02C(27, v105, 0, 0);
  v217 = v106;
  if (v106)
  {
    (*(v154 + 8))(v21, v19);

    v178 = 0;
    v179 = 0;
    v185 = 0;
    v180 = 0;
    v181 = 0;
    v175 = 0;
    v176 = 0;
    v173 = 0;
    v174 = 0;
    LODWORD(v184) = 0;
    v171 = 0;
    v172 = 0;
    v182 = 0;
LABEL_89:
    v168 = 0xFFFFFFFE00;
LABEL_90:
    v166 = 4;
LABEL_91:
    v163 = 2;
    v155 = 2;
    v156 = 2;
    v158 = 2;
    goto LABEL_34;
  }

  v108 = v107;

  v316 = v108 & 1;
  sub_100020E58(v344, v344[3]);
  v109 = dispatch thunk of Decoder.userInfo.getter();
  v218[0] = 28;
  sub_1009694C4();
  v110 = v217;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v217 = v110;
  if (!v110)
  {

    v171 = v222[0];
    v172 = v222[1];
    v174 = v222[2];
    v176 = v222[3];
    v168 = v222[4];
    v179 = v222[5];
    LODWORD(v184) = LOBYTE(v222[6]);
    goto LABEL_93;
  }

  v111 = v181;
  CodingUserInfoKey.init(rawValue:)();
  if ((*(v184 + 48))(v111, 1, v185) == 1)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  (*(v184 + 32))(v180, v181, v185);
  if (!*(v109 + 16) || (v112 = sub_1007C8514(v180), (v113 & 1) == 0))
  {
    (*(v184 + 8))(v180, v185);
LABEL_88:
    swift_willThrow();

    (*(v154 + 8))(v21, v19);
    v178 = 0;
    v179 = 0;
    v185 = 0;
    v180 = 0;
    v181 = 0;
    v175 = 0;
    v176 = 0;
    v173 = 0;
    v174 = 0;
    LODWORD(v184) = 0;
    v171 = 0;
    v172 = 0;
    goto LABEL_89;
  }

  sub_100064288(*(v109 + 56) + 32 * v112, v222);
  (*(v184 + 8))(v180, v185);
  if (!swift_dynamicCast() || (v219 & 1) == 0)
  {
    goto LABEL_88;
  }

  v171 = 0;
  v172 = 0;
  v174 = 0;
  v176 = 0;
  v179 = 0;
  LODWORD(v184) = 0;
  v217 = 0;
  v168 = 0xFFFFFFFE00;
LABEL_93:
  sub_100020E58(v344, v344[3]);
  v114 = dispatch thunk of Decoder.userInfo.getter();
  v115 = v217;
  v180 = sub_1007BA02C(29, v114, 0, 0);
  v217 = v115;
  if (v115)
  {
    (*(v154 + 8))(v21, v19);

    v178 = 0;
    v185 = 0;
    v180 = 0;
    v181 = 0;
LABEL_97:
    v175 = 0;
    v173 = 0;
    goto LABEL_90;
  }

  v117 = v116;

  v313 = v117 & 1;
  sub_100020E58(v344, v344[3]);
  v118 = dispatch thunk of Decoder.userInfo.getter();
  v119 = v217;
  v166 = sub_1007BA440(30, v118, 0, 0);
  v217 = v119;
  if (v119)
  {
    (*(v154 + 8))(v21, v19);

    v178 = 0;
    v185 = 0;
    v181 = 0;
    goto LABEL_97;
  }

  sub_100020E58(v344, v344[3]);
  v120 = dispatch thunk of Decoder.userInfo.getter();
  v121 = v217;
  sub_1007B9F98(31, v120, 0, 0, v341);
  v217 = v121;
  if (v121)
  {
    (*(v154 + 8))(v21, v19);

    v178 = 0;
    v185 = 0;
    v181 = 0;
    v175 = 0;
    v173 = 0;
    goto LABEL_91;
  }

  v173 = v341[0];
  v175 = v341[1];
  v181 = v341[2];
  v185 = v341[3];
  v158 = v342;
  sub_100020E58(v344, v344[3]);
  v122 = dispatch thunk of Decoder.userInfo.getter();
  v123 = v217;
  v156 = sub_1007B9FC0(32, v122, 0, 0);
  v217 = v123;
  if (v123)
  {
    (*(v154 + 8))(v21, v19);

    v178 = 0;
    v163 = 2;
    v155 = 2;
    v156 = 2;
    goto LABEL_34;
  }

  sub_100020E58(v344, v344[3]);
  v124 = dispatch thunk of Decoder.userInfo.getter();
  v125 = v217;
  v178 = sub_1007BA02C(33, v124, 0, 0);
  v217 = v125;
  if (v125)
  {
    (*(v154 + 8))(v21, v19);

    v178 = 0;
LABEL_106:
    v163 = 2;
    v155 = 2;
    goto LABEL_34;
  }

  v127 = v126;

  v308 = v127 & 1;
  sub_100020E58(v344, v344[3]);
  v128 = dispatch thunk of Decoder.userInfo.getter();
  v129 = v217;
  v155 = sub_1007B9FC0(34, v128, 0, 0);
  v217 = v129;
  if (v129)
  {
    (*(v154 + 8))(v21, v19);

    goto LABEL_106;
  }

LABEL_109:

  sub_100020E58(v344, v344[3]);
  v130 = dispatch thunk of Decoder.userInfo.getter();
  v131 = v217;
  v163 = sub_1007B9FC0(35, v130, 0, 0);
  v217 = v131;
  if (v131)
  {
    (*(v154 + 8))(v21, v19);

    v163 = 2;
    goto LABEL_34;
  }

  sub_100020E58(v344, v344[3]);
  v132 = dispatch thunk of Decoder.userInfo.getter();
  v133 = v217;
  v145 = sub_1007BA484(36, v132, 0, 0);
  v217 = v133;
  if (v133)
  {
    (*(v154 + 8))(v21, v19);

    goto LABEL_34;
  }

  (*(v154 + 8))(v21, v19);

  *v218 = v152;
  *&v218[8] = v209;
  *&v218[16] = v210;
  *&v218[24] = v211;
  v218[32] = v149;
  v218[33] = v151;
  v218[34] = v150;
  *&v218[35] = v335;
  v218[39] = v336;
  *&v218[40] = v208;
  v142 = v334;
  v218[48] = v334;
  v218[49] = v148;
  v218[50] = v207;
  memcpy(&v218[51], v333, 0x195uLL);
  v218[456] = v147;
  *&v218[457] = *v332;
  *&v218[460] = *&v332[3];
  *&v218[464] = v215;
  *&v218[472] = v216;
  v218[480] = v146;
  *&v218[481] = *v331;
  *&v218[484] = *&v331[3];
  *&v218[488] = v213;
  *&v218[496] = v214;
  v218[504] = v212;
  *&v218[505] = *v330;
  *&v218[508] = *&v330[3];
  *&v218[512] = v206;
  v218[520] = v169;
  *&v218[521] = *v329;
  *&v218[524] = *&v329[3];
  *&v218[528] = v200;
  *&v218[536] = v202;
  v218[544] = v167;
  *&v218[545] = *v328;
  *&v218[548] = *&v328[3];
  *&v218[552] = v194;
  v141 = v327;
  v218[560] = v327;
  v218[561] = v165;
  v218[562] = v164;
  *&v218[563] = v325;
  v218[567] = v326;
  *&v218[568] = v190;
  v140 = v324;
  v218[576] = v324;
  *&v218[577] = *v323;
  *&v218[580] = *&v323[3];
  *&v218[584] = v188;
  *&v218[592] = v189;
  v218[600] = v162;
  v218[601] = v161;
  *&v218[602] = v321;
  *&v218[606] = v322;
  v134 = v204;
  *&v218[608] = v204;
  *&v218[616] = v205;
  v135 = v203;
  *&v218[624] = v203;
  v136 = v201;
  *&v218[632] = v201;
  v137 = v198;
  v138 = v199;
  *&v218[640] = v199;
  *&v218[648] = v198;
  *&v218[656] = v197;
  *&v218[664] = v195;
  *&v218[672] = v192;
  *&v218[680] = v191;
  *&v218[688] = v196;
  *&v218[696] = v193;
  *&v218[704] = v159;
  v218[706] = v170;
  *&v218[707] = v319;
  v218[711] = v320;
  *&v218[712] = v177;
  *&v218[720] = v183;
  *&v218[728] = v186;
  *&v218[736] = v187;
  v218[744] = v160;
  v218[745] = v157;
  *&v218[746] = v317;
  *&v218[750] = v318;
  *&v218[752] = v182;
  *&v218[761] = *v315;
  *&v218[817] = *v314;
  *&v218[834] = v311;
  LODWORD(v154) = v316;
  v218[760] = v316;
  *&v218[764] = *&v315[3];
  *&v218[768] = v171;
  *&v218[776] = v172;
  *&v218[784] = v174;
  *&v218[792] = v176;
  *&v218[800] = v168;
  *&v218[808] = v179;
  v218[816] = v184;
  *&v218[820] = *&v314[3];
  *&v218[824] = v180;
  *&v218[874] = v309;
  v143 = v313;
  v218[832] = v313;
  v218[833] = v166;
  *&v218[838] = v312;
  *&v218[840] = v173;
  *&v218[848] = v175;
  *&v218[856] = v181;
  *&v218[864] = v185;
  v218[872] = v158;
  v218[873] = v156;
  *&v218[878] = v310;
  *&v218[880] = v178;
  v144 = v308;
  v218[888] = v308;
  v218[889] = v155;
  v218[890] = v163;
  v139 = v145;
  v218[891] = v145;
  sub_101154170(v218, v222);
  sub_100005070(v344);
  v222[0] = v152;
  v222[1] = v209;
  v222[2] = v210;
  v222[3] = v211;
  LOBYTE(v222[4]) = v149;
  BYTE1(v222[4]) = v151;
  BYTE2(v222[4]) = v150;
  *(&v222[4] + 3) = v335;
  HIBYTE(v222[4]) = v336;
  v222[5] = v208;
  LOBYTE(v222[6]) = v142;
  BYTE1(v222[6]) = v148;
  BYTE2(v222[6]) = v207;
  memcpy(&v222[6] + 3, v333, 0x195uLL);
  v223 = v147;
  v225 = v215;
  v226 = v216;
  v227 = v146;
  v229 = v213;
  v230 = v214;
  v231 = v212;
  v233 = v206;
  v234 = v169;
  v236 = v200;
  v237 = v202;
  v238 = v167;
  v240 = v194;
  v241 = v141;
  v242 = v165;
  v243 = v164;
  v246 = v190;
  v247 = v140;
  v249 = v188;
  v250 = v189;
  v251 = v162;
  v252 = v161;
  v255 = v134;
  v256 = v205;
  v257 = v135;
  v258 = v136;
  v259 = v138;
  v260 = v137;
  v261 = v197;
  v262 = v195;
  v263 = v192;
  v264 = v191;
  v265 = v196;
  v266 = v193;
  v267 = v159;
  v268 = v170;
  *v224 = *v332;
  *v228 = *v331;
  *v232 = *v330;
  *v235 = *v329;
  *v239 = *v328;
  v244 = v325;
  *v248 = *v323;
  v253 = v321;
  v269 = v319;
  *&v224[3] = *&v332[3];
  *&v228[3] = *&v331[3];
  *&v232[3] = *&v330[3];
  *&v235[3] = *&v329[3];
  *&v239[3] = *&v328[3];
  v245 = v326;
  *&v248[3] = *&v323[3];
  v254 = v322;
  v270 = v320;
  v271 = v177;
  v272 = v183;
  v273 = v186;
  v274 = v187;
  v275 = v160;
  v276 = v157;
  v277 = v317;
  v278 = v318;
  v279 = v182;
  v280 = v154;
  *v281 = *v315;
  *&v281[3] = *&v315[3];
  v282 = v171;
  v283 = v172;
  v284 = v174;
  v285 = v176;
  v286 = v168;
  v287 = v179;
  v288 = v184;
  *v289 = *v314;
  *&v289[3] = *&v314[3];
  v290 = v180;
  v291 = v143;
  v292 = v166;
  v293 = v311;
  v294 = v312;
  v295 = v173;
  v296 = v175;
  v297 = v181;
  v298 = v185;
  v299 = v158;
  v300 = v156;
  v301 = v309;
  v302 = v310;
  v303 = v178;
  v304 = v144;
  v305 = v155;
  v306 = v163;
  v307 = v139;
  sub_1011541A8(v222);
  return memcpy(v153, v218, 0x37CuLL);
}