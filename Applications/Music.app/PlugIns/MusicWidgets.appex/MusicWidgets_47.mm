uint64_t GenericMusicItem.catalogID.getter()
{
  v0 = sub_10056DB08();
  v38 = *(v0 - 8);
  v39 = v0;
  __chkstk_darwin(v0);
  v37 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10056DB68();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin(v2);
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10056DBC8();
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin(v4);
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100571A68();
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin(v6);
  v46 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005722D8();
  v50 = *(v8 - 8);
  v51 = v8;
  __chkstk_darwin(v8);
  v49 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005713A8();
  v53 = *(v10 - 8);
  v54 = v10;
  __chkstk_darwin(v10);
  v52 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10056D8D8();
  v55 = *(v12 - 8);
  v56 = v12;
  __chkstk_darwin(v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100571CF8();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100571B78();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10056D438();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v27, v57, v23, v25);
  v28 = (*(v24 + 88))(v27, v23);
  if (v28 != enum case for GenericMusicItem.album(_:))
  {
    if (v28 == enum case for GenericMusicItem.artist(_:))
    {
      (*(v24 + 96))(v27, v23);
      (*(v16 + 32))(v18, v27, v15);
      v29 = sub_100571CB8();
      (*(v16 + 8))(v18, v15);
      return v29;
    }

    if (v28 != enum case for GenericMusicItem.composer(_:) && v28 != enum case for GenericMusicItem.curator(_:) && v28 != enum case for GenericMusicItem.editorialItem(_:) && v28 != enum case for GenericMusicItem.genre(_:))
    {
      if (v28 == enum case for GenericMusicItem.musicMovie(_:))
      {
        (*(v24 + 96))(v27, v23);
        v31 = v55;
        v30 = v56;
        (*(v55 + 32))(v14, v27, v56);
        v29 = sub_10056D8C8();
        (*(v31 + 8))(v14, v30);
        return v29;
      }

      if (v28 == enum case for GenericMusicItem.musicVideo(_:))
      {
        (*(v24 + 96))(v27, v23);
        v32 = v52;
        v33 = v53;
        v34 = v54;
        (*(v53 + 32))(v52, v27, v54);
        v35 = sub_100571348();
LABEL_15:
        v29 = v35;
        (*(v33 + 8))(v32, v34);
        return v29;
      }

      if (v28 == enum case for GenericMusicItem.playlist(_:))
      {
        (*(v24 + 96))(v27, v23);
        v32 = v49;
        v33 = v50;
        v34 = v51;
        (*(v50 + 32))(v49, v27, v51);
        v35 = sub_100572158();
        goto LABEL_15;
      }

      if (v28 != enum case for GenericMusicItem.radioShow(_:) && v28 != enum case for GenericMusicItem.recordLabel(_:) && v28 != enum case for GenericMusicItem.socialProfile(_:))
      {
        if (v28 == enum case for GenericMusicItem.song(_:))
        {
          (*(v24 + 96))(v27, v23);
          v32 = v46;
          v33 = v47;
          v34 = v48;
          (*(v47 + 32))(v46, v27, v48);
          v35 = sub_100571998();
          goto LABEL_15;
        }

        if (v28 != enum case for GenericMusicItem.station(_:))
        {
          if (v28 == enum case for GenericMusicItem.tvEpisode(_:))
          {
            (*(v24 + 96))(v27, v23);
            v32 = v43;
            v33 = v44;
            v34 = v45;
            (*(v44 + 32))(v43, v27, v45);
            v35 = sub_10056DBB8();
            goto LABEL_15;
          }

          if (v28 == enum case for GenericMusicItem.tvSeason(_:))
          {
            (*(v24 + 96))(v27, v23);
            v32 = v40;
            v33 = v41;
            v34 = v42;
            (*(v41 + 32))(v40, v27, v42);
            v35 = sub_10056DB58();
            goto LABEL_15;
          }

          if (v28 == enum case for GenericMusicItem.tvShow(_:))
          {
            (*(v24 + 96))(v27, v23);
            v32 = v37;
            v33 = v38;
            v34 = v39;
            (*(v38 + 32))(v37, v27, v39);
            v35 = sub_10056DAF8();
            goto LABEL_15;
          }
        }
      }
    }

    (*(v24 + 8))(v27, v23);
    return 0;
  }

  (*(v24 + 96))(v27, v23);
  (*(v20 + 32))(v22, v27, v19);
  v29 = sub_100571AC8();
  (*(v20 + 8))(v22, v19);
  return v29;
}

uint64_t Playlist.Entry.InternalItem.musicItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100572208();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v5 + 96))(v7, v4);
    v9 = sub_10056D8D8();
    a1[3] = v9;
    v10 = &unk_1006F8C40;
    v11 = &type metadata accessor for MusicMovie;
LABEL_3:
    v12 = sub_1004B7B9C(v10, v11);
LABEL_8:
    a1[4] = v12;
    v13 = sub_10002AB7C(a1);
    return (*(*(v9 - 8) + 32))(v13, v7, v9);
  }

  if (v8 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v5 + 96))(v7, v4);
    v9 = sub_1005713A8();
    a1[3] = v9;
    v12 = &protocol witness table for MusicVideo;
    goto LABEL_8;
  }

  if (v8 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v5 + 96))(v7, v4);
    v9 = sub_100571A68();
    a1[3] = v9;
    v12 = &protocol witness table for Song;
    goto LABEL_8;
  }

  if (v8 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v5 + 96))(v7, v4);
    v9 = sub_10056DBC8();
    a1[3] = v9;
    v10 = &unk_1006F8C30;
    v11 = &type metadata accessor for TVEpisode;
    goto LABEL_3;
  }

  if (v8 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
  {
    (*(v5 + 96))(v7, v4);
    v9 = sub_10056DA38();
    a1[3] = v9;
    v10 = &unk_1006F8C18;
    v11 = &type metadata accessor for UploadedAudio;
    goto LABEL_3;
  }

  if (v8 == enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v5 + 96))(v7, v4);
    v9 = sub_10056DA88();
    a1[3] = v9;
    v10 = &unk_1006F8C10;
    v11 = &type metadata accessor for UploadedVideo;
    goto LABEL_3;
  }

  v15 = 0;
  v16 = 0xE000000000000000;
  sub_100573ED8(42);

  v15 = 0xD000000000000028;
  v16 = 0x80000001005BCE70;
  sub_1004B7B9C(&qword_1006F8C60, &type metadata accessor for Playlist.Entry.InternalItem);
  v17._countAndFlagsBits = sub_100574408();
  sub_100572A98(v17);

  result = sub_1005740F8();
  __break(1u);
  return result;
}

uint64_t Artist.pinPlayabilityStatus(isOnline:explicitContentIsAllowed:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_100571C58();
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = sub_100571C78();
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  v12 = sub_100571C98();
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  v15 = sub_100571CA8();
  if (v16)
  {
    if ((a1 & 1) == 0)
    {
      if ((a2 & 1) == 0)
      {
        if (v11 <= 0)
        {
          if (v14 <= 0)
          {
            goto LABEL_36;
          }

          goto LABEL_20;
        }

LABEL_27:
        v18 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.networkUnavailable(_:);
        goto LABEL_28;
      }

      goto LABEL_22;
    }
  }

  else if ((a1 & 1) == 0)
  {
    if (a2)
    {
LABEL_22:
      if (v14 <= 0)
      {
        goto LABEL_27;
      }

LABEL_23:
      v17 = &enum case for MusicPlayer.PlayabilityStatus.playable(_:);
      goto LABEL_30;
    }

    if (v11 >= 1 && !v15)
    {
      goto LABEL_27;
    }

    if (v14 < 1 || v15)
    {
      if (v15 <= 0)
      {
LABEL_36:
        v20 = sub_1005713F8();
        v21 = *(*(v20 - 8) + 104);
        if (v8 < 1)
        {
          v28 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.unsupportedType(_:);
        }

        else
        {
          v28 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.explicitRestricted(_:);
        }

        v23 = *v28;
        v22 = a3;
        goto LABEL_29;
      }

      goto LABEL_23;
    }

LABEL_20:
    v18 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.explicitRestricted(_:);
LABEL_28:
    v19 = *v18;
    v20 = sub_1005713F8();
    v21 = *(*(v20 - 8) + 104);
    v22 = a3;
    v23 = v19;
LABEL_29:
    v21(v22, v23, v20);
    v17 = &enum case for MusicPlayer.PlayabilityStatus.unplayable(_:);
    goto LABEL_30;
  }

  if (!v8)
  {
    v18 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.unsupportedType(_:);
    goto LABEL_28;
  }

  v17 = &enum case for MusicPlayer.PlayabilityStatus.playable(_:);
  if ((a2 & 1) == 0 && v11 <= 0)
  {
    goto LABEL_20;
  }

LABEL_30:
  v24 = *v17;
  v25 = sub_100571418();
  v26 = *(*(v25 - 8) + 104);

  return v26(a3, v24, v25);
}

uint64_t MusicPin.Action.symbolName.getter()
{
  v1 = v0;
  v2 = sub_10056D858();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for MusicPin.Action.navigate(_:))
  {
    return 0;
  }

  if (v6 == enum case for MusicPin.Action.play(_:))
  {
    return 0x6C69662E79616C70;
  }

  if (v6 != enum case for MusicPin.Action.shuffle(_:))
  {
    (*(v3 + 8))(v5, v2);
    return 0;
  }

  return 0x656C6666756873;
}

uint64_t sub_1004B7B34(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006F8C68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004B7B9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004B7BFC(void (*a1)(__n128))
{
  v43 = sub_10056CD98();
  v2 = *(v43 - 8);
  __chkstk_darwin(v43);
  v4 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10056C968();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v37 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10056C988();
  v41 = *(v6 - 8);
  v42 = v6;
  __chkstk_darwin(v6);
  v36 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v39 = v35 - v9;
  v10 = sub_100009DCC(&qword_1006F8AA8);
  __chkstk_darwin(v10 - 8);
  v12 = v35 - v11;
  v13 = sub_100009DCC(&qword_1006F8AB0);
  __chkstk_darwin(v13 - 8);
  v15 = v35 - v14;
  v16 = sub_10056C538();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100009DCC(&qword_1006F8C68);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = v35 - v22;
  a1(v21);
  if (v24)
  {
    v25 = sub_10056CAA8();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
LABEL_6:
    sub_1004B7B34(v23);
    return 0;
  }

  v35[1] = v4;
  if (qword_1006F7F18 != -1)
  {
    swift_once();
  }

  v26 = sub_10056CD08();
  sub_10000C49C(v26, static Calendar.musicDefaultCalendar);
  (*(*(v26 - 8) + 56))(v15, 1, 1, v26);
  (*(v2 + 56))(v12, 1, 1, v43);
  sub_10056C528();
  sub_10056CCB8();
  (*(v17 + 8))(v19, v16);
  v27 = sub_10056CAA8();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v23, 1, v27) == 1)
  {
    goto LABEL_6;
  }

  v30 = v36;
  sub_10056C688();
  v31 = v37;
  sub_10056C958();
  v32 = v39;
  sub_10056C948();
  (*(v38 + 8))(v31, v40);
  v33 = v42;
  v34 = *(v41 + 8);
  v34(v30, v42);
  sub_10056CCD8();
  sub_10056C978();
  sub_1004B7B9C(&qword_1006F8C70, &type metadata accessor for Date.FormatStyle);
  sub_10056CA88();
  v34(v32, v33);
  (*(v28 + 8))(v23, v27);
  return v44;
}

uint64_t sub_1004B8264(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1004B0DB8(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004B82F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void (**a5)(uint64_t, void *, NSObject *)@<X4>, int a6@<W5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  LODWORD(v761) = a6;
  v749 = a5;
  v751 = a4;
  v742 = a3;
  v746 = a2;
  v19 = a14;
  v744 = a13;
  v740 = a11;
  v739 = a10;
  v729 = sub_100009DCC(&qword_1006F8A18);
  v728 = *(v729 - 8);
  __chkstk_darwin(v729);
  v727 = v656 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v730 = v656 - v22;
  swift_getAssociatedTypeWitness();
  v741 = a15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v757 = sub_1005741F8();
  *&v692 = v757[-1];
  __chkstk_darwin(v757);
  v766 = (v656 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v26);
  v756 = (v656 - v27);
  v28 = sub_100574208();
  WitnessTable = swift_getWitnessTable();
  v721 = sub_1005740A8();
  *&v691 = *(v721 - 8);
  __chkstk_darwin(v721);
  v764 = v656 - v29;
  v711 = *(v28 - 8);
  __chkstk_darwin(v30);
  v725 = v656 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v706 = v656 - v33;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v708 = sub_100573C28();
  v690 = *(v708 - 8);
  __chkstk_darwin(v708);
  v718 = (v656 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v35);
  v758 = (v656 - v36);
  v762 = v28;
  v37 = sub_100573C28();
  __chkstk_darwin(v37 - 8);
  v713 = v656 - v38;
  v701 = sub_100009DCC(&qword_1006F8E48);
  __chkstk_darwin(v701);
  v769 = (v656 - v39);
  v765 = AssociatedTypeWitness;
  v702 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v40);
  *&v752 = v656 - v41;
  v42 = a1;
  v712 = swift_checkMetadataState();
  v693 = *(v712 - 8);
  __chkstk_darwin(v712);
  v698 = v656 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v710 = v656 - v45;
  v699 = *(a14 - 1);
  __chkstk_darwin(v46);
  v686 = v656 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v688 = v656 - v49;
  __chkstk_darwin(v50);
  v687 = v656 - v51;
  __chkstk_darwin(v52);
  v697 = v656 - v53;
  __chkstk_darwin(v54);
  v705 = v656 - v55;
  __chkstk_darwin(v56);
  v720 = v656 - v57;
  __chkstk_darwin(v58);
  v750 = (v656 - v59);
  __chkstk_darwin(v60);
  v768 = (v656 - v61);
  v770 = sub_10056CE18();
  v753 = *(v770 - 8);
  __chkstk_darwin(v770);
  v709 = v656 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v703 = v656 - v64;
  __chkstk_darwin(v65);
  v696 = v656 - v66;
  __chkstk_darwin(v67);
  v695 = v656 - v68;
  __chkstk_darwin(v69);
  v694 = v656 - v70;
  __chkstk_darwin(v71);
  v707 = v656 - v72;
  __chkstk_darwin(v73);
  v689 = v656 - v74;
  __chkstk_darwin(v75);
  v738 = v656 - v76;
  __chkstk_darwin(v77);
  v726 = v656 - v78;
  __chkstk_darwin(v79);
  v81 = v656 - v80;
  __chkstk_darwin(v82);
  v715 = v656 - v83;
  __chkstk_darwin(v84);
  v735 = v656 - v85;
  __chkstk_darwin(v86);
  *&v733 = v656 - v87;
  __chkstk_darwin(v88);
  v734 = (v656 - v89);
  __chkstk_darwin(v90);
  v714 = v656 - v91;
  __chkstk_darwin(v92);
  v724 = v656 - v93;
  __chkstk_darwin(v94);
  v723 = v656 - v95;
  __chkstk_darwin(v96);
  v716 = v656 - v97;
  __chkstk_darwin(v98);
  v736 = v656 - v99;
  __chkstk_darwin(v100);
  v737 = v656 - v101;
  __chkstk_darwin(v102);
  v759 = v656 - v103;
  __chkstk_darwin(v104);
  v767 = v656 - v105;
  __chkstk_darwin(v106);
  *&v754 = v656 - v107;
  v731 = sub_100009DCC(&qword_1006F8E50);
  v700 = *(v731 - 8);
  __chkstk_darwin(v731);
  v704 = v656 - v108;
  *a9 = 0;
  v109 = type metadata accessor for AIDiffingUpdate();
  v110 = v109[6];
  _s14MusicUtilities15AIDiffingUpdateV18deletedSectionsSet10Foundation05IndexG0Vvpfi_0();
  v748 = v109[7];
  _s14MusicUtilities15AIDiffingUpdateV18deletedSectionsSet10Foundation05IndexG0Vvpfi_0();
  v111 = v109[8];
  *(a9 + v111) = _swiftEmptyArrayStorage;
  v112 = (a9 + v109[9]);
  *v112 = 0;
  v112[1] = _swiftEmptyArrayStorage;
  v732 = v112;
  v113 = (a9 + v109[10]);
  *v113 = 0;
  v113[1] = _swiftEmptyArrayStorage;
  v743 = v113;
  v114 = (a9 + v109[11]);
  *v114 = 0;
  v114[1] = _swiftEmptyArrayStorage;
  v745 = v109[12];
  *(a9 + v745) = _swiftEmptyArrayStorage;
  *(a9 + 8) = a7;
  *(a9 + 16) = a8;
  v763 = a9;
  if (!v42)
  {
    sub_1000E672C(a7);
    sub_1000F3E14(a12);
    sub_1000F3E14(v739);
    sub_1000F3E14(a7);

LABEL_14:

    *v763 = 1;
    return result;
  }

  v722 = a12;
  if (!v746)
  {
    sub_1000E672C(a7);
    sub_1000F3E14(v722);
    sub_1000F3E14(v739);
    sub_1000F3E14(a7);
LABEL_13:

    goto LABEL_14;
  }

  v685 = v111;
  v682 = AssociatedConformanceWitness;
  sub_1000E672C(a7);

  v115 = sub_100572DC8();
  v116 = v722;
  if (v115 <= 0 || (v669 = v115, v717 = v42, v117 = sub_100572DC8(), v117 < 1))
  {

    sub_1000F3E14(v116);
    sub_1000F3E14(v739);
    sub_1000F3E14(a7);

    goto LABEL_13;
  }

  TupleTypeMetadata3 = v117;
  v673 = v110;
  v678 = v81;
  if (qword_1006F7F48 != -1)
  {
    goto LABEL_365;
  }

  while (1)
  {
    v119 = sub_10056DF88();
    v120 = sub_10000C49C(v119, qword_1006F8C78);

    v755 = v120;
    v121 = sub_10056DF68();
    v122 = sub_100573448();

    v123 = os_log_type_enabled(v121, v122);
    v747 = v19;
    v684 = TupleTypeMetadata3;
    if (v123)
    {
      v124 = swift_slowAlloc();
      v774 = swift_slowAlloc();
      *v124 = 136315394;
      v125 = sub_100574758();
      v127 = sub_1004C2954(v125, v126, &v774);

      *(v124 + 4) = v127;
      *(v124 + 12) = 2080;
      v128 = sub_100572D38();
      v130 = sub_1004C2954(v128, v129, &v774);

      *(v124 + 14) = v130;
      v19 = v747;
      _os_log_impl(&_mh_execute_header, v121, v122, "Building update for section with item type %s, visible index paths: %s", v124, 0x16u);
      swift_arrayDestroy();
    }

    v672 = a8;
    v131 = v739;
    v668 = a7;
    if (v739)
    {
      v132 = swift_allocObject();
      v133 = v741;
      v132[2] = v19;
      v132[3] = v133;
      v134 = v740;
      v132[4] = v131;
      v132[5] = v134;
      v135 = sub_1004C8A58;
    }

    else
    {
      v132 = swift_allocObject();
      v133 = v741;
      v132[2] = v19;
      v132[3] = v133;
      v135 = sub_1004C880C;
    }

    v137 = swift_allocObject();
    v137[2] = v19;
    v137[3] = v133;
    v137[4] = v135;
    v137[5] = v132;
    v676 = v137;
    sub_1000E672C(v131);
    v782 = sub_100499220(_swiftEmptyArrayStorage);
    v781 = &_swiftEmptySetSingleton;
    v774 = v717;
    __chkstk_darwin(v782);
    v656[-4] = v19;
    v656[-3] = v133;
    v656[-2] = &v781;
    v138 = sub_100572E38();
    v139 = swift_getWitnessTable();
    v675 = sub_1004AB3E4(sub_1004C8884, &v656[-6], v138, &type metadata for String, &type metadata for Never, v139, &protocol witness table for Never, v140);
    v772[0] = v746;
    swift_getWitnessTable();
    v141 = sub_100572BC8();
    v772[0] = v774;
    __chkstk_darwin(v141);
    v656[-4] = v142;
    v656[-3] = v133;
    v656[-2] = &v782;
    __chkstk_darwin(v143);
    v656[-4] = v144;
    v656[-3] = v133;
    v656[-2] = sub_1004C88A8;
    v656[-1] = v145;
    v146 = sub_100574168();
    v780[1] = v139;
    v147 = swift_getWitnessTable();
    v149 = sub_1004AB3E4(sub_1004C88B4, &v656[-6], v146, &type metadata for String, &type metadata for Never, v147, &protocol witness table for Never, v148);
    v150 = v675;

    v151 = v781;
    if (v781[2] != *(v150 + 16))
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      v207 = sub_10056DF68();
      v208 = sub_100573438();

      if (os_log_type_enabled(v207, v208))
      {
        v209 = swift_slowAlloc();
        v210 = swift_slowAlloc();
        v774 = v210;
        *v209 = 136446210;
        v211 = sub_100572D38();
        v213 = v212;

        v214 = sub_1004C2954(v211, v213, &v774);

        *(v209 + 4) = v214;
        v215 = "Found duplicate sections in old items, falling back to reload data. Sections: %{public}s";
LABEL_66:
        _os_log_impl(&_mh_execute_header, v207, v208, v215, v209, 0xCu);
        sub_100010474(v210);

        sub_1000F3E14(v722);
        sub_1000F3E14(v739);
        sub_1000F3E14(v668);
LABEL_68:

        *v763 = 1;
      }

LABEL_67:

      sub_1000F3E14(v722);
      sub_1000F3E14(v739);
      sub_1000F3E14(v668);

      goto LABEL_68;
    }

    if (v149[2] != v684)
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      v207 = sub_10056DF68();
      v208 = sub_100573438();

      if (os_log_type_enabled(v207, v208))
      {
        v209 = swift_slowAlloc();
        v210 = swift_slowAlloc();
        v774 = v210;
        *v209 = 136446210;
        v216 = sub_100572D38();
        v218 = v217;

        v219 = sub_1004C2954(v216, v218, &v774);

        *(v209 + 4) = v219;
        v215 = "Found duplicate sections in new items, falling back to reload data. Sections: %{public}s";
        goto LABEL_66;
      }

      goto LABEL_67;
    }

    v658 = v149;
    v774 = v149;
    v772[0] = v150;
    sub_100009DCC(&qword_1006F8BF0);
    sub_100010BC0(&qword_1006F8C08, &qword_1006F8BF0);
    sub_100572788();
    v660 = sub_10049931C(_swiftEmptyArrayStorage);
    v780[0] = v660;
    v779 = &_swiftEmptySetSingleton;
    v19 = v747;
    v663 = swift_getAssociatedConformanceWitness();
    v152 = sub_10056DD08();
    swift_getTupleTypeMetadata2();
    v153 = sub_100572D88();
    v154 = sub_1004B1430(v153, &type metadata for Int, v152, &protocol witness table for Int);
    v155 = v152;

    v683 = v154;
    v778 = v154;
    v156 = sub_100572D88();
    v157 = sub_1004B1430(v156, &type metadata for Int, v152, &protocol witness table for Int);

    v777 = v157;
    v774 = v742;

    sub_1004C4F00(&v774);
    v656[1] = 0;
    v659 = v151;
    a8 = v774;
    v158 = v774[2];
    v159 = v754;
    v681 = v155;
    v680 = v158;
    if (v158)
    {
      a7 = 0;
      *&v679 = v774 + ((*(v753 + 80) + 32) & ~*(v753 + 80));
      v684 = (v753 + 16);
      v160 = (v753 + 8);
      v670 = v741 + 40;
      v662 = (v702 + 16);
      v667 = v693 + 8;
      v661 = (v702 + 8);
      v664 = (v741 + 32);
      v665 = (v699 + 8);
      TupleTypeMetadata3 = v762;
      v666 = (v753 + 8);
      v674 = v774;
      while (1)
      {
        if (a7 >= *(a8 + 16))
        {
          goto LABEL_355;
        }

        v161 = *(v753 + 16);
        v161(v159, v679 + *(v753 + 72) * a7, v770);
        if (sub_10056CDF8() < v751)
        {
          (*v160)(v159, v770);
        }

        else
        {
          a8 = v765;
          if ((v761 & 1) != 0 || sub_10056CDF8() <= v749)
          {
            v162 = v759;
            v163 = v770;
            v161(v759, v159, v770);
            v164 = v767;
            v165 = v162;
            v155 = v681;
            sub_1004C2EFC(v767, v165);
            v677 = *v160;
            (v677)(v164, v163);
            v772[0] = sub_10056CDF8();
            TupleTypeMetadata3 = &type metadata for Int;
            v19 = &protocol witness table for Int;
            sub_100572708();
            if (v775)
            {
              sub_1003B7408(v774, v775);
            }

            else
            {
              v166 = sub_10056CDF8();
              sub_100572D88();
              v774 = sub_10056DCD8();
              v775 = v167;
              v772[0] = v166;
              sub_1005726E8();
              sub_100572718();
              v168 = sub_10056CDF8();
              v169 = sub_10056CDE8();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v774 = v780[0];
              v171 = v169;
              TupleTypeMetadata3 = &type metadata for Int;
              sub_1004C4954(v171, v168, isUniquelyReferenced_nonNull_native);
              v660 = v774;
              v780[0] = v774;
            }

            v772[0] = sub_10056CDF8();
            sub_100572708();
            if (v775)
            {
              sub_1003B7408(v774, v775);
            }

            else
            {
              v172 = sub_10056CDF8();
              sub_100572D88();
              v774 = sub_10056DCD8();
              v775 = v173;
              v772[0] = v172;
              sub_1005726E8();
              sub_100572718();
            }

            if (__OFSUB__(sub_10056CDF8(), v751))
            {
              goto LABEL_363;
            }

            sub_100572E48();
            v772[0] = sub_10056CDF8();
            sub_100572708();
            v174 = v775;
            if (v775)
            {
              v671 = sub_100574028();
            }

            else
            {
              v671 = 0;
            }

            v776 = sub_10056CDF8();
            sub_1005726E8();
            v175 = sub_1005726F8();
            if (*(v176 + 8))
            {
              v177 = v710;
              (*(v741 + 40))(v747);
              v773 = sub_10056CDE8();
              v178 = v712;
              v179 = sub_1005732E8();
              v180 = v752;
              (*v662)(v752);
              v179(v772, 0);
              v181 = v177;
              v155 = v681;
              v182 = v178;
              v183 = v765;
              (*v667)(v181, v182);
              sub_10056DCF8();
              v184 = v180;
              v159 = v754;
              (*v661)(v184, v183);
            }

            v175(&v774, 0);
            v772[0] = sub_10056CDF8();
            v683 = v778;
            sub_100572708();
            if (v775)
            {
              v185 = sub_100574028();

              v19 = v747;
              if (v174 && v671 == v185)
              {
LABEL_339:

                swift_bridgeObjectRelease_n();

                swift_bridgeObjectRelease_n();

                v636 = sub_10056DF68();
                v637 = sub_100573438();
                if (os_log_type_enabled(v636, v637))
                {
                  v638 = swift_slowAlloc();
                  *v638 = 0;
                  _os_log_impl(&_mh_execute_header, v636, v637, "Found duplicate in old visible items, falling back to reload data.", v638, 2u);
                }

                sub_1000F3E14(v722);

                sub_1000F3E14(v739);
                sub_1000F3E14(v668);
                (*v665)(v768, v19);
                (v677)(v159, v770);
                (*(v700 + 8))(v704, v731);
                *v763 = 1;

LABEL_347:
              }
            }

            else
            {
              v19 = v747;
              if (!v174)
              {
                goto LABEL_339;
              }
            }

            v186 = (*(v741 + 32))(v19);
            if (*(v782 + 16) && (sub_1004B0CCC(v186, v187), (v188 & 1) != 0))
            {

              sub_100572E48();
              v189 = sub_10056CDE8();
              v190 = *(v741 + 40);
              v191 = v710;
              v190(v19);
              v192 = v712;
              v193 = sub_1005731C8();
              v194 = *v667;
              v195 = v191;
              v155 = v681;
              (*v667)(v195, v192);
              v196 = v189 < v193;
              v197 = v159;
              if (v196)
              {
                v772[0] = sub_10056CDF8();
                sub_100572708();
                v671 = v775;
                if (v775)
                {
                  v657 = sub_100574028();
                }

                else
                {
                  v657 = 0;
                }

                v776 = sub_10056CDF8();
                v198 = sub_1005726F8();
                if (*(v199 + 8))
                {
                  v200 = v710;
                  v656[0] = v198;
                  (v190)(v747, v741);
                  v773 = sub_10056CDE8();
                  v201 = v712;
                  v202 = sub_1005732E8();
                  v203 = v752;
                  v204 = v765;
                  (*v662)(v752);
                  v202(v772, 0);
                  v194(v200, v201);
                  v155 = v681;
                  sub_10056DCF8();
                  (*v661)(v203, v204);
                  (v656[0])(&v774, 0);
                }

                else
                {
                  v198(&v774, 0);
                  v155 = v681;
                }

                v772[0] = sub_10056CDF8();
                sub_100572708();
                if (v775)
                {
                  v205 = sub_100574028();

                  v197 = v754;
                  if (v671 && v657 == v205)
                  {
LABEL_348:

                    swift_bridgeObjectRelease_n();

                    swift_bridgeObjectRelease_n();

                    v651 = sub_10056DF68();
                    v652 = sub_100573438();
                    if (os_log_type_enabled(v651, v652))
                    {
                      v653 = swift_slowAlloc();
                      *v653 = 0;
                      _os_log_impl(&_mh_execute_header, v651, v652, "Found duplicate in new visible items, falling back to reload data.", v653, 2u);
                    }

                    sub_1000F3E14(v722);

                    sub_1000F3E14(v739);
                    sub_1000F3E14(v668);
                    v654 = *v665;
                    v655 = v747;
                    (*v665)(v750, v747);
                    v654(v768, v655);
                    (v677)(v754, v770);
                    (*(v700 + 8))(v704, v731);

                    *v763 = 1;
                  }
                }

                else
                {
                  v197 = v754;
                  if (!v671)
                  {
                    goto LABEL_348;
                  }
                }
              }

              v206 = *v665;
              v19 = v747;
              (*v665)(v750, v747);
              v206(v768, v19);
              v160 = v666;
              (v677)(v197, v770);
              TupleTypeMetadata3 = v762;
              v159 = v197;
            }

            else
            {

              (*v665)(v768, v19);
              v160 = v666;
              (v677)(v159, v770);
              TupleTypeMetadata3 = v762;
            }
          }

          else
          {
            (*v160)(v159, v770);
          }

          a8 = v674;
        }

        if (v680 == ++a7)
        {
          goto LABEL_71;
        }
      }
    }

    TupleTypeMetadata3 = v762;
LABEL_71:

    swift_getTupleTypeMetadata2();
    v220 = sub_100572D88();
    v221 = sub_1004B1430(v220, &type metadata for Int, TupleTypeMetadata3, &protocol witness table for Int);

    a7 = v683 + 64;
    v222 = *(v683 + 64);
    v776 = v221;
    v223 = 1 << *(v683 + 32);
    v224 = -1;
    if (v223 < 64)
    {
      v224 = ~(-1 << v223);
    }

    a8 = v224 & v222;
    v225 = (v223 + 63) >> 6;
    v750 = (v711 + 56);

    v226 = 0;
    while (1)
    {
      v227 = v731;
      if (!a8)
      {
        break;
      }

      v228 = v155;
      TupleTypeMetadata3 = v226;
LABEL_81:
      v229 = __clz(__rbit64(a8)) | (TupleTypeMetadata3 << 6);
      v230 = *(*(v683 + 48) + 8 * v229);
      a8 &= a8 - 1;
      v231 = (*(v683 + 56) + 16 * v229);
      v232 = *v231;
      v233 = v231[1];
      v768 = v230;
      v772[0] = v230;
      v234 = v232;

      v235 = v228;
      v236 = sub_100572708();
      v237 = v775;
      if (v775)
      {
        *&v752 = v656;
        *&v754 = v774;
        v761 = v234;
        v772[0] = v234;
        v772[1] = v233;
        v759 = v233;
        __chkstk_darwin(v236);
        v238 = v741;
        v656[-12] = v747;
        v656[-11] = v238;
        v239 = v676;
        v656[-10] = sub_1004C884C;
        v656[-9] = v239;
        v240 = v744;
        v656[-8] = v722;
        v656[-7] = v240;
        v656[-6] = v241;
        v656[-5] = v237;
        v656[-4] = v780;
        v242 = v768;
        v243 = v763;
        v656[-3] = v768;
        v656[-2] = v243;
        swift_getWitnessTable();
        v244 = v713;
        v155 = v681;
        sub_100572778();
        (*v750)(v244, 0, 1, v762);
        v774 = v242;
        sub_1005726E8();
        sub_100572718();

        v19 = v747;

        v226 = TupleTypeMetadata3;
      }

      else
      {

        v226 = TupleTypeMetadata3;
        v19 = v747;
        v155 = v235;
      }
    }

    while (1)
    {
      TupleTypeMetadata3 = v226 + 1;
      if (__OFADD__(v226, 1))
      {
        goto LABEL_354;
      }

      if (TupleTypeMetadata3 >= v225)
      {
        break;
      }

      a8 = *(a7 + 8 * TupleTypeMetadata3);
      ++v226;
      if (a8)
      {
        v228 = v155;
        goto LABEL_81;
      }
    }

    v245 = v769;
    (*(v700 + 16))(v769, v704, v227);
    v246 = *(v701 + 36);
    v247 = sub_100010BC0(&qword_1006F8E58, &qword_1006F8E50);
    sub_1005731B8();
    sub_100573208();
    if (*(v245 + v246) != v774)
    {
      *&v248 = 134349056;
      v754 = v248;
      *&v248 = 134349312;
      v752 = v248;
      v759 = v246;
      do
      {
        a7 = v19;
        v19 = v247;
        v424 = sub_1005732E8();
        v426 = *v425;
        v427 = v425[2];
        v428 = v425[3];
        TupleTypeMetadata3 = *(v425 + 32);
        v429 = *(v425 + 33);
        v761 = v425[1];
        v768 = v427;
        MPCPlaybackEngine.Configuration.options.getter();
        v424(&v774, 0);
        v247 = v19;
        sub_100573218();
        a8 = v426 + v751;
        v430 = __OFADD__(v426, v751);
        if (v429)
        {
          if (v430)
          {
            goto LABEL_360;
          }

          if ((TupleTypeMetadata3 & 1) == 0)
          {
            v436 = v426 + v751;
            v437 = v428 + v751;
            if (__OFADD__(v428, v751))
            {
              goto LABEL_367;
            }

            v438 = sub_10056DF68();
            v439 = sub_100573448();
            if (os_log_type_enabled(v438, v439))
            {
              v440 = swift_slowAlloc();
              *v440 = v752;
              *(v440 + 4) = v436;
              *(v440 + 12) = 2050;
              *(v440 + 14) = v437;
              _os_log_impl(&_mh_execute_header, v438, v439, "[Remove] Moving section from %{public}ld to %{public}ld", v440, 0x16u);
            }

            v441 = *&v763[v685];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v441 = sub_1004A84A4(0, *(v441 + 2) + 1, 1, v441);
            }

            v443 = *(v441 + 2);
            v442 = *(v441 + 3);
            if (v443 >= v442 >> 1)
            {
              v441 = sub_1004A84A4((v442 > 1), v443 + 1, 1, v441);
            }

            sub_1004C8978();
            *(v441 + 2) = v443 + 1;
            v444 = &v441[16 * v443];
            *(v444 + 4) = v436;
            *(v444 + 5) = v437;
LABEL_224:
            *&v763[v685] = v441;
            v19 = v747;
            goto LABEL_194;
          }

          v19 = a7;
          v431 = sub_10056DF68();
          v432 = sub_100573448();
          if (os_log_type_enabled(v431, v432))
          {
            v433 = swift_slowAlloc();
            *v433 = v754;
            *(v433 + 4) = a8;
            _os_log_impl(&_mh_execute_header, v431, v432, "Deleting section %{public}ld", v433, 0xCu);
            v19 = v747;
          }
        }

        else
        {
          if (v430)
          {
            goto LABEL_361;
          }

          if ((TupleTypeMetadata3 & 1) == 0)
          {
            v445 = v426 + v751;
            v446 = v428 + v751;
            if (__OFADD__(v428, v751))
            {
              goto LABEL_368;
            }

            v447 = sub_10056DF68();
            v448 = sub_100573448();
            if (os_log_type_enabled(v447, v448))
            {
              v449 = swift_slowAlloc();
              *v449 = v752;
              *(v449 + 4) = v446;
              *(v449 + 12) = 2050;
              *(v449 + 14) = v445;
              _os_log_impl(&_mh_execute_header, v447, v448, "[Insert] Moving section from %{public}ld to %{public}ld", v449, 0x16u);
            }

            v441 = *&v763[v685];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v441 = sub_1004A84A4(0, *(v441 + 2) + 1, 1, v441);
            }

            v451 = *(v441 + 2);
            v450 = *(v441 + 3);
            if (v451 >= v450 >> 1)
            {
              v441 = sub_1004A84A4((v450 > 1), v451 + 1, 1, v441);
            }

            sub_1004C8978();
            *(v441 + 2) = v451 + 1;
            v452 = &v441[16 * v451];
            *(v452 + 4) = v446;
            *(v452 + 5) = v445;
            goto LABEL_224;
          }

          v19 = a7;
          v431 = sub_10056DF68();
          v434 = sub_100573448();
          if (os_log_type_enabled(v431, v434))
          {
            v435 = swift_slowAlloc();
            *v435 = v754;
            *(v435 + 4) = a8;
            _os_log_impl(&_mh_execute_header, v431, v434, "Inserting section %{public}ld", v435, 0xCu);
            v19 = v747;
          }
        }

        sub_10056CD28(a8);
        sub_1004C8978();
LABEL_194:
        v423 = v769;
        sub_100573208();
      }

      while (*(v423 + v759) != v774);
    }

    sub_1004C8980(v769);
    v249 = sub_10049931C(_swiftEmptyArrayStorage);
    v251 = (v776 + 64);
    v250 = *(v776 + 64);
    v252 = 1 << *(v776 + 32);
    v253 = -1;
    v773 = v249;
    if (v252 < 64)
    {
      v253 = ~(-1 << v252);
    }

    v685 = v253 & v250;
    v661 = ((v252 + 63) >> 6);
    v254 = TupleTypeMetadata2;
    v666 = (TupleTypeMetadata2 - 8);
    v681 = (v711 + 16);
    v684 = (v711 + 32);
    v665 = (v690 + 32);
    v670 = v741 + 32;
    v750 = (v692 + 16);
    v749 = (v692 + 32);
    v769 = (v753 + 16);
    v768 = (v753 + 8);
    v748 = (v702 + 8);
    v663 = (v691 + 8);
    v671 = (v699 + 8);
    v664 = (v711 + 8);
    v667 = v776;

    v255 = 0;
    *&v256 = 134349312;
    v691 = v256;
    *&v256 = 136446210;
    v692 = v256;
    *&v256 = 136446466;
    v679 = v256;
    a8 = v765;
    TupleTypeMetadata3 = v762;
    v257 = v764;
    v258 = v758;
    v662 = v251;
LABEL_88:
    a7 = v718;
    v259 = v685;
    if (v685)
    {
      v680 = v255;
      v260 = v255;
      goto LABEL_98;
    }

    v261 = v661 <= v255 + 1 ? v255 + 1 : v661;
    v262 = v261 - 1;
LABEL_94:
    v260 = v255 + 1;
    if (!__OFADD__(v255, 1))
    {
      break;
    }

LABEL_353:
    __break(1u);
LABEL_354:
    __break(1u);
LABEL_355:
    __break(1u);
LABEL_356:
    __break(1u);
LABEL_357:
    __break(1u);
LABEL_358:
    __break(1u);
LABEL_359:
    __break(1u);
LABEL_360:
    __break(1u);
LABEL_361:
    __break(1u);
LABEL_362:
    __break(1u);
LABEL_363:
    __break(1u);
LABEL_364:
    __break(1u);
LABEL_365:
    swift_once();
  }

  if (v260 >= v661)
  {
    v685 = 0;
    v271 = 1;
    v680 = v262;
    goto LABEL_99;
  }

  v259 = v251[v260];
  ++v255;
  if (!v259)
  {
    goto LABEL_94;
  }

  v680 = v260;
LABEL_98:
  v685 = (v259 - 1) & v259;
  v263 = __clz(__rbit64(v259)) | (v260 << 6);
  v264 = *(*(v667 + 48) + 8 * v263);
  v265 = v711;
  v266 = v706;
  (*(v711 + 16))(v706, *(v667 + 56) + *(v711 + 72) * v263, TupleTypeMetadata3);
  v267 = TupleTypeMetadata2;
  v268 = *(TupleTypeMetadata2 + 48);
  v269 = v718;
  *v718 = v264;
  v270 = *(v265 + 32);
  v254 = v267;
  v270(&v269[v268], v266, TupleTypeMetadata3);
  a7 = v269;
  v271 = 0;
LABEL_99:
  v272 = *(v254 - 8);
  (*(v272 + 56))(a7, v271, 1, v254);
  (*v665)(v258, a7, v708);
  if ((*(v272 + 48))(v258, 1, v254) == 1)
  {

    v453 = 0;
    v736 = (v741 + 40);
    v454 = *(v741 + 32);
    v756 = (v693 + 8);
    v737 = (v699 + 16);
    v745 = v753 + 32;
    *&v455 = 134350594;
    v733 = v455;
    v456 = v669;
    v748 = v454;
    while (1)
    {
      if (v453 >= v456)
      {
        goto LABEL_370;
      }

      v457 = (v453 + 1);
      if (__OFADD__(v453, 1))
      {
        goto LABEL_371;
      }

      v458 = v705;
      sub_100572E48();
      v459 = v454(v19, v741);
      v461 = v782;
      if (!*(v782 + 16))
      {
        (*v671)(v458, v19);

        goto LABEL_227;
      }

      v462 = sub_1004B0CCC(v459, v460);
      v464 = v463;

      if ((v464 & 1) == 0)
      {
        (*v671)(v705, v19);
        goto LABEL_227;
      }

      v749 = (v453 + 1);
      v465 = *(*(v461 + 7) + 8 * v462);
      v466 = v741;
      v467 = *(v741 + 40);
      v467(v19, v741);
      v766 = v465;
      sub_100572E48();
      v468 = v710;
      v467(v19, v466);
      v469 = v712;
      v470 = sub_1005731C8();
      v471 = *v756;
      (*v756)(v468, v469);
      v472 = sub_1005731C8();
      v764 = v470;
      v473 = __OFSUB__(v472, v470);
      v474 = v472 - v470;
      if (v473)
      {
        goto LABEL_372;
      }

      v475 = v687;
      if (v474 < 0)
      {
        v473 = __OFSUB__(0, v474);
        v474 = -v474;
        if (v473)
        {
          goto LABEL_375;
        }
      }

      v762 = v472;
      swift_beginAccess();
      v750 = v773;
      v476 = sub_1004B8264(v766, v773);
      v478 = v477;
      swift_endAccess();
      if (v478)
      {
        v479 = 0;
      }

      else
      {
        v479 = v476;
      }

      v765 = v474 + v479;
      if (__OFADD__(v474, v479))
      {
        goto LABEL_373;
      }

      v763 = sub_1005731C8();
      v480 = *v737;
      v481 = v747;
      (*v737)(v475, v705, v747);
      v482 = v688;
      v734 = v480;
      v480(v688, v697, v481);
      v483 = sub_10056DF68();
      v484 = sub_100573448();
      v485 = os_log_type_enabled(v483, v484);
      *&v754 = v471;
      v735 = v461;
      if (v485)
      {
        v486 = swift_slowAlloc();
        v761 = swift_slowAlloc();
        v771 = v761;
        *v486 = v733;
        *(v486 + 4) = v453;
        *(v486 + 12) = 2082;
        WitnessTable = v483;
        LODWORD(v759) = v484;
        v487 = v748;
        v488 = v748(v481, v741);
        v489 = v475;
        v491 = v490;
        v492 = *v671;
        (*v671)(v489, v481);
        v493 = sub_1004C2954(v488, v491, &v771);

        *(v486 + 14) = v493;
        *(v486 + 22) = 2050;
        *(v486 + 24) = v766;
        *(v486 + 32) = 2080;
        v494 = v688;
        v495 = v487(v481, v741);
        v497 = v496;
        *&v752 = v492;
        v492(v494, v481);
        v498 = sub_1004C2954(v495, v497, &v771);

        *(v486 + 34) = v498;
        *(v486 + 42) = 2050;
        *(v486 + 44) = v474;
        *(v486 + 52) = 2050;
        *(v486 + 54) = v765;
        *(v486 + 62) = 2082;
        v774 = sub_1004B8264(v766, v750);
        LOBYTE(v775) = v499 & 1;
        sub_100009DCC(&qword_1006F8E68);
        v500 = sub_100572978();
        v502 = sub_1004C2954(v500, v501, &v771);

        *(v486 + 64) = v502;
        v503 = WitnessTable;
        _os_log_impl(&_mh_execute_header, WitnessTable, v759, "Section %{public}ld(%{public}s) mapped to section %{public}ld(%s): difference=%{public}ld adjustedDifference=%{public}ld diffAdjustmentMap=%{public}s", v486, 0x48u);
        swift_arrayDestroy();

        v466 = v741;
      }

      else
      {

        v504 = *v671;
        (*v671)(v482, v481);
        *&v752 = v504;
        v504(v475, v481);
      }

      v774 = _swiftEmptyArrayStorage;
      v505 = v764;
      if (v762 > v764)
      {
        v505 = v762;
      }

      v506 = (v505 - 1);
      if (__OFSUB__(v505, 1))
      {
        goto LABEL_374;
      }

      swift_beginAccess();
      isa = _swiftEmptyArrayStorage[2];
      if (isa >= v765)
      {
        v591 = _swiftEmptyArrayStorage;
        v557 = v709;
        goto LABEL_304;
      }

      v761 = v453 + v751;
      v508 = __OFADD__(v453, v751);
      LODWORD(v762) = v508;
      v509 = v766;
      if (v763 >= v764)
      {
        v509 = v453;
      }

      v758 = (v509 + v751);
      v510 = __OFADD__(v509, v751);
      LODWORD(v759) = v510;
      WitnessTable = &_swiftEmptyArrayStorage[2];
      v757 = _swiftEmptyArrayStorage;
      do
      {
        while (1)
        {
          if (v506 < 0)
          {

            v639 = v686;
            v640 = v705;
            v734(v686, v705, v481);
            v641 = sub_10056DF68();
            v642 = sub_100573438();
            if (os_log_type_enabled(v641, v642))
            {
              v643 = swift_slowAlloc();
              v644 = swift_slowAlloc();
              v771 = v644;
              *v643 = v692;
              v645 = v748(v481, v466);
              v647 = v646;
              v648 = v752;
              (v752)(v639, v481);
              v649 = sub_1004C2954(v645, v647, &v771);

              *(v643 + 4) = v649;
              _os_log_impl(&_mh_execute_header, v641, v642, "We ran out of items while trying to build index paths for section with identifier %{public}s", v643, 0xCu);
              sub_100010474(v644);

              sub_1000F3E14(v722);

              sub_1000F3E14(v739);
              sub_1000F3E14(v668);
              v648(v697, v481);
              (v754)(v698, v712);
              v648(v640, v481);
            }

            else
            {

              sub_1000F3E14(v722);

              sub_1000F3E14(v739);
              sub_1000F3E14(v668);
              v650 = v752;
              (v752)(v639, v481);
              v650(v697, v481);
              (v754)(v698, v712);
              v650(v640, v481);
            }

            (*(v700 + 8))(v704, v731);

            goto LABEL_191;
          }

          if (v762)
          {
            __break(1u);
LABEL_367:
            __break(1u);
LABEL_368:
            __break(1u);
LABEL_369:
            __break(1u);
LABEL_370:
            __break(1u);
LABEL_371:
            __break(1u);
LABEL_372:
            __break(1u);
LABEL_373:
            __break(1u);
LABEL_374:
            __break(1u);
LABEL_375:
            __break(1u);

            __break(1u);
            return result;
          }

          sub_10056CDD8();
          v511 = v779;
          v512 = *(v779 + 2);
          v766 = v506;
          if (v512)
          {
            sub_1004C8A8C(&qword_1006F8BA8, &type metadata accessor for IndexPath);
            v513 = sub_100572738();
            v514 = -1 << v511[32];
            v515 = v513 & ~v514;
            if ((*&v511[((v515 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v515))
            {
              v516 = ~v514;
              v517 = *(v753 + 72);
              v518 = *(v753 + 16);
              while (1)
              {
                v519 = v767;
                v518(v767, *(v511 + 6) + v517 * v515, v770);
                sub_1004C8A8C(&qword_1006F8BB0, &type metadata accessor for IndexPath);
                v520 = sub_1005727E8();
                v521 = *v768;
                (*v768)(v519, v770);
                if (v520)
                {
                  break;
                }

                v515 = (v515 + 1) & v516;
                if (((*&v511[((v515 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v515) & 1) == 0)
                {
                  goto LABEL_263;
                }
              }

              v539 = v689;
              v540 = v738;
              v518(v689, v738, v770);
              v541 = sub_10056DF68();
              v542 = sub_100573448();
              if (os_log_type_enabled(v541, v542))
              {
                v543 = swift_slowAlloc();
                v544 = swift_slowAlloc();
                v771 = v544;
                *v543 = v692;
                sub_1004C8A8C(&qword_1006F8E60, &type metadata accessor for IndexPath);
                v545 = v770;
                v546 = sub_100574408();
                v548 = v547;
                v521(v539, v545);
                v549 = sub_1004C2954(v546, v548, &v771);

                *(v543 + 4) = v549;
                _os_log_impl(&_mh_execute_header, v541, v542, "%{public}s contained in the visible index paths set, skipping", v543, 0xCu);
                sub_100010474(v544);

                v521(v540, v545);
              }

              else
              {

                v556 = v770;
                v521(v539, v770);
                v521(v540, v556);
              }

              v481 = v747;
              v557 = v709;
              v523 = v766;
              goto LABEL_294;
            }
          }

LABEL_263:
          if (v759)
          {
            goto LABEL_369;
          }

          v522 = v707;
          v523 = v766;
          sub_10056CDD8();
          v524 = (*(v753 + 80) + 32) & ~*(v753 + 80);
          if (v763 < v764)
          {
            break;
          }

          v533 = *v743;
          v532 = v743[1];
          v534 = v532 + v524;
          v535 = *(v532 + 16);
          if (*v743)
          {

            sub_1004C6E80(v522, v534, v535, (v533 + 16), v533 + 32);
            v537 = v536;

            if (v537)
            {
              goto LABEL_296;
            }

            v538 = *v769;
          }

          else
          {
            if (!v535)
            {
              goto LABEL_296;
            }

            v553 = *(v753 + 72);
            v538 = *(v753 + 16);
            while (1)
            {
              v554 = v767;
              v538(v767, v534, v770);
              sub_1004C8A8C(&qword_1006F8BB0, &type metadata accessor for IndexPath);
              v555 = sub_1005727E8();
              (*v768)(v554, v770);
              if (v555)
              {
                break;
              }

              v534 += v553;
              if (!--v535)
              {
                goto LABEL_296;
              }
            }

            v523 = v766;
          }

          v558 = v695;
          v538(v695, v522, v770);
          v559 = sub_10056DF68();
          v573 = sub_100573448();
          if (!os_log_type_enabled(v559, v573))
          {
LABEL_292:

            v579 = *v768;
            v580 = v770;
            (*v768)(v558, v770);
            v579(v738, v580);
            v579(v522, v580);
            goto LABEL_293;
          }

          v561 = swift_slowAlloc();
          v574 = v558;
          v563 = swift_slowAlloc();
          v771 = v563;
          *v561 = v692;
          sub_1004C8A8C(&qword_1006F8E60, &type metadata accessor for IndexPath);
          v564 = v770;
          v575 = sub_100574408();
          v577 = v576;
          v568 = *v768;
          (*v768)(v574, v564);
          v578 = sub_1004C2954(v575, v577, &v771);

          *(v561 + 4) = v578;
          v570 = v573;
          v571 = v559;
          v572 = "%{public}s contained in the deleted index paths set, skipping";
LABEL_291:
          _os_log_impl(&_mh_execute_header, v571, v570, v572, v561, 0xCu);
          sub_100010474(v563);

          v568(v738, v564);
          v568(v707, v564);
          v523 = v766;
LABEL_293:
          v481 = v747;
          v557 = v709;
LABEL_294:
          v506 = v523 - 1;
          isa = WitnessTable->isa;
          v466 = v741;
          if (WitnessTable->isa >= v765)
          {
            goto LABEL_303;
          }
        }

        v526 = *v732;
        v525 = v732[1];
        v527 = v525 + v524;
        v528 = *(v525 + 16);
        if (*v732)
        {

          sub_1004C6E80(v522, v527, v528, (v526 + 16), v526 + 32);
          v530 = v529;

          if ((v530 & 1) == 0)
          {
            v531 = *v769;
LABEL_286:
            v558 = v694;
            v531(v694, v522, v770);
            v559 = sub_10056DF68();
            v560 = sub_100573448();
            if (!os_log_type_enabled(v559, v560))
            {
              goto LABEL_292;
            }

            v561 = swift_slowAlloc();
            v562 = v558;
            v563 = swift_slowAlloc();
            v771 = v563;
            *v561 = v692;
            sub_1004C8A8C(&qword_1006F8E60, &type metadata accessor for IndexPath);
            v564 = v770;
            v565 = sub_100574408();
            v567 = v566;
            v568 = *v768;
            (*v768)(v562, v564);
            v569 = sub_1004C2954(v565, v567, &v771);

            *(v561 + 4) = v569;
            v570 = v560;
            v571 = v559;
            v572 = "%{public}s contained in the inserted index paths set, skipping";
            goto LABEL_291;
          }
        }

        else if (v528)
        {
          v550 = *(v753 + 72);
          v531 = *(v753 + 16);
          while (1)
          {
            v551 = v767;
            v531(v767, v527, v770);
            sub_1004C8A8C(&qword_1006F8BB0, &type metadata accessor for IndexPath);
            v552 = sub_1005727E8();
            (*v768)(v551, v770);
            if (v552)
            {
              break;
            }

            v527 += v550;
            if (!--v528)
            {
              goto LABEL_296;
            }
          }

          v523 = v766;
          goto LABEL_286;
        }

LABEL_296:
        (*v769)(v696, v522, v770);
        v581 = v757;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v581 = sub_1004A828C(0, v581[2].isa + 1, 1, v581);
        }

        v481 = v747;
        v466 = v741;
        v582 = v738;
        v583 = v766;
        v585 = v581[2].isa;
        v584 = v581[3].isa;
        if (v585 >= v584 >> 1)
        {
          v581 = sub_1004A828C(v584 > 1, v585 + 1, 1, v581);
        }

        v581[2].isa = (v585 + 1);
        v586 = v581 + 2;
        v587 = v753;
        v588 = v581 + v524 + *(v753 + 72) * v585;
        v589 = v770;
        (*(v753 + 32))(v588, v696, v770);
        v757 = v581;
        v774 = v581;
        v590 = *(v587 + 8);
        v590(v582, v589);
        v590(v707, v589);
        v506 = v583 - 1;
        WitnessTable = v581 + 2;
        isa = v581[2].isa;
      }

      while (v586->isa < v765);
      v557 = v709;
LABEL_303:
      v591 = v757;
LABEL_304:
      v757 = v591;

      if (v763 >= v764)
      {
        if (isa)
        {
          v606 = 0;
          v607 = *(v753 + 72);
          v608 = (*(v753 + 80) + 32) & ~*(v753 + 80);
          v609 = v757 + v608;
          v610 = *(v753 + 16);
          v766 = (v757 + v608);
          v610(v557, v757 + v608, v770);
          while (1)
          {
            v612 = *v743;
            v611 = v743[1];
            v613 = v611 + v608;
            v614 = *(v611 + 16);
            if (*v743)
            {

              sub_1004C6E80(v557, v613, v614, (v612 + 16), v612 + 32);
              v616 = v615;

              if (v616)
              {
                v557 = v709;
                goto LABEL_331;
              }

              v557 = v709;
            }

            else
            {
              if (!v614)
              {
                goto LABEL_331;
              }

              do
              {
                v617 = v767;
                v610(v767, v613, v770);
                sub_1004C8A8C(&qword_1006F8BB0, &type metadata accessor for IndexPath);
                v618 = sub_1005727E8();
                (*v768)(v617, v770);
                if (v618)
                {
                  v609 = v766;
                  goto LABEL_322;
                }

                v613 += v607;
                --v614;
              }

              while (v614);
              v609 = v766;
LABEL_331:
              sub_1004C6864(v557);
            }

LABEL_322:
            v606 = (v606 + 1);
            (*v768)(v557, v770);
            if (v606 == isa)
            {
              break;
            }

            v610(v557, (v609 + v607 * v606), v770);
          }
        }

        v619 = sub_10056DF68();
        v630 = sub_100573448();
        if (os_log_type_enabled(v619, v630))
        {
          v621 = swift_slowAlloc();
          v622 = swift_slowAlloc();
          v771 = v622;
          *v621 = v692;

          v631 = sub_100572D38();
          v633 = v632;

          v634 = sub_1004C2954(v631, v633, &v771);

          *(v621 + 4) = v634;
          v627 = v630;
          v628 = v619;
          v629 = "Non visible adjustment: deleting %{public}s";
LABEL_337:
          _os_log_impl(&_mh_execute_header, v628, v627, v629, v621, 0xCu);
          sub_100010474(v622);
        }
      }

      else
      {
        if (isa)
        {
          v592 = 0;
          v593 = *(v753 + 72);
          v594 = (*(v753 + 80) + 32) & ~*(v753 + 80);
          v595 = v757 + v594;
          v596 = *(v753 + 16);
          v597 = v703;
          v766 = (v757 + v594);
          v596(v703, v757 + v594, v770);
          while (1)
          {
            v599 = *v732;
            v598 = v732[1];
            v600 = v598 + v594;
            v601 = *(v598 + 16);
            if (*v732)
            {

              sub_1004C6E80(v597, v600, v601, (v599 + 16), v599 + 32);
              v603 = v602;

              if (v603)
              {
                v597 = v703;
                goto LABEL_317;
              }

              v597 = v703;
            }

            else
            {
              if (!v601)
              {
                goto LABEL_317;
              }

              do
              {
                v604 = v767;
                v596(v767, v600, v770);
                sub_1004C8A8C(&qword_1006F8BB0, &type metadata accessor for IndexPath);
                v605 = sub_1005727E8();
                (*v768)(v604, v770);
                if (v605)
                {
                  v595 = v766;
                  goto LABEL_308;
                }

                v600 += v593;
                --v601;
              }

              while (v601);
              v595 = v766;
LABEL_317:
              sub_1004C6864(v597);
            }

LABEL_308:
            v592 = (v592 + 1);
            (*v768)(v597, v770);
            if (v592 == isa)
            {
              break;
            }

            v596(v597, (v595 + v593 * v592), v770);
          }
        }

        v619 = sub_10056DF68();
        v620 = sub_100573448();
        if (os_log_type_enabled(v619, v620))
        {
          v621 = swift_slowAlloc();
          v622 = swift_slowAlloc();
          v771 = v622;
          *v621 = v692;

          v623 = sub_100572D38();
          v625 = v624;

          v626 = sub_1004C2954(v623, v625, &v771);

          *(v621 + 4) = v626;
          v627 = v620;
          v628 = v619;
          v629 = "Non visible adjustment: inserting %{public}s";
          goto LABEL_337;
        }
      }

      v19 = v747;
      v635 = v752;
      (v752)(v697, v747);
      (v754)(v698, v712);
      v635(v705, v19);

      v454 = v748;
      v457 = v749;
LABEL_227:
      v456 = v669;
      v453 = v457;
      if (v457 == v669)
      {

        sub_1000F3E14(v722);

        sub_1000F3E14(v739);

        sub_1000F3E14(v668);

        (*(v700 + 8))(v704, v731);

        goto LABEL_347;
      }
    }
  }

  v273 = *v258;
  (*v684)(v725, v258 + *(v254 + 48), TupleTypeMetadata3);
  v759 = v273;
  if (__OFSUB__(v273, v751))
  {
    goto LABEL_362;
  }

  sub_100572E48();
  v274 = (*(v741 + 32))(v19);
  v276 = *(v782 + 16);
  v690 = v782;
  if (v276 && (v277 = sub_1004B0CCC(v274, v275), (v278 & 1) != 0))
  {
    v279 = *(*(v690 + 56) + 8 * v277);

    v280 = swift_isUniquelyReferenced_nonNull_native();
    v774 = v773;
    v713 = v279;
    sub_1004C4954(0, v279, v280);
    LODWORD(v752) = 0;
    v773 = v774;
  }

  else
  {

    v713 = 0;
    LODWORD(v752) = 1;
  }

  (*v681)(v257, v725, TupleTypeMetadata3);
  v281 = *(v721 + 36);
  a7 = WitnessTable;
  sub_1005731B8();
  sub_100573208();
  if (sub_1005741E8())
  {
LABEL_87:
    (*v663)(v257, v721);
    (*v671)(v720, v19);
    (*v664)(v725, TupleTypeMetadata3);
    v254 = TupleTypeMetadata2;
    v251 = v662;
    v255 = v680;
    goto LABEL_88;
  }

  v701 = v713 + v751;
  v282 = __OFADD__(v713, v751);
  LODWORD(v702) = v282;
  v761 = v281;
  while (1)
  {
    v286 = sub_1005732E8();
    v287 = v756;
    v288 = v757;
    (*v750)(v756);
    v286(&v774, 0);
    sub_100573218();
    v289 = v766;
    (*v749)(v766, v287, v288);
    LODWORD(v286) = swift_getEnumCaseMultiPayload();
    v290 = *v289;
    sub_100010324(&qword_1006F8E68);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v291 = v289 + *(TupleTypeMetadata3 + 64);
    v292 = *v291;
    a8 = v291[8];
    v293 = v780[0];
    v294 = *(v780[0] + 16);
    if (v286 != 1)
    {
      if (v294)
      {
        v297 = sub_1004B0DB8(v759);
        if (v298)
        {
          v294 = *(*(v293 + 56) + 8 * v297);
        }

        else
        {
          v294 = 0;
        }
      }

      if (__OFADD__(v290, v294))
      {
        __break(1u);
LABEL_352:
        __break(1u);
        goto LABEL_353;
      }

      a7 = v766 + *(TupleTypeMetadata3 + 48);
      if (v752)
      {
        v311 = sub_10056DF68();
        v312 = sub_100573448();
        v313 = os_log_type_enabled(v311, v312);
        TupleTypeMetadata3 = v762;
        if (v313)
        {
          v314 = swift_slowAlloc();
          *v314 = v691;
          *(v314 + 4) = v759;
          *(v314 + 12) = 2050;
          *(v314 + 14) = v290;
          goto LABEL_144;
        }

LABEL_145:

        a8 = v765;
        v257 = v764;
        v258 = v758;
        goto LABEL_113;
      }

      *&v754 = v766 + *(TupleTypeMetadata3 + 48);
      if (a8)
      {
        v316 = sub_1004BED64(&v774, v713);
        if (*(v315 + 8))
        {
          (v316)(&v774, 0);
          a7 = v724;
        }

        else
        {
          a7 = v724;
          if (__OFADD__(*v315, 1))
          {
            goto LABEL_364;
          }

          ++*v315;
          (v316)(&v774, 0);
        }

        if (v702)
        {
          goto LABEL_358;
        }

        sub_10056CDD8();
        v379 = *v732;
        v378 = v732[1];
        v380 = v378 + ((*(v753 + 80) + 32) & ~*(v753 + 80));
        v381 = *(v378 + 16);
        if (*v732)
        {

          sub_1004C6E80(a7, v380, v381, (v379 + 16), v379 + 32);
          v383 = v382;

          if ((v383 & 1) == 0)
          {
            goto LABEL_183;
          }
        }

        else if (v381)
        {
          v402 = *(v753 + 72);
          v403 = *(v753 + 16);
          do
          {
            v404 = v767;
            v405 = v770;
            v403(v767, v380, v770);
            sub_1004C8A8C(&qword_1006F8BB0, &type metadata accessor for IndexPath);
            v406 = sub_1005727E8();
            (*v768)(v404, v405);
            if (v406)
            {
              goto LABEL_183;
            }

            v380 += v402;
          }

          while (--v381);
        }

        sub_1004C6864(a7);
LABEL_183:
        v407 = v714;
        (*v769)(v714, a7, v770);
        v408 = sub_10056DF68();
        v409 = sub_100573448();
        if (os_log_type_enabled(v408, v409))
        {
          v410 = swift_slowAlloc();
          v411 = swift_slowAlloc();
          v774 = v411;
          *v410 = v692;
          sub_1004C8A8C(&qword_1006F8E60, &type metadata accessor for IndexPath);
          v412 = v770;
          v413 = sub_100574408();
          v415 = v414;
          v416 = *v768;
          (*v768)(v407, v412);
          v417 = sub_1004C2954(v413, v415, &v774);

          *(v410 + 4) = v417;
          _os_log_impl(&_mh_execute_header, v408, v409, "Inserting item %{public}s", v410, 0xCu);
          sub_100010474(v411);
          v19 = v747;

          v416(v724, v412);
        }

        else
        {

          v418 = *v768;
          v419 = v770;
          (*v768)(v407, v770);
          v418(a7, v419);
        }

        a8 = v765;
        TupleTypeMetadata3 = v762;
        v257 = v764;
        v258 = v758;
        goto LABEL_112;
      }

      v318 = v737;
      sub_10056CDD8();
      if (v702)
      {
        goto LABEL_357;
      }

      v319 = v736;
      sub_10056CDD8();
      v320 = *v769;
      v321 = v716;
      v322 = v318;
      v323 = v770;
      (*v769)(v716, v322, v770);
      v324 = v723;
      v320(v723, v319, v323);
      v325 = sub_10056DF68();
      v326 = sub_100573448();
      if (os_log_type_enabled(v325, v326))
      {
        v327 = swift_slowAlloc();
        v677 = swift_slowAlloc();
        v774 = v677;
        *v327 = v679;
        sub_1004C8A8C(&qword_1006F8E60, &type metadata accessor for IndexPath);
        v328 = v770;
        v329 = sub_100574408();
        v330 = v321;
        v332 = v331;
        v333 = *v768;
        (*v768)(v330, v328);
        v334 = sub_1004C2954(v329, v332, &v774);

        *(v327 + 4) = v334;
        *(v327 + 12) = 2082;
        v335 = v723;
        v336 = sub_100574408();
        v338 = v337;
        v333(v335, v328);
        v339 = sub_1004C2954(v336, v338, &v774);

        *(v327 + 14) = v339;
        _os_log_impl(&_mh_execute_header, v325, v326, "[Insert] Moving item %{public}s to %{public}s", v327, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v333 = *v768;
        v384 = v324;
        v385 = v770;
        (*v768)(v384, v770);
        v333(v321, v385);
      }

      a8 = v765;
      v257 = v764;
      v258 = v758;
      v386 = *(v729 + 48);
      v387 = v730;
      v388 = v770;
      v320(v730, v737, v770);
      v320(&v387[v386], v736, v388);
      v389 = *&v763[v745];
      v390 = swift_isUniquelyReferenced_nonNull_native();
      v19 = v747;
      if ((v390 & 1) == 0)
      {
        v389 = sub_1004A82B4(0, v389[2] + 1, 1, v389);
      }

      v392 = v389[2];
      v391 = v389[3];
      if (v392 >= v391 >> 1)
      {
        v389 = sub_1004A82B4(v391 > 1, v392 + 1, 1, v389);
      }

      v283 = v770;
      v333(v736, v770);
      v333(v737, v283);
      v389[2] = v392 + 1;
      v284 = v389 + ((*(v728 + 80) + 32) & ~*(v728 + 80)) + *(v728 + 72) * v392;
      v285 = &v758;
      goto LABEL_111;
    }

    if (v294)
    {
      v295 = sub_1004B0DB8(v759);
      if (v296)
      {
        v294 = *(*(v293 + 56) + 8 * v295);
      }

      else
      {
        v294 = 0;
      }
    }

    if (__OFADD__(v290, v294))
    {
      goto LABEL_352;
    }

    if (v752)
    {
      break;
    }

    v300 = sub_1004BED64(&v774, v713);
    if (*(v299 + 8) != 1)
    {
      if (__OFSUB__(*v299, 1))
      {
        goto LABEL_356;
      }

      --*v299;
    }

    (v300)(&v774, 0);
    *&v754 = v766 + *(TupleTypeMetadata3 + 48);
    if (a8)
    {
      goto LABEL_130;
    }

    v19 = v733;
    sub_10056CDD8();
    if (v702)
    {
      goto LABEL_359;
    }

    v340 = v735;
    sub_10056CDD8();
    v341 = v770;
    v342 = *v769;
    v343 = v715;
    (*v769)(v715, v19, v770);
    v344 = v678;
    v342(v678, v340, v341);
    v345 = sub_10056DF68();
    v346 = sub_100573448();
    if (os_log_type_enabled(v345, v346))
    {
      v347 = swift_slowAlloc();
      v677 = swift_slowAlloc();
      v774 = v677;
      *v347 = v679;
      sub_1004C8A8C(&qword_1006F8E60, &type metadata accessor for IndexPath);
      v674 = v345;
      v348 = v770;
      v349 = sub_100574408();
      LODWORD(v673) = v346;
      v351 = v350;
      v352 = *v768;
      (*v768)(v343, v348);
      v353 = v349;
      v19 = v733;
      v354 = sub_1004C2954(v353, v351, &v774);

      *(v347 + 4) = v354;
      *(v347 + 12) = 2082;
      v355 = sub_100574408();
      v357 = v356;
      v352(v344, v348);
      v358 = sub_1004C2954(v355, v357, &v774);

      *(v347 + 14) = v358;
      v359 = v674;
      _os_log_impl(&_mh_execute_header, v674, v673, "[Remove] Moving item %{public}s to %{public}s", v347, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v352 = *v768;
      v393 = v344;
      v394 = v770;
      (*v768)(v393, v770);
      v352(v343, v394);
    }

    v257 = v764;
    v258 = v758;
    v395 = *(v729 + 48);
    v396 = v727;
    v397 = v770;
    v342(v727, v19, v770);
    v342(&v396[v395], v735, v397);
    v389 = *&v763[v745];
    v398 = swift_isUniquelyReferenced_nonNull_native();
    v19 = v747;
    a8 = v765;
    if ((v398 & 1) == 0)
    {
      v389 = sub_1004A82B4(0, v389[2] + 1, 1, v389);
    }

    v400 = v389[2];
    v399 = v389[3];
    if (v400 >= v399 >> 1)
    {
      v389 = sub_1004A82B4(v399 > 1, v400 + 1, 1, v389);
    }

    v401 = v770;
    v352(v735, v770);
    v352(v733, v401);
    v389[2] = v400 + 1;
    v284 = v389 + ((*(v728 + 80) + 32) & ~*(v728 + 80)) + *(v728 + 72) * v400;
    v285 = &v755;
LABEL_111:
    sub_1004C89E8(*(v285 - 32), v284);
    *&v763[v745] = v389;
    TupleTypeMetadata3 = v762;
LABEL_112:
    a7 = v754;
LABEL_113:
    (*v748)(a7, a8);
    a7 = WitnessTable;
    sub_100573208();
    if (sub_1005741E8())
    {
      goto LABEL_87;
    }
  }

  a7 = v766 + *(TupleTypeMetadata3 + 48);
  if (!a8)
  {
    v311 = sub_10056DF68();
    v312 = sub_100573448();
    v317 = os_log_type_enabled(v311, v312);
    TupleTypeMetadata3 = v762;
    if (v317)
    {
      v314 = swift_slowAlloc();
      *v314 = v691;
      *(v314 + 4) = v759;
      *(v314 + 12) = 2050;
      *(v314 + 14) = v292;
LABEL_144:
      _os_log_impl(&_mh_execute_header, v311, v312, "Skipping insert for [%{public}ld,%{public}ld]", v314, 0x16u);
    }

    goto LABEL_145;
  }

  *&v754 = v766 + *(TupleTypeMetadata3 + 48);
LABEL_130:
  v301 = v734;
  sub_10056CDD8();
  v302 = sub_1004B09D8(v301, v779);
  v303 = v765;
  v304 = v764;
  if (v302)
  {
    v306 = *v743;
    v305 = v743[1];
    v307 = v305 + ((*(v753 + 80) + 32) & ~*(v753 + 80));
    v308 = *(v305 + 16);
    if (*v743)
    {

      sub_1004C6E80(v301, v307, v308, (v306 + 16), v306 + 32);
      v310 = v309;

      if ((v310 & 1) == 0)
      {
        goto LABEL_157;
      }
    }

    else if (v308)
    {
      v360 = *(v753 + 72);
      v361 = *(v753 + 16);
      do
      {
        v362 = v767;
        v363 = v770;
        v361(v767, v307, v770);
        sub_1004C8A8C(&qword_1006F8BB0, &type metadata accessor for IndexPath);
        v364 = sub_1005727E8();
        (*v768)(v362, v363);
        if (v364)
        {
          goto LABEL_157;
        }

        v307 += v360;
      }

      while (--v308);
    }

    sub_1004C6864(v301);
LABEL_157:
    v365 = v726;
    (*v769)(v726, v301, v770);
    v366 = sub_10056DF68();
    v367 = sub_100573448();
    if (os_log_type_enabled(v366, v367))
    {
      v368 = swift_slowAlloc();
      v369 = swift_slowAlloc();
      v774 = v369;
      *v368 = v692;
      sub_1004C8A8C(&qword_1006F8E60, &type metadata accessor for IndexPath);
      v370 = v770;
      v371 = sub_100574408();
      v373 = v372;
      v374 = *v768;
      (*v768)(v365, v370);
      v375 = sub_1004C2954(v371, v373, &v774);

      *(v368 + 4) = v375;
      _os_log_impl(&_mh_execute_header, v366, v367, "Deleting item %{public}s", v368, 0xCu);
      sub_100010474(v369);
      v19 = v747;

      v374(v734, v370);
    }

    else
    {

      v376 = *v768;
      v377 = v770;
      (*v768)(v365, v770);
      v376(v301, v377);
    }

    a8 = v765;
    TupleTypeMetadata3 = v762;
    v257 = v764;
    v258 = v758;
    goto LABEL_112;
  }

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v420 = sub_10056DF68();
  v421 = sub_100573428();
  if (os_log_type_enabled(v420, v421))
  {
    v422 = swift_slowAlloc();
    *v422 = 0;
    _os_log_impl(&_mh_execute_header, v420, v421, "Tried to delete an index path from the visible items diff that is not present in the visible index paths set. The visible index paths are likely not consecutive and the diff would be inconsistent, bailing and reloading data.", v422, 2u);
    v303 = v765;
  }

  sub_1000F3E14(v722);

  sub_1000F3E14(v739);
  sub_1000F3E14(v668);
  (*v663)(v304, v721);
  (*v671)(v720, v19);
  (*v664)(v725, v762);
  (*(v700 + 8))(v704, v731);
  (*v768)(v301, v770);
  *v763 = 1;
  (*v748)(v754, v303);

LABEL_191:
}

uint64_t sub_1004BEADC@<X0>(_BYTE *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1005727E8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1004BEBC4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 32);
  v7 = v6(a1, a2);
  sub_1004C31DC(&v11, v7, v8);

  result = v6(a1, a2);
  *a3 = result;
  a3[1] = v10;
  return result;
}

uint64_t sub_1004BEC84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + 32);
  v10 = v9(a4, a5);
  v12 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *a3;
  *a3 = 0x8000000000000000;
  sub_1004C4A78(a1, v10, v12, isUniquelyReferenced_nonNull_native);

  *a3 = v15;

  return v9(a4, a5);
}

void (*sub_1004BED64(uint64_t **a1, uint64_t a2))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1004C6498(v4, a2);
  return sub_1004BEDDC;
}

uint64_t (*sub_1004BEDE0(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = sub_1004C6540(v8, a2, a3, a4);
  return sub_1004C8B70;
}

void sub_1004BEE70(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1004BEEBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, __n128), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  v33 = a8;
  v15 = sub_10056CE18();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3(a1, a2, v17);
  if ((v20 & 1) == 0 || !a5)
  {
    return v20 & 1;
  }

  if (a5(a1, a2) & 1) != 0 || (v31 = v16, v32 = a7, swift_getAssociatedTypeWitness(), swift_getAssociatedConformanceWitness(), swift_getAssociatedTypeWitness(), swift_getAssociatedConformanceWitness(), v21 = sub_10056DCE8(), (v22))
  {
    sub_1000F3E14(a5);
    return v20 & 1;
  }

  v23 = *a9;
  v24 = *(*a9 + 16);
  if (v24)
  {
    v25 = v21;
    v26 = sub_1004B0DB8(a10);
    if (v27)
    {
      v24 = *(*(v23 + 56) + 8 * v26);
    }

    else
    {
      v24 = 0;
    }

    v21 = v25;
  }

  v28 = __OFADD__(v21, v24);
  result = v21 + v24;
  if (!v28)
  {
    sub_10056CDD8();
    type metadata accessor for AIDiffingUpdate();
    sub_1004C665C(v19);
    sub_1000F3E14(a5);
    (*(v31 + 8))(v19, v15);
    return v20 & 1;
  }

  __break(1u);
  return result;
}

uint64_t UICollectionView.calculateAIDiff<A>(oldItems:newItems:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)(uint64_t, void *, NSObject *)@<X3>, char a5@<W4>, unint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{

  v20 = [v14 indexPathsForVisibleItems];
  sub_10056CE18();
  v21 = sub_100572D28();

  sub_1000E672C(a6);
  sub_1000E672C(a8);
  sub_1000E672C(a11);
  return sub_1004B82F4(a1, a2, v21, a3, a4, a5 & 1, a6, a7, a9, a8, a10, a11, a12, a13, a14);
}

uint64_t UICollectionView.calculateAIDiff<A>(oldItems:newItems:sectionIndex:modelUpdateHandler:identityComparator:visualComparator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(uint64_t, void *, NSObject *)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v46 = a4;
  v50 = a7;
  v51 = a8;
  v47 = a5;
  v52 = a9;
  v53 = a3;
  v42 = a1;
  v43 = a2;
  v48 = a10;
  v49 = a6;
  v11 = *(a11 - 8);
  __chkstk_darwin(a1);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for _DiffableSection();
  v54 = *(v14 - 1);
  __chkstk_darwin(v14);
  v16 = (&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v17);
  v20 = &v42 - v19;
  v21 = *(v11 + 16);
  v21(v13, v42, a11, v18);
  v22 = v20;
  v55 = v20;
  *v20 = 0;
  *(v20 + 1) = 0xE000000000000000;
  v23 = *(v11 + 32);
  v23(&v22[v14[11]], v13, a11);
  (v21)(v13, v43, a11);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v24 = v16 + v14[11];
  v44 = v16;
  v23(v24, v13, a11);
  sub_100574418();
  v25 = v54;
  swift_allocObject();
  v26 = sub_100572D48();
  v27 = *(v25 + 16);
  v27(v28, v55, v14);
  sub_10049A6AC();
  swift_allocObject();
  v29 = sub_100572D48();
  v27(v30, v16, v14);
  sub_10049A6AC();
  v31 = [v45 indexPathsForVisibleItems];
  sub_10056CE18();
  v32 = sub_100572D28();

  v34 = v46;
  v33 = v47;
  sub_1000E672C(v46);
  v35 = v49;
  v36 = v50;
  sub_1000E672C(v49);
  v37 = v51;
  v38 = v48;
  sub_1000E672C(v51);
  WitnessTable = swift_getWitnessTable();
  sub_1004B82F4(v26, v29, v32, v53, v53, 0, v34, v33, v52, v35, v36, v37, v38, v14, WitnessTable);
  v40 = *(v54 + 8);
  v40(v44, v14);
  return v40(v55, v14);
}

uint64_t UICollectionView.performSectionedAIDiff<A>(oldItems:newItems:startingSectionIndex:finalSectionIndex:animated:modelUpdateHandler:identityComparator:visualComparator:alongsideUpdates:completion:)(uint64_t *a1, uint64_t a2, uint64_t a3, void (**a4)(uint64_t, void *, NSObject *), int a5, int a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(void), uint64_t a14, void (*a15)(uint64_t), uint64_t a16, void *a17, uint64_t a18)
{
  v39 = a3;
  v33 = a7;
  v34 = a8;
  v45 = a6;
  v38 = a5;
  v30 = a1;
  v43 = a14;
  v44 = a13;
  v42 = a15;
  v40 = a4;
  v41 = a16;
  v35 = a18;
  v36 = a17;
  v31 = a9;
  v32 = a2;
  v19 = type metadata accessor for AIDiffingUpdate();
  v37 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);

  v22 = [v18 indexPathsForVisibleItems];
  sub_10056CE18();
  v23 = sub_100572D28();

  v24 = v33;
  v25 = v34;
  sub_1000E672C(v33);
  v26 = v31;
  sub_1000E672C(v31);
  sub_1000E672C(a11);
  sub_1004B82F4(v30, v32, v23, v39, v40, v38 & 1, v24, v25, v21, v26, a10, a11, a12, v36, v35);
  sub_100009DCC(&qword_1006F8C90);
  v27 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10057B510;
  sub_1004C27C0(v21, v28 + v27);
  UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(v28, v45, v44, v43, v42, v41);

  return sub_1004C2824(v21);
}

uint64_t UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(uint64_t a1, int a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v164 = a4;
  v161 = a3;
  v158 = a2;
  v10 = sub_10056CD68();
  v159 = *(v10 - 8);
  __chkstk_darwin(v10);
  v157 = &v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AIDiffingUpdate();
  v13 = *(v12 - 1);
  __chkstk_darwin(v12);
  v15 = &v154 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v154 - v17;
  v160 = v6;
  swift_unknownObjectWeakInit();
  if (qword_1006F7F48 != -1)
  {
    swift_once();
  }

  v19 = sub_10056DF88();
  v20 = sub_10000C49C(v19, qword_1006F8C78);

  v163 = v20;
  v21 = sub_10056DF68();
  v22 = sub_100573448();
  v23 = os_log_type_enabled(v21, v22);
  v165 = a6;
  v162 = a5;
  if (v23)
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    *(v24 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v21, v22, "applyUpdates called with %ld updates", v24, 0xCu);
  }

  else
  {
  }

  v171 = swift_allocBox();
  v178 = v25;
  _s14MusicUtilities15AIDiffingUpdateV18deletedSectionsSet10Foundation05IndexG0Vvpfi_0();
  v167 = swift_allocBox();
  v177 = v26;
  _s14MusicUtilities15AIDiffingUpdateV18deletedSectionsSet10Foundation05IndexG0Vvpfi_0();
  v27 = swift_allocObject();
  v166 = v27;
  *(v27 + 16) = _swiftEmptyArrayStorage;
  v176 = (v27 + 16);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v175 = v28 + 16;
  v172 = v28;
  *(v28 + 24) = _swiftEmptyArrayStorage;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  v174 = v29 + 16;
  v173 = v29;
  *(v29 + 24) = _swiftEmptyArrayStorage;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  v170 = v30;
  *(v30 + 24) = _swiftEmptyArrayStorage;
  v31 = swift_allocObject();
  v169 = v31;
  *(v31 + 16) = _swiftEmptyArrayStorage;
  v32 = (v31 + 16);
  v33 = a1;
  v34 = *(a1 + 16);
  v168 = v33;
  if (v34 == 1)
  {
    sub_1004C27C0(v33 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v18);
    if (*v18 == 1)
    {
      sub_1004C10F4(v33, v185, v161, v164, v162, v165);
      sub_1004C2824(v18);
      swift_unknownObjectWeakDestroy();
LABEL_39:

      v148 = 0;
      goto LABEL_40;
    }

    v71 = *(v159 + 24);
    v71(v178, &v18[v12[6]], v10);
    v71(v177, &v18[v12[7]], v10);
    *v176 = *&v18[v12[8]];

    v72 = &v18[v12[9]];
    v73 = *v72;
    v74 = v72[1];
    v75 = v172;
    *(v172 + 16) = v73;
    *(v75 + 24) = v74;

    v76 = &v18[v12[10]];
    v77 = *v76;
    v78 = v76[1];
    v79 = v173;
    *(v173 + 16) = v77;
    *(v79 + 24) = v78;

    v80 = &v18[v12[11]];
    v81 = v80[1];
    v82 = v32;
    v83 = v170;
    *(v170 + 16) = *v80;
    *(v83 + 24) = v81;

    v84 = *&v18[v12[12]];

    sub_1004C2824(v18);
    v156 = v82;
    *v82 = v84;

    v85 = v171;
    v86 = v167;
    v87 = v162;
    v88 = v164;
    v89 = v169;
    v90 = v161;
  }

  else
  {
    if (v34)
    {
      v35 = v15 + 8;
      v36 = v168 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v37 = *(v13 + 72);
      do
      {
        sub_1004C27C0(v36, v15);
        if (*v15 == 1)
        {
          goto LABEL_38;
        }

        sub_10056CD48();
        sub_10056CD48();

        sub_1004B3A34(v38);
        sub_1004C765C(*&v35[v12[9]]);
        sub_1004C765C(*&v35[v12[10]]);
        sub_1004C765C(*&v35[v12[11]]);

        sub_1004B3B20(v39);
        sub_1004C2824(v15);
        v36 += v37;
      }

      while (--v34);
    }

    v40 = sub_10056DF68();
    v41 = sub_100573448();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Final update:", v42, 2u);
    }

    v43 = sub_10056DF68();
    v44 = sub_100573448();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      aBlock = v155;
      *v45 = 136315138;
      v46 = v178;
      swift_beginAccess();
      v47 = v159;
      v48 = v157;
      (*(v159 + 16))(v157, v46, v10);
      sub_1004C8A8C(&qword_1006F8CA0, &type metadata accessor for IndexSet);
      v49 = sub_100574408();
      v51 = v50;
      (*(v47 + 8))(v48, v10);
      v52 = sub_1004C2954(v49, v51, &aBlock);

      *(v45 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v43, v44, " - Inserted sections: %s", v45, 0xCu);
      sub_100010474(v155);
    }

    v53 = sub_10056DF68();
    v54 = sub_100573448();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      aBlock = v155;
      *v55 = 136315138;
      v56 = v177;
      swift_beginAccess();
      v57 = v159;
      v58 = v157;
      (*(v159 + 16))(v157, v56, v10);
      sub_1004C8A8C(&qword_1006F8CA0, &type metadata accessor for IndexSet);
      v59 = sub_100574408();
      v61 = v60;
      (*(v57 + 8))(v58, v10);
      v62 = sub_1004C2954(v59, v61, &aBlock);

      *(v55 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v53, v54, " - Deleted sections: %s", v55, 0xCu);
      sub_100010474(v155);
    }

    v63 = sub_10056DF68();
    v64 = sub_100573448();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      aBlock = v66;
      *v65 = 136315138;
      swift_beginAccess();

      sub_100009DCC(&qword_1006F8C98);
      v67 = sub_100572D38();
      v69 = v68;

      v70 = sub_1004C2954(v67, v69, &aBlock);

      *(v65 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v63, v64, " - Section move pairs: %s", v65, 0xCu);
      sub_100010474(v66);
    }

    else
    {
    }

    v91 = sub_10056DF68();
    v92 = sub_100573448();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      aBlock = v94;
      *v93 = 136315138;
      swift_beginAccess();
      sub_10056CE18();

      v95 = sub_100572D38();
      v97 = v96;

      v98 = sub_1004C2954(v95, v97, &aBlock);

      *(v93 + 4) = v98;
      _os_log_impl(&_mh_execute_header, v91, v92, " - Inserted index paths: %s", v93, 0xCu);
      sub_100010474(v94);
    }

    v99 = sub_10056DF68();
    v100 = sub_100573448();

    v101 = os_log_type_enabled(v99, v100);
    v156 = v32;
    if (v101)
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      aBlock = v103;
      *v102 = 136315138;
      swift_beginAccess();
      sub_10056CE18();

      v104 = sub_100572D38();
      v106 = v105;

      v107 = sub_1004C2954(v104, v106, &aBlock);

      *(v102 + 4) = v107;
      _os_log_impl(&_mh_execute_header, v99, v100, " - Deleted index paths: %s", v102, 0xCu);
      sub_100010474(v103);
    }

    v89 = v169;

    v108 = sub_10056DF68();
    v109 = sub_100573448();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      aBlock = v111;
      *v110 = 136315138;
      swift_beginAccess();
      sub_10056CE18();

      v112 = sub_100572D38();
      v114 = v113;

      v115 = sub_1004C2954(v112, v114, &aBlock);

      *(v110 + 4) = v115;
      _os_log_impl(&_mh_execute_header, v108, v109, " - Updated index paths: %s", v110, 0xCu);
      sub_100010474(v111);
    }

    v116 = sub_10056DF68();
    v117 = sub_100573448();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      aBlock = v119;
      *v118 = 136315138;
      swift_beginAccess();

      sub_100009DCC(&qword_1006F8A18);
      v120 = sub_100572D38();
      v122 = v121;

      v123 = sub_1004C2954(v120, v122, &aBlock);

      *(v118 + 4) = v123;
      _os_log_impl(&_mh_execute_header, v116, v117, " - Item move pairs: %s", v118, 0xCu);
      sub_100010474(v119);
    }

    else
    {
    }

    v86 = v167;
    v90 = v161;
    v88 = v164;
    v83 = v170;
    v85 = v171;
    v87 = v162;
  }

  isEscapingClosureAtFileLocation = swift_allocObject();
  v125 = v160;
  v126 = v168;
  *(isEscapingClosureAtFileLocation + 16) = v160;
  *(isEscapingClosureAtFileLocation + 24) = v126;
  *(isEscapingClosureAtFileLocation + 32) = v86;
  *(isEscapingClosureAtFileLocation + 40) = v85;
  *(isEscapingClosureAtFileLocation + 48) = v166;
  v127 = v173;
  *(isEscapingClosureAtFileLocation + 56) = v172;
  *(isEscapingClosureAtFileLocation + 64) = v127;
  *(isEscapingClosureAtFileLocation + 72) = v89;
  *(isEscapingClosureAtFileLocation + 80) = v90;
  *(isEscapingClosureAtFileLocation + 88) = v88;
  *(isEscapingClosureAtFileLocation + 96) = v83;
  v128 = v165;
  *(isEscapingClosureAtFileLocation + 104) = v87;
  *(isEscapingClosureAtFileLocation + 112) = v128;
  if (v158)
  {

    v129 = v165;
    sub_1000E672C(v87);
    sub_1000E672C(v90);
    v130 = v90;
    v131 = v125;
    v132 = [v131 indexPathsForVisibleItems];
    sub_10056CE18();
    v133 = v88;
    v134 = sub_100572D28();

    v135 = sub_1004C7A00(v134);

    v136 = swift_allocObject();
    v136[2] = v168;
    v136[3] = v131;
    v137 = v178;
    v136[4] = v177;
    v136[5] = v137;
    v138 = v175;
    v136[6] = v176;
    v136[7] = v138;
    v139 = v156;
    v136[8] = v174;
    v136[9] = v139;
    v136[10] = v135;
    v136[11] = v130;
    v136[12] = v133;
    v140 = swift_allocObject();
    *(v140 + 16) = sub_1004C7BA0;
    *(v140 + 24) = v136;
    v183 = sub_10019CED8;
    v184 = v140;
    aBlock = _NSConcreteStackBlock;
    v180 = 1107296256;
    v141 = v162;
    v181 = sub_1001D41F8;
    v182 = &unk_1006AE578;
    v178 = _Block_copy(&aBlock);

    sub_1000E672C(v130);
    v142 = v131;

    v143 = swift_allocObject();
    v144 = v170;
    *(v143 + 2) = v142;
    *(v143 + 3) = v144;
    *(v143 + 4) = v141;
    *(v143 + 5) = v129;
    v183 = sub_1004C7BA8;
    v184 = v143;
    aBlock = _NSConcreteStackBlock;
    v180 = 1107296256;
    v181 = sub_10044E8C8;
    v182 = &unk_1006AE5C8;
    v145 = _Block_copy(&aBlock);
    v87 = v184;

    sub_1000E672C(v141);
    v146 = v142;

    v147 = v178;
    [v146 performBatchUpdates:v178 completion:v145];
    _Block_release(v145);
    _Block_release(v147);

    swift_unknownObjectWeakDestroy();

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    v148 = 0;
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_40;
    }

    __break(1u);
  }

  v178 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 2) = sub_1004C7960;
  *(v15 + 3) = isEscapingClosureAtFileLocation;
  v149 = swift_allocObject();
  v148 = sub_1000E23F0;
  *(v149 + 16) = sub_1000E23F0;
  *(v149 + 24) = v15;
  v183 = sub_10019CB74;
  v184 = v149;
  aBlock = _NSConcreteStackBlock;
  v180 = 1107296256;
  v181 = sub_1001D41F8;
  v182 = &unk_1006AE500;
  v150 = _Block_copy(&aBlock);
  v177 = v184;

  sub_1000E672C(v87);
  sub_1000E672C(v161);
  v151 = v160;

  [v178 performWithoutAnimation:v150];
  _Block_release(v150);

  swift_unknownObjectWeakDestroy();
  v152 = swift_isEscapingClosureAtFileLocation();

  if (v152)
  {
    __break(1u);
LABEL_38:
    sub_1004C10F4(v168, v185, v161, v164, v162, v165);
    swift_unknownObjectWeakDestroy();
    sub_1004C2824(v15);
    goto LABEL_39;
  }

LABEL_40:

  return sub_1000F3E14(v148);
}

uint64_t UICollectionView.performAIDiff<A>(oldItems:newItems:sectionIndex:animated:modelUpdateHandler:identityComparator:visualComparator:completion:)(uint64_t a1, uint64_t a2, void (**a3)(uint64_t, void *, NSObject *), int a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t), uint64_t a12, __int128 a13)
{
  v27 = a8;
  v25 = a6;
  v26 = a7;
  v24 = a5;
  v30 = a4;
  v28 = a12;
  v29 = a11;
  v23 = a13;
  v16 = type metadata accessor for AIDiffingUpdate();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  UICollectionView.calculateAIDiff<A>(oldItems:newItems:sectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(a1, a2, a3, v24, v25, v26, v27, a9, v19, a10, a13);
  sub_100009DCC(&qword_1006F8C90);
  v20 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10057B510;
  sub_1004C27C0(v19, v21 + v20);
  UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(v21, v30, 0, 0, v29, v28);

  return sub_1004C2824(v19);
}

void sub_1004C10F4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a6;
  v9 = type metadata accessor for AIDiffingUpdate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006F7F48 != -1)
  {
    swift_once();
  }

  v13 = sub_10056DF88();
  sub_10000C49C(v13, qword_1006F8C78);
  v14 = sub_10056DF68();
  v15 = sub_100573448();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Found update with needsReloadData=true, reloading", v16, 2u);
  }

  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v19 = *(v10 + 72);
    do
    {
      sub_1004C27C0(v18, v12);
      v20 = *(v12 + 1);
      sub_1000E672C(v20);
      v21 = sub_1004C2824(v12);
      if (v20)
      {
        v20(v21);
        sub_1000F3E14(v20);
      }

      v18 += v19;
      --v17;
    }

    while (v17);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    [Strong reloadData];
  }

  if (a3)
  {
    a3();
  }

  if (a5)
  {
    a5(1);
  }
}

uint64_t sub_1004C1338(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_10056CD68();
  v18 = swift_projectBox();
  v19 = swift_projectBox();
  v20 = a5 + 16;
  v21 = a6 + 16;
  v22 = a8 + 16;
  v23 = [a1 indexPathsForVisibleItems];
  sub_10056CE18();
  v24 = sub_100572D28();

  v25 = sub_1004C7A00(v24);

  v26 = swift_allocObject();
  v26[2] = a2;
  v26[3] = a1;
  v26[4] = v18;
  v26[5] = v19;
  v26[6] = v20;
  v26[7] = v21;
  v26[8] = a7 + 16;
  v26[9] = v22;
  v26[10] = v25;
  v26[11] = a9;
  v26[12] = a10;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1004C8B50;
  *(v27 + 24) = v26;
  v39 = sub_10019CED8;
  v40 = v27;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_1001D41F8;
  v38 = &unk_1006AE698;
  v28 = _Block_copy(&aBlock);

  v29 = a1;
  sub_1000E672C(a9);

  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = a11;
  v30[4] = a12;
  v30[5] = a13;
  v39 = sub_1004C8B38;
  v40 = v30;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_10044E8C8;
  v38 = &unk_1006AE6E8;
  v31 = _Block_copy(&aBlock);
  v32 = v29;

  sub_1000E672C(a12);

  [v32 performBatchUpdates:v28 completion:v31];
  _Block_release(v31);
  _Block_release(v28);

  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004C1648(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, void (*a10)(void))
{
  v128 = a8;
  v116 = a7;
  v127 = a6;
  v126 = a5;
  v124 = a4;
  v114 = a3;
  v123 = a2;
  v11 = sub_10056CE18();
  v121 = *(v11 - 8);
  __chkstk_darwin(v11);
  v110 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v105 - v14;
  __chkstk_darwin(v16);
  v125 = (&v105 - v17);
  v120 = sub_100009DCC(&qword_1006F8A18);
  v122 = *(v120 - 8);
  __chkstk_darwin(v120);
  v19 = &v105 - v18;
  v113 = sub_10056CD68();
  v20 = *(v113 - 8);
  __chkstk_darwin(v113);
  v112 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for AIDiffingUpdate() - 8;
  __chkstk_darwin(v22);
  v25 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a1 + 16);
  if (v26)
  {
    v27 = a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v28 = *(v23 + 72);
    do
    {
      sub_1004C27C0(v27, v25);
      v29 = *(v25 + 1);
      sub_1000E672C(v29);
      v30 = sub_1004C2824(v25);
      if (v29)
      {
        v29(v30);
        sub_1000F3E14(v29);
      }

      v27 += v28;
      --v26;
    }

    while (v26);
  }

  v31 = v114;
  swift_beginAccess();
  v111 = *(v20 + 16);
  v32 = v112;
  v33 = v113;
  v111(v112, v31, v113);
  sub_10056CD18(v34);
  v36 = v35;
  v37 = *(v20 + 8);
  v37(v32, v33);
  v38 = v123;
  [v123 deleteSections:v36];

  v39 = v124;
  swift_beginAccess();
  v108 = v20 + 16;
  v111(v32, v39, v33);
  sub_10056CD18(v40);
  v42 = v41;
  v109 = v20 + 8;
  v107 = v37;
  v37(v32, v33);
  [v38 insertSections:v42];

  v43 = v126;
  swift_beginAccess();
  v44 = *v43;
  v45 = *(v44 + 16);
  if (v45)
  {

    v46 = (v44 + 40);
    do
    {
      [v38 moveSection:*(v46 - 1) toSection:*v46];
      v46 += 2;
      --v45;
    }

    while (v45);
  }

  swift_beginAccess();

  isa = sub_100572D08().super.isa;
  swift_endAccess();

  [v38 insertItemsAtIndexPaths:isa];

  swift_beginAccess();

  v48 = sub_100572D08().super.isa;
  swift_endAccess();

  [v38 deleteItemsAtIndexPaths:v48];

  v49 = v128;
  swift_beginAccess();
  v50 = *v49;
  v51 = *(*v49 + 16);
  if (v51)
  {
    v52 = *(v120 + 48);
    v53 = v50 + ((*(v122 + 80) + 32) & ~*(v122 + 80));
    v128 = *(v122 + 72);
    v54 = (v121 + 8);
    v127 = v50;

    do
    {
      sub_1004C86B4(v53, v19);
      v55 = sub_10056CDA8().super.isa;
      v56 = *v54;
      (*v54)(v19, v11);
      v57 = sub_10056CDA8().super.isa;
      v56(&v19[v52], v11);
      [v123 moveItemAtIndexPath:v55 toIndexPath:v57];

      v53 += v128;
      --v51;
    }

    while (v51);

    v38 = v123;
  }

  v58 = [v38 _indexPathsForPreparedItems];
  v59 = sub_100572D28();

  v119 = *(v59 + 16);
  if (v119)
  {
    v60 = v121;
    v120 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v117 = v59 + v120;
    swift_beginAccess();
    swift_beginAccess();
    v61 = 0;
    v127 = a9;
    v128 = (v60 + 16);
    v126 = (a9 + 56);
    v38 = v60 + 8;
    v115 = _swiftEmptyArrayStorage;
    v106 = (v60 + 32);
    v62 = v125;
    v118 = v59;
    while (1)
    {
      if (v61 >= *(v59 + 16))
      {
        __break(1u);
        goto LABEL_52;
      }

      v64 = *(v121 + 72);
      v124 = v61;
      v65 = *(v121 + 16);
      v65(v62, v117 + v64 * v61, v11);
      if (*(v127 + 16))
      {
        v66 = v127;
        sub_1004C8A8C(&qword_1006F8BA8, &type metadata accessor for IndexPath);
        v67 = sub_100572738();
        v68 = -1 << *(v66 + 32);
        v69 = v67 & ~v68;
        if ((*(v126 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69))
        {
          v70 = ~v68;
          while (1)
          {
            v65(v15, *(v127 + 48) + v69 * v64, v11);
            sub_1004C8A8C(&qword_1006F8BB0, &type metadata accessor for IndexPath);
            v71 = sub_1005727E8();
            v72 = *v38;
            (*v38)(v15, v11);
            if (v71)
            {
              break;
            }

            v69 = (v69 + 1) & v70;
            if (((*(v126 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          v72(v62, v11);
          goto LABEL_17;
        }
      }

LABEL_25:
      v73 = *v116;
      v74 = v116[1];
      v75 = v74 + v120;
      v76 = *(v74 + 16);
      v122 = v38 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v73)
      {

        sub_1004C6E80(v62, v75, v76, (v73 + 16), v73 + 32);
        v78 = v77;

        if ((v78 & 1) == 0)
        {
          v79 = *v38;
LABEL_40:
          v90 = v125;
          v79(v125, v11);
          v62 = v90;
          goto LABEL_17;
        }
      }

      else
      {

        if (v76)
        {
          while (1)
          {
            v65(v15, v75, v11);
            sub_1004C8A8C(&qword_1006F8BB0, &type metadata accessor for IndexPath);
            v80 = sub_1005727E8();
            v79 = *v38;
            (*v38)(v15, v11);
            if (v80)
            {
              break;
            }

            v75 += v64;
            --v76;
            v62 = v125;
            if (!v76)
            {
              goto LABEL_31;
            }
          }

          goto LABEL_40;
        }

LABEL_31:
      }

      v81 = v112;
      v82 = v113;
      v111(v112, v114, v113);
      v83 = sub_10056CDF8();
      v84 = sub_10056CD38(v83);
      v107(v81, v82);
      if (!v84)
      {
        v65(v110, v62, v11);
        v85 = v115;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = v124;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v85 = sub_1004A828C(0, v85[2] + 1, 1, v85);
        }

        v115 = v85;
        v88 = v85[2];
        v87 = v85[3];
        if (v88 >= v87 >> 1)
        {
          v115 = sub_1004A828C(v87 > 1, v88 + 1, 1, v115);
        }

        v89 = v115;
        v115[2] = v88 + 1;
        (*v106)(&v89[v120 + v88 * v64], v110, v11);
        (*v38)(v62, v11);
        v59 = v118;
        goto LABEL_18;
      }

      (*v38)(v62, v11);
LABEL_17:
      v59 = v118;
      v63 = v124;
LABEL_18:
      v61 = v63 + 1;
      if (v61 == v119)
      {

        v38 = v123;
        goto LABEL_43;
      }
    }
  }

LABEL_43:
  v62 = a10;
  if (qword_1006F7F48 != -1)
  {
LABEL_52:
    swift_once();
  }

  v91 = sub_10056DF88();
  sub_10000C49C(v91, qword_1006F8C78);
  v92 = sub_10056DF68();
  v93 = sub_100573448();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v129 = v95;
    *v94 = 136315138;

    v96 = sub_100572D38();
    v98 = v97;

    v99 = sub_1004C2954(v96, v98, &v129);
    v38 = v123;

    *(v94 + 4) = v99;
    _os_log_impl(&_mh_execute_header, v92, v93, "Cleaning up prefetched cells by reloading index paths: %s", v94, 0xCu);
    sub_100010474(v95);
  }

  v100 = sub_100572D08().super.isa;

  [v38 reloadItemsAtIndexPaths:v100];

  if (v62)
  {

    v101 = sub_10056DF68();
    v102 = sub_100573448();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&_mh_execute_header, v101, v102, "Performing alongside updates", v103, 2u);
    }

    v62();
    sub_1000F3E14(v62);
  }
}

id sub_1004C2460(char a1, id a2, uint64_t a3, void (*a4)(void))
{
  v7 = [a2 isPrefetchingEnabled];
  [a2 setPrefetchingEnabled:0];
  if (qword_1006F7F48 != -1)
  {
    swift_once();
  }

  v8 = sub_10056DF88();
  sub_10000C49C(v8, qword_1006F8C78);

  v9 = sub_10056DF68();
  v10 = sub_100573448();

  if (os_log_type_enabled(v9, v10))
  {
    buf = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22[0] = v20;
    *buf = 136315138;
    swift_beginAccess();
    v21 = a4;

    v12 = sub_1004C841C(v11);
    v18 = v10;
    v14 = v13;

    v15 = sub_1004C2954(v12, v14, v22);

    *(buf + 4) = v15;
    a4 = v21;
    _os_log_impl(&_mh_execute_header, v9, v18, "Reconfiguring index paths: %s", buf, 0xCu);
    sub_100010474(v20);
  }

  swift_beginAccess();
  sub_10056CE18();

  isa = sub_100572D08().super.isa;
  swift_endAccess();

  [a2 reconfigureItemsAtIndexPaths:isa];

  if (a4)
  {
    a4(a1 & 1);
  }

  return [a2 setPrefetchingEnabled:v7];
}

uint64_t sub_1004C2700()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006F8C78);
  sub_10000C49C(v0, qword_1006F8C78);
  return sub_10056DF78();
}

uint64_t type metadata accessor for AIDiffingUpdate()
{
  result = qword_1006F8D00;
  if (!qword_1006F8D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004C27C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AIDiffingUpdate();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004C2824(uint64_t a1)
{
  v2 = type metadata accessor for AIDiffingUpdate();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004C2880(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1004C2954(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1004C28DC()
{

  return swift_deallocObject();
}

uint64_t sub_1004C2914()
{

  return swift_deallocObject();
}

unint64_t sub_1004C2954(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1004C2A20(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100081F38(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100010474(v11);
  return v7;
}

unint64_t sub_1004C2A20(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1004C2B2C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100573F98();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1004C2B2C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1004C2B78(a1, a2);
  sub_1004C2CA8(&off_1006AC928);
  return v3;
}

void *sub_1004C2B78(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_1004C2D94(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100573F98();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100572AB8();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1004C2D94(v10, 0);
        result = sub_100573EC8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1004C2CA8(uint64_t result)
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

  result = sub_1004C2E08(result, v11, 1, v3);
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

void *sub_1004C2D94(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100009DCC(&qword_1006F8E30);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1004C2E08(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100009DCC(&qword_1006F8E30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1004C2EFC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10056CE18();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1004C8A8C(&qword_1006F8BA8, &type metadata accessor for IndexPath);
  v33 = a2;
  v11 = sub_100572738();
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
      sub_1004C8A8C(&qword_1006F8BB0, &type metadata accessor for IndexPath);
      v21 = sub_1005727E8();
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
    sub_1004C38E8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1004C31DC(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  sub_100574678();
  sub_1005729F8();
  v8 = sub_1005746C8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_100574498() & 1) != 0)
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

    sub_1004C3B8C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1004C332C()
{
  v1 = v0;
  v35 = sub_10056CE18();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_100009DCC(&qword_1006F8E40);
  result = sub_100573E98();
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
      sub_1004C8A8C(&qword_1006F8BA8, &type metadata accessor for IndexPath);
      result = sub_100572738();
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

uint64_t sub_1004C3688()
{
  v1 = v0;
  v2 = *v0;
  sub_100009DCC(qword_1006F8E78);
  result = sub_100573E98();
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
      sub_100574678();
      sub_1005729F8();
      result = sub_1005746C8();
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

uint64_t sub_1004C38E8(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_10056CE18();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1004C332C();
  }

  else
  {
    if (v12 > v11)
    {
      sub_1004C3D0C();
      goto LABEL_12;
    }

    sub_1004C40A0();
  }

  v13 = *v3;
  sub_1004C8A8C(&qword_1006F8BA8, &type metadata accessor for IndexPath);
  v14 = sub_100572738();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1004C8A8C(&qword_1006F8BB0, &type metadata accessor for IndexPath);
      v22 = sub_1005727E8();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_100574568();
  __break(1u);
  return result;
}

Swift::Int sub_1004C3B8C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1004C3688();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1004C3F44();
      goto LABEL_16;
    }

    sub_1004C43BC();
  }

  v10 = *v4;
  sub_100574678();
  sub_1005729F8();
  result = sub_1005746C8();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_100574498();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_100574568();
  __break(1u);
  return result;
}

void *sub_1004C3D0C()
{
  v1 = v0;
  v2 = sub_10056CE18();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F8E40);
  v6 = *v0;
  v7 = sub_100573E88();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_1004C3F44()
{
  v1 = v0;
  sub_100009DCC(qword_1006F8E78);
  v2 = *v0;
  v3 = sub_100573E88();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1004C40A0()
{
  v1 = v0;
  v32 = sub_10056CE18();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_100009DCC(&qword_1006F8E40);
  v6 = sub_100573E98();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1004C8A8C(&qword_1006F8BA8, &type metadata accessor for IndexPath);
      result = sub_100572738();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1004C43BC()
{
  v1 = v0;
  v2 = *v0;
  sub_100009DCC(qword_1006F8E78);
  result = sub_100573E98();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_100574678();

      sub_1005729F8();
      result = sub_1005746C8();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1004C45F4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100573DC8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_100574668();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1004C4764(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100573DC8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48) + 24 * v6;
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      sub_100574678();
      if (v10)
      {
        sub_100574688(1uLL);
        v12 = v11;

        sub_1005729F8();
      }

      else
      {
        sub_100574688(0);
        v13 = v11;
      }

      v14 = sub_1005746C8();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v15)
      {
LABEL_13:
        v16 = *(a2 + 48);
        v17 = v16 + 24 * v3;
        v18 = (v16 + 24 * v6);
        if (v3 != v6 || v17 >= v18 + 24)
        {
          v19 = *v18;
          *(v17 + 16) = *(v18 + 2);
          *v17 = v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 8 * v3);
        v22 = (v20 + 8 * v6);
        if (v3 != v6 || v21 >= v22 + 1)
        {
          *v21 = *v22;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1004C4954(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1004B0DB8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1004D9310();
    result = v17;
    goto LABEL_8;
  }

  sub_1004D85C4(v14, a3 & 1);
  result = sub_1004B0DB8(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_100574578();
  __break(1u);
  return result;
}

unint64_t sub_1004C4A78(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1004B0CCC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1004D8828(v16, a4 & 1);
      result = sub_1004B0CCC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_100574578();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1004D945C();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

id sub_1004C4BDC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_1004B0E68(a2, a3, a4);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a5 & 1) == 0)
  {
    if (v19 < v17 || (a5 & 1) != 0)
    {
      sub_1004D8D88(v17, a5 & 1);
      v12 = sub_1004B0E68(a2, a3, a4);
      if ((v18 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_100574578();
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = v12;
      sub_1004D973C();
      v12 = v20;
    }
  }

  v22 = *v6;
  if (v18)
  {
    *(v22[7] + 8 * v12) = a1;
  }

  v22[(v12 >> 6) + 8] |= 1 << v12;
  v24 = (v22[6] + 24 * v12);
  *v24 = a2;
  v24[1] = a3;
  v24[2] = a4;
  *(v22[7] + 8 * v12) = a1;
  v25 = v22[2];
  v16 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v26;

  return a4;
}

uint64_t sub_1004C4D84(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1004B0CCC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1004D9068(v16, a4 & 1);
      v11 = sub_1004B0CCC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_100574578();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1004D98C4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void sub_1004C4F00(void **a1)
{
  v2 = *(sub_10056CE18() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1004DA63C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1004C4FA8(v5);
  *a1 = v3;
}

void sub_1004C4FA8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_100574388(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10056CE18();
        v6 = sub_100572D98();
        v6[2] = v5;
      }

      v7 = *(sub_10056CE18() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1004C5398(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1004C50D4(0, v2, 1, a1);
  }
}

void sub_1004C50D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_10056CE18();
  __chkstk_darwin(v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = &v31 - v11;
  v14 = __chkstk_darwin(v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      sub_1004C8A8C(&qword_1006F8E70, &type metadata accessor for IndexPath);
      v26 = sub_1005727B8();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1004C5398(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_10056CE18();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v134 = &v119 - v12;
  __chkstk_darwin(v13);
  v140 = &v119 - v14;
  v16 = __chkstk_darwin(v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_1004DA510(v20);
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_1004C5DC0(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1004DA510(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        sub_1004DA484(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = _swiftEmptyArrayStorage;
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = sub_1004C8A8C(&qword_1006F8E70, &type metadata accessor for IndexPath);
      LODWORD(v133) = sub_1005727B8();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_1005727B8() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1004A816C(0, *(v20 + 2) + 1, 1, v20);
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v20 = sub_1004A816C((v53 > 1), v54 + 1, 1, v20);
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_1004C5DC0(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1004DA510(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        sub_1004DA484(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_1004C8A8C(&qword_1006F8E70, &type metadata accessor for IndexPath);
    v109 = sub_1005727B8();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

void sub_1004C5DC0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = sub_10056CE18();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v50 = a3;
  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v42 = a4;
      v43 = (v8 + 16);
      v40 = (v8 + 8);
      v41 = a1;
      v28 = a4 + v17;
      v29 = v50;
      v44 = v27;
      do
      {
        v39 = v26;
        v30 = a2 + v27;
        v46 = a2 + v27;
        v47 = v26;
        v45 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v54 = a2;
            v26 = v39;
            goto LABEL_59;
          }

          v32 = v29;
          v50 = v29 + v27;
          v33 = v28 + v27;
          v34 = *v43;
          v35 = v48;
          v36 = v51;
          (*v43)(v48, v28 + v27, v51);
          v37 = v49;
          v34(v49, v30, v36);
          sub_1004C8A8C(&qword_1006F8E70, &type metadata accessor for IndexPath);
          LOBYTE(v34) = sub_1005727B8();
          v38 = *v40;
          (*v40)(v37, v36);
          v38(v35, v36);
          if (v34)
          {
            break;
          }

          v29 = v50;
          if (v32 < v28 || v50 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v46;
            a1 = v41;
          }

          else
          {
            v30 = v46;
            a1 = v41;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = v33;
          v28 = v33;
          v31 = v33 > v42;
          v27 = v44;
          a2 = v45;
          if (!v31)
          {
            v26 = v47;
            goto LABEL_58;
          }
        }

        v29 = v50;
        if (v32 < v45 || v50 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v41;
        }

        else
        {
          a2 = v46;
          a1 = v41;
          if (v32 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v47;
        v27 = v44;
      }

      while (v28 > v42);
    }

LABEL_58:
    v54 = a2;
LABEL_59:
    v52 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v16;
    v52 = a4 + v16;
    if (v16 >= 1 && a2 < v50)
    {
      v45 = *(v8 + 16);
      v46 = v8 + 16;
      v43 = v13;
      v44 = (v8 + 8);
      do
      {
        v19 = v48;
        v20 = v51;
        v21 = v45;
        v45(v48, a2, v51);
        v22 = v49;
        v21(v49, a4, v20);
        sub_1004C8A8C(&qword_1006F8E70, &type metadata accessor for IndexPath);
        LOBYTE(v21) = sub_1005727B8();
        v23 = *v44;
        (*v44)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v43;
          if (a1 < a2 || a1 >= v43 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v43;
          v25 = v43 + a4;
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v25;
          a4 += v24;
        }

        a1 += v24;
        v54 = a1;
      }

      while (a4 < v47 && a2 < v50);
    }
  }

  sub_1004C63B4(&v54, &v53, &v52);
}

uint64_t sub_1004C63B4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_10056CE18();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t (*sub_1004C6498(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1004C7600(v5);
  v5[9] = sub_1004C70D0(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1004C653C;
}

uint64_t (*sub_1004C6540(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x50uLL);
  }

  v9 = v8;
  *a1 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9[8] = sub_1004C7634(v9);
  v9[9] = sub_1004C7330(v9 + 4, a2, a3, a4, isUniquelyReferenced_nonNull_native);
  return sub_1004C8B74;
}

void sub_1004C65FC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t sub_1004C665C(uint64_t a1)
{
  v3 = sub_10056CE18();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v8 = v1[1];
  v10 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v11 = *(v8 + 16);
  if (*v1)
  {

    sub_1004C6E80(a1, v10, v11, (v9 + 16), v9 + 32);
    v13 = v12;

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    v20[1] = v1;
    v15 = 0;
    v18 = *(v4 + 16);
    v17 = v4 + 16;
    v16 = v18;
    v21 = *(v17 + 56);
    v22 = v11;
    do
    {
      v16(v7, v10, v3, v5);
      sub_1004C8A8C(&qword_1006F8BB0, &type metadata accessor for IndexPath);
      v19 = sub_1005727E8();
      (*(v17 - 8))(v7, v3);
      if (v19)
      {
        return 0;
      }

      ++v15;
      v10 += v21;
    }

    while (v22 != v15);
  }

  sub_1004C6864(a1);
  return 1;
}

uint64_t sub_1004C6864(uint64_t a1)
{
  v3 = sub_10056CE18();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = v1 + 1;
  v9 = v1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[1] = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1004E1010(0, *(v9 + 16) + 1, 1);
    v9 = *v8;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    sub_1004E1010(v11 > 1, v12 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v12 + 1;
  result = (*(v4 + 32))(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12, v7, v3);
  v1[1] = v9;
  if (*v1)
  {
    swift_beginAccess();
    if (sub_10056DD78() > v12)
    {
      result = swift_isUniquelyReferenced_native();
      v14 = *v1;
      if ((result & 1) == 0)
      {
        if (!v14)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v15 = sub_10056DD98();

        *v1 = v15;
        v14 = v15;
      }

      if (v14)
      {
        return sub_10056DD38();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return result;
  }

  return sub_1004C6AAC();
}

uint64_t sub_1004C6AAC()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  if (v2 || *(v3 + 16) >= 0x10uLL)
  {
    v5 = sub_10056DDA8();
    if (v2 <= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    v4 = sub_1004C6B4C(v3, v6, 0, v2);
  }

  else
  {
    v4 = 0;
  }

  *v0 = v4;
  return result;
}

uint64_t sub_1004C6B4C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  v7 = sub_10056DDA8();
  result = 0;
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (v7 <= a4)
  {
    v7 = a4;
  }

  if (v7 >= 5)
  {
    v9 = sub_10056DDB8();
    sub_1004C6BCC(a1, (v9 + 16), v9 + 32);
    return v9;
  }

  return result;
}

void sub_1004C6C68(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v31 = a4;
  v32 = a1;
  v6 = sub_10056CE18();
  v8 = __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a2;
  if (a2)
  {
    if ((v40 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v13 = *(v7 + 16);
      v12 = v7 + 16;
      v28 = *(v12 + 56);
      v29 = v13;
      v30 = v12;
      v27 = (v12 - 8);
      v13(v10, v32, v6, v8);
      while (1)
      {
        sub_1004C8A8C(&qword_1006F8BA8, &type metadata accessor for IndexPath);
        v15 = sub_100572738();
        v16 = 1 << *a3;
        v17 = __OFSUB__(v16, 1);
        v18 = v16 - 1;
        if (v17)
        {
          break;
        }

        v19 = v18 & v15;
        v20 = v31;
        v21 = sub_10056DD18();
        v23 = v22;
        v25 = v24;
        (*v27)(v10, v6);
        v33 = a3;
        v34 = v20;
        v35 = v19;
        v36 = v21;
        v37 = v23;
        v38 = v25;
        v39 = 0;
        while (v36)
        {
          sub_10056DD68();
        }

        sub_10056DD58();
        if (++v11 == v40)
        {
          return;
        }

        v29(v10, v32 + v28 * v11, v6, v14);
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_1004C6E80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v29 = a2;
  v8 = sub_10056CE18();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004C8A8C(&qword_1006F8BA8, &type metadata accessor for IndexPath);
  v28[1] = a1;
  result = sub_100572738();
  v13 = 1 << *a4;
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v16 = v15 & result;
    v17 = sub_10056DD18();
    *&v34 = a4;
    *(&v34 + 1) = a5;
    *&v35 = v16;
    *(&v35 + 1) = v17;
    *&v36 = v18;
    *(&v36 + 1) = v19;
    v37 = 0;
    v20 = sub_10056DD48();
    if ((v21 & 1) == 0)
    {
      v24 = *(v9 + 16);
      v23 = v9 + 16;
      v22 = v24;
      v25 = *(v23 + 56);
      do
      {
        v22(v11, v29 + v25 * v20, v8);
        sub_1004C8A8C(&qword_1006F8BB0, &type metadata accessor for IndexPath);
        v26 = sub_1005727E8();
        (*(v23 - 8))(v11, v8);
        if (v26)
        {
          break;
        }

        sub_10056DD68();
        v30 = v34;
        v31 = v35;
        v32 = v36;
        v33 = v37;
        v20 = sub_10056DD48();
      }

      while ((v27 & 1) == 0);
    }

    return v20;
  }

  return result;
}

void (*sub_1004C70D0(uint64_t *a1, uint64_t a2, char a3))(void **a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 16) = a2;
  *(v8 + 24) = v3;
  v10 = *v3;
  v11 = sub_1004B0DB8(a2);
  *(v9 + 9) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = v12 ^ 1;
  v15 = __OFADD__(v13, (v12 ^ 1) & 1);
  v16 = v13 + ((v12 ^ 1) & 1);
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_1004D9310();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1004D85C4(v16, a3 & 1);
    v11 = sub_1004B0DB8(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_100574578();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 32) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  *(v9 + 8) = v14 & 1;
  return sub_1004C7220;
}

void sub_1004C7220(void **a1, char a2)
{
  v2 = *a1;
  v3 = *v2;
  LOBYTE(v4) = *(v2 + 8);
  LOBYTE(v5) = *(v2 + 9);
  if (a2)
  {
    if (v2[1])
    {
      goto LABEL_8;
    }

    v6 = v2[4];
    v4 = *v2[3];
    if (*(v2 + 9))
    {
      goto LABEL_11;
    }

    v7 = v2[2];
    v4[(v6 >> 6) + 8] |= 1 << v6;
    *(v4[6] + 8 * v6) = v7;
    v5 = v4[7];
    *(v5 + 8 * v6) = v3;
    v8 = v4[2];
    v9 = __OFADD__(v8, 1);
    v3 = v8 + 1;
    if (!v9)
    {
LABEL_13:
      v4[2] = v3;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (v4)
  {
LABEL_8:
    if (v5)
    {
      v10 = v2;
      sub_1004C45F4(v2[4], *v2[3]);
      v2 = v10;
    }

    goto LABEL_14;
  }

  v6 = v2[4];
  v4 = *v2[3];
  if ((v5 & 1) == 0)
  {
    v11 = v2[2];
    v4[(v6 >> 6) + 8] |= 1 << v6;
    *(v4[6] + 8 * v6) = v11;
    *(v4[7] + 8 * v6) = v3;
    v12 = v4[2];
    v9 = __OFADD__(v12, 1);
    v3 = v12 + 1;
    if (v9)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_11:
  *(v4[7] + 8 * v6) = v3;
LABEL_14:

  free(v2);
}

void (*sub_1004C7330(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5))(uint64_t **a1, char a2)
{
  v6 = v5;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x38uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a4;
  v12[4] = v5;
  v12[1] = a2;
  v12[2] = a3;
  v14 = *v5;
  v15 = sub_1004B0E68(a2, a3, a4);
  *(v13 + 48) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      v23 = v15;
      sub_1004D973C();
      v15 = v23;
      goto LABEL_11;
    }

    sub_1004D8D88(v20, a5 & 1);
    v15 = sub_1004B0E68(a2, a3, a4);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_100574578();
    __break(1u);
    return result;
  }

LABEL_11:
  v13[5] = v15;
  if (v21)
  {
    v25 = *(*(*v6 + 56) + 8 * v15);
  }

  else
  {
    v25 = 0;
  }

  *v13 = v25;
  return sub_1004C749C;
}

void sub_1004C749C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 48);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[5];
    v6 = *v2[4];
    if ((*a1)[6])
    {
      goto LABEL_9;
    }

    v7 = v2[3];
    v8 = v6[6] + 24 * v5;
    v9 = *(v2 + 1);
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *v8 = v9;
    *(v8 + 16) = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v18 = v2[3];
      v6[2] = v4;

      v19 = v18;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[5];
      v13 = *v2[4];
      sub_1004C8AD4(*(v13 + 48) + 24 * v12);
      sub_1004C4764(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[5];
  v6 = *v2[4];
  if ((v4 & 1) == 0)
  {
    v14 = v2[3];
    v15 = v6[6] + 24 * v5;
    v16 = *(v2 + 1);
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *v15 = v16;
    *(v15 + 16) = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

uint64_t (*sub_1004C7600(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1004C7628;
}

uint64_t (*sub_1004C7634(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1004C8B3C;
}

void sub_1004C765C(uint64_t a1)
{
  v2 = sub_10056CE18();
  __chkstk_darwin(v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v26 = *(a1 + 16);
  if (v26)
  {
    v10 = 0;
    v13 = *(v6 + 16);
    v11 = v6 + 16;
    v12 = v13;
    v28 = *(v11 + 56);
    v14 = (v11 - 8);
    v25 = (*(v11 + 64) + 32) & ~*(v11 + 64);
    v24 = a1 + v25;
    (v13)(v9, a1 + v25, v2, v7);
    while (1)
    {
      v17 = *v27;
      v16 = v27[1];
      v18 = v16 + v25;
      v19 = *(v16 + 16);
      if (*v27)
      {

        sub_1004C6E80(v9, v18, v19, (v17 + 16), v17 + 32);
        v21 = v20;

        if (v21)
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (!v19)
        {
LABEL_3:
          sub_1004C6864(v9);
          goto LABEL_4;
        }

        while (1)
        {
          v12(v4, v18, v2);
          sub_1004C8A8C(&qword_1006F8BB0, &type metadata accessor for IndexPath);
          v22 = sub_1005727E8();
          (*v14)(v4, v2);
          if (v22)
          {
            break;
          }

          v18 += v28;
          if (!--v19)
          {
            goto LABEL_3;
          }
        }
      }

LABEL_4:
      ++v10;
      (*v14)(v9, v2);
      if (v10 == v26)
      {
        return;
      }

      (v12)(v9, v24 + v28 * v10, v2, v15);
    }
  }
}

uint64_t sub_1004C78C8()
{

  if (*(v0 + 80))
  {
  }

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1004C79A0()
{

  return swift_deallocObject();
}

uint64_t sub_1004C79E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004C7A00(uint64_t a1)
{
  v2 = sub_10056CE18();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_1004C8A8C(&qword_1006F8BA8, &type metadata accessor for IndexPath);
  result = sub_100573118();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v5, v14, v2);
      sub_1004C2EFC(v8, v5);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_1004C7BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10056CD68();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1004C7C9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10056CD68();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

void sub_1004C7D58()
{
  sub_1004C7F54(319, &qword_1006F8D10, &qword_1006F8D18, &unk_1005A64B0, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10056CD68();
    if (v1 <= 0x3F)
    {
      sub_1004C7F54(319, &qword_1006F8D20, &qword_1006F8C98, &unk_1005A6470, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_1004C7EC0();
        if (v3 <= 0x3F)
        {
          sub_1004C7F54(319, &unk_1006F8D30, &qword_1006F8A18, &unk_1005A5C70, &type metadata accessor for Array);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1004C7EC0()
{
  if (!qword_1006F8D28)
  {
    sub_10056CE18();
    sub_1004C8A8C(&qword_1006F8BA8, &type metadata accessor for IndexPath);
    v0 = sub_10056DD08();
    if (!v1)
    {
      atomic_store(v0, &qword_1006F8D28);
    }
  }
}

void sub_1004C7F54(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100010324(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1004C7FB8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1004C8038(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1004C81BC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_1004C841C(uint64_t a1)
{
  v2 = sub_10056CE18();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 91;
  v22 = 0xE100000000000000;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = *(v3 + 72);
    v9 = *(v3 + 16);
    v19 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v9(v6, a1 + v19, v2, v4);
    sub_100009DCC(&qword_1006F8E38);
    v10 = swift_allocObject();
    v20 = xmmword_10057B510;
    *(v10 + 16) = xmmword_10057B510;
    *(v10 + 56) = v2;
    v11 = sub_10002AB7C((v10 + 32));
    (v9)(v11, v6, v2);
    sub_100573E48();

    v12 = *(v3 + 8);
    v12(v6, v2);
    v13 = v7 - 1;
    if (v13)
    {
      v14 = a1 + v8 + v19;
      do
      {
        (v9)(v6, v14, v2);
        v23._countAndFlagsBits = 8236;
        v23._object = 0xE200000000000000;
        sub_100572A98(v23);
        sub_100009DCC(&qword_1006F8E38);
        v15 = swift_allocObject();
        *(v15 + 16) = v20;
        *(v15 + 56) = v2;
        v16 = sub_10002AB7C((v15 + 32));
        (v9)(v16, v6, v2);
        sub_100573E48();

        v12(v6, v2);
        v14 += v8;
        --v13;
      }

      while (v13);
    }
  }

  v24._countAndFlagsBits = 93;
  v24._object = 0xE100000000000000;
  sub_100572A98(v24);
  return v21;
}

uint64_t sub_1004C86B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F8A18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004C8724()
{

  if (*(v0 + 88))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1004C87BC()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1004C8814()
{

  return swift_deallocObject();
}

uint64_t sub_1004C88B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 32);
  v6 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = v5(v6, a1 + *(TupleTypeMetadata2 + 48));
  *a2 = result;
  a2[1] = v9;
  return result;
}

uint64_t sub_1004C8980(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006F8E48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004C89E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F8A18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004C8A58@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1004C8A8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004C8B78()
{
  sub_1004CD768();

  return sub_10056CED8();
}

uint64_t static ApproximatelyComparable<>.<~ infix(_:_:)()
{
  if (sub_10056CEB8())
  {
    return 0;
  }

  else
  {
    return sub_1005727B8() & 1;
  }
}

uint64_t static ApproximatelyComparable<>.>~ infix(_:_:)()
{
  if (sub_10056CEB8())
  {
    return 0;
  }

  else
  {
    return sub_1005727A8() & 1;
  }
}

uint64_t Result.init(success:failure:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a2;
  v36 = a5;
  v35 = sub_100573C28();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v10 = &v31 - v9;
  v33 = *(a4 - 8);
  __chkstk_darwin(v11);
  v32 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 - 8);
  __chkstk_darwin(v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1005746D8();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v31 - v20;
  if ((*(v13 + 48))(a1, 1, a3, v19) != 1)
  {
    (*(v8 + 8))(v34, v35);
    v27 = *(v13 + 32);
    v27(v16, a1, a3);
    v27(v21, v16, a3);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    v26 = v36;
    (*(v18 + 32))(v36, v21, v17);
    v25 = 0;
    return (*(v18 + 56))(v26, v25, 1, v17);
  }

  v22 = sub_100573C28();
  (*(*(v22 - 8) + 8))(a1, v22);
  v23 = v35;
  (*(v8 + 32))(v10, v34, v35);
  v24 = v33;
  if ((*(v33 + 48))(v10, 1, a4) != 1)
  {
    v28 = *(v24 + 32);
    v29 = v32;
    v28(v32, v10, a4);
    v28(v21, v29, a4);
    goto LABEL_6;
  }

  (*(v8 + 8))(v10, v23);
  v25 = 1;
  v26 = v36;
  return (*(v18 + 56))(v26, v25, 1, v17);
}

uint64_t Collection.limited(to:)(uint64_t a1, uint64_t a2)
{
  v5 = __chkstk_darwin(a1);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a2, v5);
  if (sub_1005731C8() > a1 && __OFSUB__(sub_1005731C8(), a1))
  {
    __break(1u);
  }

  return sub_100572C88();
}

uint64_t Collection.asyncForEach<A>(operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return _swift_task_switch(sub_1004C91AC, 0, 0);
}

uint64_t sub_1004C91AC()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);
  v1[1] = *(v0 + 32);
  v1[2] = v2;
  v1[3] = v3;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1004C9298;
  v5 = *(v0 + 40);

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v4, v5, &type metadata for () + 8, 0, 0, &unk_1005A6560, v1, v5);
}

uint64_t sub_1004C9298()
{

  return _swift_task_switch(sub_100191ECC, 0, 0);
}

uint64_t sub_1004C93B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a2;
  v8[9] = *(a8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[10] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v8[11] = v11;
  v8[12] = *(v11 + 64);
  v8[13] = swift_task_alloc();
  sub_100009DCC(&unk_1006F87E0);
  v8[14] = swift_task_alloc();
  sub_100573C28();
  v8[15] = swift_task_alloc();
  v8[16] = *(a6 - 8);
  v8[17] = swift_task_alloc();
  v12 = swift_getAssociatedTypeWitness();
  v8[18] = v12;
  v8[19] = *(v12 - 8);
  v8[20] = swift_task_alloc();

  return _swift_task_switch(sub_1004C95E4, 0, 0);
}

uint64_t sub_1004C95E4()
{
  v1 = *(v0 + 88);
  (*(*(v0 + 128) + 16))(*(v0 + 136), *(v0 + 24), *(v0 + 48));
  sub_100572B98();
  while (1)
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 80);
    swift_getAssociatedConformanceWitness();
    sub_100573C68();
    if ((*(v1 + 48))(v2, 1, v3) == 1)
    {
      break;
    }

    v4 = *(v0 + 112);
    v5 = *(v0 + 120);
    v6 = *(v0 + 104);
    v7 = *(v0 + 80);
    v8 = *(v0 + 40);
    v16 = *(v0 + 32);
    v17 = *(v0 + 48);
    v9 = sub_100572F48();
    v18 = *(v0 + 56);
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    v10 = *(v1 + 32);
    v10(v6, v5, v7);
    v11 = (*(v1 + 80) + 72) & ~*(v1 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = v17;
    *(v12 + 40) = v18;
    *(v12 + 56) = v16;
    *(v12 + 64) = v8;
    v10(v12 + v11, v6, v7);
    v13 = sub_100572EC8();

    sub_1004C9A74(v4, &unk_1005A6710, v12, v13);
    sub_1004A3908(v4);
  }

  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1004C988C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000CB98;

  return sub_1004C93B0(a1, a2, v9, v11, v10, v6, v7, v8);
}

uint64_t sub_1004C9968(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_10000CB98;

  return v11(a1, a6);
}

uint64_t sub_1004C9A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_100009DCC(&unk_1006F87E0);
  __chkstk_darwin(v10 - 8);
  v12 = v22 - v11;
  sub_1004A316C(a1, v22 - v11);
  v13 = sub_100572F48();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1004A3908(v12);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_100572E78();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_100572F38();
    (*(v14 + 8))(v12, v13);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v5;
  v19 = swift_allocObject();
  v19[2] = *(a4 + 16);
  v19[3] = a2;
  v19[4] = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t Collection.asyncMap<A>(transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = sub_100573C28();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_1004C9D40, 0, 0);
}

void sub_1004C9D40()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 48);
  v12 = *(v0 + 32);
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  v8 = sub_1005731C8();
  v9 = sub_1004A0568(v1, v8, v4);
  (*(v2 + 8))(v1, v4);
  *(v0 + 16) = v9;
  swift_getTupleTypeMetadata2();
  v10 = swift_task_alloc();
  *(v0 + 104) = v10;
  *(v10 + 16) = v7;
  *(v10 + 24) = v6;
  *(v10 + 32) = v5;
  *(v10 + 40) = v3;
  *(v10 + 48) = v12;
  *(v10 + 64) = v0 + 16;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *v11 = v0;
  v11[1] = sub_1004C9F10;

  JUMPOUT(0x1004CB1D8);
}

uint64_t sub_1004C9F10()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1004CA15C;
  }

  else
  {

    v2 = sub_1004CA02C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004CA02C()
{
  v1 = *(v0 + 48);
  *(v0 + 24) = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = *(v0 + 56);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  sub_100572E38();

  swift_getWitnessTable();
  v4 = sub_100572BB8();
  swift_bridgeObjectRelease_n();

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1004CA15C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004CA1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v17;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v9 = sub_100573C28();
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = *(v17 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[15] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v8[16] = v11;
  v8[17] = *(v11 + 64);
  v8[18] = swift_task_alloc();
  sub_100009DCC(&unk_1006F87E0);
  v8[19] = swift_task_alloc();
  v8[20] = swift_getTupleTypeMetadata2();
  sub_100573C28();
  v8[21] = swift_task_alloc();
  v8[22] = sub_100010324(qword_1006F8140);
  v12 = sub_100573008();
  v8[23] = v12;
  v8[24] = *(v12 - 8);
  v8[25] = swift_task_alloc();
  v8[26] = swift_getTupleTypeMetadata2();
  v13 = sub_100573C28();
  v8[27] = v13;
  v8[28] = *(v13 - 8);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v8[31] = sub_100574168();
  v8[32] = swift_task_alloc();
  v14 = sub_100574158();
  v8[33] = v14;
  v8[34] = *(v14 - 8);
  v8[35] = swift_task_alloc();

  return _swift_task_switch(sub_1004CA584, 0, 0);
}

uint64_t sub_1004CA584()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = *(v0 + 128);
  sub_100572BC8();
  sub_100574138();
  v25 = v3;
  v26 = v2;
  v27 = v2 - 8;
  while (1)
  {
    v5 = *(v0 + 232);
    v4 = *(v0 + 240);
    v7 = *(v0 + 208);
    v6 = *(v0 + 216);
    sub_100574148();
    (*(v1 + 32))(v4, v5, v6);
    if ((*(*v27 + 48))(v4, 1, v7) == 1)
    {
      break;
    }

    v8 = *(v0 + 240);
    v9 = *(v0 + 152);
    v10 = *(v0 + 144);
    v11 = *(v0 + 120);
    v31 = *(v0 + 80);
    v12 = *(v0 + 48);
    v30 = *(v0 + 40);
    v29 = *v8;
    v13 = *(v26 + 48);
    v14 = sub_100572F48();
    v28 = *(v0 + 64);
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    v15 = *(v25 + 32);
    v15(v10, &v8[v13], v11);
    v16 = (*(v25 + 80) + 80) & ~*(v25 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    *(v17 + 32) = v28;
    *(v17 + 48) = v31;
    *(v17 + 56) = v29;
    *(v17 + 64) = v30;
    *(v17 + 72) = v12;
    v15((v17 + v16), v10, v11);
    sub_100573018();

    sub_1004CB004(v9, &unk_1005A6700, v17);
    sub_1004A3908(v9);
  }

  (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
  sub_100572FE8();
  v18 = sub_100572E38();
  *(v0 + 288) = v18;
  sub_100572D78();
  v19.location = v18;
  CFRange.init(_:)(v19);
  sub_100572D78();
  v20.location = v18;
  CFRange.init(_:)(v20);
  v21 = swift_task_alloc();
  *(v0 + 296) = v21;
  *v21 = v0;
  v21[1] = sub_1004CA8F0;
  v22 = *(v0 + 184);
  v23 = *(v0 + 168);

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v23, 0, 0, v22, v0 + 16);
}

uint64_t sub_1004CA8F0()
{

  if (v0)
  {
    v1 = sub_1004CACB8;
  }

  else
  {
    v1 = sub_1004CAA00;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1004CAA00()
{
  v2 = v0[20];
  v1 = v0[21];
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[24] + 8))(v0[25], v0[23]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[36];
    v7 = v0[12];
    v6 = v0[13];
    v8 = v0[11];
    v9 = v0[9];
    v10 = v0[7];
    v11 = *v1;
    v12 = *(v2 + 48);
    v13 = *(v9 - 8);
    (*(v13 + 32))(v6, v1 + v12, v9);
    (*(v13 + 56))(v6, 0, 1, v9);
    sub_100572D78();
    sub_1004A0514(v11, *v10);
    (*(v7 + 40))(*v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, v6, v8);
    v14.location = v5;
    CFRange.init(_:)(v14);
    v15 = swift_task_alloc();
    v0[37] = v15;
    *v15 = v0;
    v15[1] = sub_1004CA8F0;
    v16 = v0[23];
    v17 = v0[21];

    return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v17, 0, 0, v16, v0 + 2);
  }
}

uint64_t sub_1004CACB8()
{
  (*(v0[24] + 8))(v0[25], v0[23]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1004CADB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a7;
  v7[7] = v9;
  v7[4] = a5;
  v7[5] = a6;
  v7[2] = a1;
  v7[3] = a4;
  return _swift_task_switch(sub_1004CADE8, 0, 0);
}

uint64_t sub_1004CADE8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(swift_getTupleTypeMetadata2() + 48);
  *v3 = v1;
  v8 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1004CAF10;
  v6 = v0[6];

  return v8(&v3[v4], v6);
}

uint64_t sub_1004CAF10()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1004CB004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_100009DCC(&unk_1006F87E0);
  __chkstk_darwin(v7 - 8);
  v9 = v18 - v8;
  sub_1004A316C(a1, v18 - v8);
  v10 = sub_100572F48();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1004A3908(v9);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_100572E78();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_100572F38();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_1004CB1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_10000CB98;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

BOOL Collection<>.contains(approximatelyMatching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_100573C28();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15[-v11];
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a1;
  sub_100572C08();
  v13 = (*(*(AssociatedTypeWitness - 8) + 48))(v12, 1, AssociatedTypeWitness) != 1;
  (*(v10 + 8))(v12, v9);
  return v13;
}

uint64_t static DisplayUnit.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v37 = a2;
  v38 = *(a3 - 8);
  __chkstk_darwin(a1);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v32 = &v31 - v6;
  v35 = v7;
  v8 = type metadata accessor for DisplayUnit();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(TupleTypeMetadata2 - 8);
  v17 = __chkstk_darwin(TupleTypeMetadata2);
  v19 = &v31 - v18;
  v21 = *(v20 + 48);
  v34 = v9;
  v22 = *(v9 + 16);
  v22(&v31 - v18, v36, v8, v17);
  (v22)(&v19[v21], v37, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v22)(v14, v19, v8);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v28 = v38;
      v29 = v32;
      (*(v38 + 32))(v32, &v19[v21], a3);
      v25 = sub_1005727E8();
      v26 = *(v28 + 8);
      v26(v29, a3);
      v27 = v14;
      goto LABEL_6;
    }

LABEL_8:
    (*(v38 + 8))(v14, a3);
    v25 = 0;
    v8 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  (v22)(v11, v19, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v14 = v11;
    goto LABEL_8;
  }

  v23 = v38;
  v24 = v33;
  (*(v38 + 32))(v33, &v19[v21], a3);
  v25 = sub_1005727E8();
  v26 = *(v23 + 8);
  v26(v24, a3);
  v27 = v11;
LABEL_6:
  v26(v27, a3);
  v16 = v34;
LABEL_9:
  (*(v16 + 8))(v19, v8);
  return v25 & 1;
}

uint64_t ClosedRange<>.linearMap(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  sub_100574128();
  sub_100573198();
  v9 = *(v3 + 8);
  v9(v5, v2);
  sub_100574118();
  return (v9)(v8, v2);
}

uint64_t ClosedRange<>.normalize(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  sub_100574128();
  sub_100574128();
  sub_100572728();
  v9 = *(v3 + 8);
  v9(v5, v2);
  return (v9)(v8, v2);
}

uint64_t ClosedRange<>.clampedNormalize(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  ClosedRange.clamp(_:)(v7, v8);
  ClosedRange<>.normalize(_:)(v6, a2);
  return (*(v4 + 8))(v6, v3);
}

uint64_t Array.extract(_:)()
{

  swift_getWitnessTable();
  result = sub_100573FB8();
  if (!v0)
  {
    v2 = result;
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_100573318();
    return v2;
  }

  return result;
}

uint64_t Array.extractFirst(where:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{

  swift_getWitnessTable();
  sub_100573228();

  if (!v2)
  {
    if (v6)
    {
      return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1);
    }

    else
    {
      sub_100572E08();
      return (*(*(*(a1 + 16) - 8) + 56))(a2, 0, 1);
    }
  }

  return result;
}

uint64_t Array.removingDuplicates<A>(with:)()
{
  sub_100572668();
  sub_100572E38();

  swift_getWitnessTable();
  v0 = sub_100573FB8();

  return v0;
}

uint64_t sub_1004CBFC8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*a3 + class metadata base offset for KeyPath + 8);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  swift_getAtKeyPath();
  sub_100573158();
  v8 = sub_100573128();
  (*(v4 + 8))(v7, v3);
  return v8 & 1;
}

uint64_t Collection.removingDuplicates<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a2 - 8);
  __chkstk_darwin(a1);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_100572668();
  (*(v9 + 16))(v11, v4, a2);
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = &v20;
  v19 = a1;
  v12 = sub_100572C18();

  return v12;
}

uint64_t sub_1004CC28C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*a3 + class metadata base offset for KeyPath + 8);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  swift_getAtKeyPath();
  sub_100573158();
  v8 = sub_100573128();
  (*(v4 + 8))(v7, v3);
  return v8 & 1;
}

uint64_t sub_1004CC440(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, char *), uint64_t a4, void *a5)
{
  v6 = *(*a5 + class metadata base offset for KeyPath + 8);
  v7 = *(v6 - 8);
  __chkstk_darwin(a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v16 - v11;
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  v13 = a3(v12, v9);
  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
  return v13 & 1;
}

uint64_t Sequence<>.excluding(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  v9 = Sequence.exclude(_:)(sub_1004CD85C, v8, a2, a3);

  return v9;
}

{
  swift_getAssociatedTypeWitness();
  sub_100572E38();

  swift_getWitnessTable();
  v7 = sub_100573168();
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = v7;
  v9 = Sequence.exclude(_:)(sub_1004CD7F4, v8, a2, a3);

  return v9;
}

uint64_t sub_1004CC664()
{
  swift_getAssociatedTypeWitness();
  sub_100572E38();
  swift_getWitnessTable();
  return sub_100572C98() & 1;
}

uint64_t Sequence.exclude(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __chkstk_darwin(a1);
  (*(v11 + 16))(&v13[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v4, v9);
  v14 = a3;
  v15 = a4;
  v16 = a1;
  v17 = a2;
  return sub_100572C18();
}

uint64_t Sequence<>.exclude(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a4;
  v5[5] = a1;
  return Sequence.exclude(_:)(sub_1004CD2EC, v5, a2, a3);
}

{
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a4;
  v5[5] = a1;
  return Sequence.exclude(_:)(sub_1004CD36C, v5, a2, a3);
}

uint64_t Sequence<>.exclude(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a1;
  return Sequence.exclude(_:)(sub_1004CD358, v4, a2, a3);
}

uint64_t Sequence.firstNonNil<A>(_:)()
{
  v0 = sub_100573F08();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - v2;
  sub_100572BF8();
  swift_getWitnessTable();
  v4 = sub_100572BB8();
  (*(v1 + 8))(v3, v0);
  v6 = v4;
  sub_100572E38();
  swift_getWitnessTable();
  sub_100573258();
}

uint64_t Sequence.firstNonNilWithOriginal<A>(_:)()
{
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  return Sequence.firstNonNil<A>(_:)();
}

uint64_t sub_1004CCC6C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, __n128)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v25[0] = a5;
  v25[1] = a3;
  v10 = sub_100573C28();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v25 - v12;
  v14 = *(a4 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(a1, v16);
  if ((*(v14 + 48))(v13, 1, a4) == 1)
  {
    (*(v11 + 8))(v13, v10);
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(a6, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    v21 = *(v14 + 32);
    v21(v18, v13, a4);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v23 = swift_getTupleTypeMetadata2();
    v24 = *(v23 + 48);
    (*(*(AssociatedTypeWitness - 8) + 16))(a6, a1, AssociatedTypeWitness);
    v21((a6 + v24), v18, a4);
    return (*(*(v23 - 8) + 56))(a6, 0, 1, v23);
  }
}

void sub_1004CD030()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000116F0;

  JUMPOUT(0x1004CA1D0);
}

uint64_t sub_1004CD410()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1004CD474(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1004CD580(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}