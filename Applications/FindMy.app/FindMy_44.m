unint64_t FMSoundPlatterViewLayout.description.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v4 = 0x79616C50746F6E2ELL;
    v5 = 0x536465756575712ELL;
    v6 = 0x676E6979616C702ELL;
    if (a1 != 3)
    {
      v6 = 0xD000000000000018;
    }

    if (a1 != 2)
    {
      v5 = v6;
    }

    if (a1)
    {
      v4 = 0x676E69646E65702ELL;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000017;
    if (a1 == 6)
    {
      v1 = 0xD000000000000018;
    }

    if (a1 == 5)
    {
      v2 = 0xD000000000000018;
    }

    else
    {
      v2 = v1;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return 0xD000000000000017;
    }
  }
}

unint64_t sub_1004997D8()
{
  result = qword_1006C1B30;
  if (!qword_1006C1B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1B30);
  }

  return result;
}

unint64_t sub_100499830()
{
  result = qword_1006C1B38;
  if (!qword_1006C1B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1B38);
  }

  return result;
}

unint64_t sub_100499884()
{
  result = qword_1006C1B40;
  if (!qword_1006C1B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1B40);
  }

  return result;
}

unint64_t sub_1004998DC()
{
  result = qword_1006C1B48;
  if (!qword_1006C1B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1B48);
  }

  return result;
}

unint64_t sub_100499934()
{
  result = qword_1006C1B50;
  if (!qword_1006C1B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1B50);
  }

  return result;
}

unint64_t sub_10049998C()
{
  result = qword_1006C1B58;
  if (!qword_1006C1B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1B58);
  }

  return result;
}

unint64_t sub_1004999E4()
{
  result = qword_1006C1B60;
  if (!qword_1006C1B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1B60);
  }

  return result;
}

unint64_t sub_100499A38()
{
  result = qword_1006C1B68;
  if (!qword_1006C1B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1B68);
  }

  return result;
}

unint64_t sub_100499A90()
{
  result = qword_1006C1B70;
  if (!qword_1006C1B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1B70);
  }

  return result;
}

uint64_t type metadata accessor for FMDeviceDetailViewModel()
{
  result = qword_1006C1BD0;
  if (!qword_1006C1BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100499B88()
{
  sub_10047C2A0(319, &qword_1006C1BE0);
  if (v0 <= 0x3F)
  {
    sub_1003A614C(319, &qword_1006B7DD0, &qword_1006C0C10);
    if (v1 <= 0x3F)
    {
      sub_1003A614C(319, &qword_1006BB6C8, &qword_1006B41A0);
      if (v2 <= 0x3F)
      {
        sub_100499E9C(319, &qword_1006BA400, &type metadata accessor for FMIPItem, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_10047C2A0(319, &qword_1006C1BF0);
          if (v4 <= 0x3F)
          {
            sub_10047C2A0(319, &qword_1006C1BF8);
            if (v5 <= 0x3F)
            {
              sub_1003A614C(319, &qword_1006C1C00, &qword_1006C1C08);
              if (v6 <= 0x3F)
              {
                type metadata accessor for Date();
                if (v7 <= 0x3F)
                {
                  type metadata accessor for FMIPBatteryStatus();
                  if (v8 <= 0x3F)
                  {
                    sub_10000905C(319, &qword_1006C0000);
                    if (v9 <= 0x3F)
                    {
                      sub_100499E9C(319, &qword_1006B3F80, &type metadata accessor for Date, &type metadata accessor for Optional);
                      if (v10 <= 0x3F)
                      {
                        sub_100499E9C(319, &unk_1006C1C10, &type metadata accessor for FMIPSafeLocation, &type metadata accessor for Array);
                        if (v11 <= 0x3F)
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
      }
    }
  }
}

void sub_100499E9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100499F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void (**a4)(char *, uint64_t)@<X4>, uint64_t a5@<X5>, double a6@<X6>, void *a7@<X8>)
{
  v655 = a6;
  v665 = a5;
  v723 = a4;
  v759 = a3;
  v760 = a1;
  v773 = a7;
  v755 = type metadata accessor for FMIPDevice();
  v749 = *(v755 - 8);
  v8 = __chkstk_darwin(v755);
  v706 = &v646 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v675 = &v646 - v10;
  v688 = type metadata accessor for FMIPFeatures();
  v687 = *(v688 - 8);
  v11 = __chkstk_darwin(v688);
  v686 = &v646 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v685 = &v646 - v13;
  v705 = type metadata accessor for FMIPConfigValue();
  v704 = *(v705 - 8);
  __chkstk_darwin(v705);
  v703 = &v646 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10007EBC0(&unk_1006C1D10);
  __chkstk_darwin(v15 - 8);
  v659 = &v646 - v16;
  v17 = sub_10007EBC0(&qword_1006B8B78);
  __chkstk_darwin(v17 - 8);
  v678 = &v646 - v18;
  v19 = sub_10007EBC0(&unk_1006C1D20);
  __chkstk_darwin(v19 - 8);
  v711 = &v646 - v20;
  v758 = type metadata accessor for Date();
  v738 = *(v758 - 8);
  v21 = __chkstk_darwin(v758);
  v710 = &v646 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v654 = &v646 - v24;
  __chkstk_darwin(v23);
  v662 = &v646 - v25;
  v26 = sub_10007EBC0(&qword_1006BB1E0);
  __chkstk_darwin(v26 - 8);
  v745 = &v646 - v27;
  v737 = type metadata accessor for FMIPDeviceStatus();
  v736 = *(v737 - 8);
  v28 = __chkstk_darwin(v737);
  v735 = &v646 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v734 = &v646 - v30;
  v765 = type metadata accessor for FMIPItemGroup();
  v746 = *(v765 - 8);
  __chkstk_darwin(v765);
  v724 = &v646 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10007EBC0(&unk_1006B0000);
  v33 = __chkstk_darwin(v32 - 8);
  v684 = &v646 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v729 = &v646 - v36;
  v37 = __chkstk_darwin(v35);
  v713 = &v646 - v38;
  v39 = __chkstk_darwin(v37);
  v709 = &v646 - v40;
  v41 = __chkstk_darwin(v39);
  v653 = &v646 - v42;
  v43 = __chkstk_darwin(v41);
  v661 = &v646 - v44;
  v45 = __chkstk_darwin(v43);
  v689 = &v646 - v46;
  v47 = __chkstk_darwin(v45);
  v670 = &v646 - v48;
  __chkstk_darwin(v47);
  v750 = &v646 - v49;
  v726 = type metadata accessor for FMIPBatteryStatus();
  v725 = *(v726 - 1);
  v50 = __chkstk_darwin(v726);
  v721 = &v646 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v720 = &v646 - v52;
  v732 = type metadata accessor for FMIPDeviceConnectedStateType();
  v754 = *(v732 - 8);
  v53 = __chkstk_darwin(v732);
  v743 = &v646 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v731 = &v646 - v55;
  v56 = sub_10007EBC0(&unk_1006BBCE0);
  v57 = __chkstk_darwin(v56 - 8);
  v699 = &v646 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __chkstk_darwin(v57);
  v718 = &v646 - v60;
  v61 = __chkstk_darwin(v59);
  v716 = &v646 - v62;
  v63 = __chkstk_darwin(v61);
  v753 = &v646 - v64;
  __chkstk_darwin(v63);
  v744 = &v646 - v65;
  v66 = sub_10007EBC0(&unk_1006C0220);
  v67 = __chkstk_darwin(v66 - 8);
  v712 = &v646 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __chkstk_darwin(v67);
  v651 = &v646 - v70;
  v71 = __chkstk_darwin(v69);
  v650 = &v646 - v72;
  v73 = __chkstk_darwin(v71);
  v652 = &v646 - v74;
  v75 = __chkstk_darwin(v73);
  v657 = &v646 - v76;
  v77 = __chkstk_darwin(v75);
  v727 = (&v646 - v78);
  v79 = __chkstk_darwin(v77);
  v767 = &v646 - v80;
  v81 = __chkstk_darwin(v79);
  v681 = &v646 - v82;
  v83 = __chkstk_darwin(v81);
  v669 = &v646 - v84;
  v85 = __chkstk_darwin(v83);
  v700 = &v646 - v86;
  __chkstk_darwin(v85);
  v701 = &v646 - v87;
  v741 = type metadata accessor for FMIPDeviceState();
  v757 = *(v741 - 8);
  v88 = __chkstk_darwin(v741);
  v740 = &v646 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v88);
  v739 = &v646 - v90;
  v698 = type metadata accessor for FMIPItemState();
  v697 = *(v698 - 8);
  v91 = __chkstk_darwin(v698);
  v696 = &v646 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v91);
  v695 = &v646 - v93;
  v776 = type metadata accessor for FMIPPlaySoundChannels();
  v770 = *(v776 - 8);
  v94 = __chkstk_darwin(v776);
  v771 = &v646 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __chkstk_darwin(v94);
  v730 = &v646 - v97;
  __chkstk_darwin(v96);
  v756 = &v646 - v98;
  v782 = type metadata accessor for FMIPPartType();
  v674 = *(v782 - 8);
  v99 = __chkstk_darwin(v782);
  v692 = &v646 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __chkstk_darwin(v99);
  v691 = &v646 - v102;
  v103 = __chkstk_darwin(v101);
  v672 = &v646 - v104;
  v105 = __chkstk_darwin(v103);
  v694 = &v646 - v106;
  __chkstk_darwin(v105);
  v781 = &v646 - v107;
  v778 = type metadata accessor for FMIPProductType();
  v774 = *(v778 - 1);
  __chkstk_darwin(v778);
  v769 = &v646 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_10007EBC0(&unk_1006BB1C0);
  v110 = __chkstk_darwin(v109 - 8);
  v702 = &v646 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __chkstk_darwin(v110);
  v667 = &v646 - v113;
  v114 = __chkstk_darwin(v112);
  v658 = &v646 - v115;
  v116 = __chkstk_darwin(v114);
  v660 = &v646 - v117;
  v118 = __chkstk_darwin(v116);
  v722 = &v646 - v119;
  v120 = __chkstk_darwin(v118);
  v719 = &v646 - v121;
  __chkstk_darwin(v120);
  *&v779 = &v646 - v122;
  v783 = type metadata accessor for FMIPItem();
  v766 = *(v783 - 8);
  v123 = __chkstk_darwin(v783);
  v676 = &v646 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __chkstk_darwin(v123);
  v690 = &v646 - v126;
  v127 = __chkstk_darwin(v125);
  v693 = &v646 - v128;
  v129 = __chkstk_darwin(v127);
  v775 = &v646 - v130;
  v131 = __chkstk_darwin(v129);
  v133 = &v646 - v132;
  __chkstk_darwin(v131);
  v764 = &v646 - v134;
  v135 = sub_10007EBC0(&qword_1006C39A0);
  v136 = __chkstk_darwin(v135 - 8);
  v780 = (&v646 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v136);
  v733 = &v646 - v138;
  v139 = sub_10007EBC0(&qword_1006B07D0);
  v140 = __chkstk_darwin(v139 - 8);
  v666 = &v646 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __chkstk_darwin(v140);
  v683 = &v646 - v143;
  v144 = __chkstk_darwin(v142);
  v677 = &v646 - v145;
  v146 = __chkstk_darwin(v144);
  v708 = &v646 - v147;
  v148 = __chkstk_darwin(v146);
  v649 = &v646 - v149;
  v150 = __chkstk_darwin(v148);
  v648 = &v646 - v151;
  v152 = __chkstk_darwin(v150);
  v656 = &v646 - v153;
  v154 = __chkstk_darwin(v152);
  v728 = &v646 - v155;
  v156 = __chkstk_darwin(v154);
  v671 = &v646 - v157;
  v158 = __chkstk_darwin(v156);
  v673 = &v646 - v159;
  v160 = __chkstk_darwin(v158);
  v682 = &v646 - v161;
  v162 = __chkstk_darwin(v160);
  v680 = &v646 - v163;
  v164 = __chkstk_darwin(v162);
  v679 = &v646 - v165;
  v166 = __chkstk_darwin(v164);
  v668 = &v646 - v167;
  v168 = __chkstk_darwin(v166);
  v714 = &v646 - v169;
  __chkstk_darwin(v168);
  v171 = &v646 - v170;
  v172 = sub_10007EBC0(&qword_1006C1D30);
  v173 = v172 - 8;
  v174 = __chkstk_darwin(v172);
  v176 = &v646 - ((v175 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v174);
  v178 = &v646 - v177;
  v179 = *(v173 + 56);
  *&v178[v179] = sub_1004A024C(&v646 - v177, a2, v760);
  sub_100007204(v178, v176, &qword_1006C1D30);

  sub_100035318(v176, v171, &qword_1006B07D0);
  v707 = v178;
  v180 = v783;
  sub_100007204(v178, v176, &qword_1006C1D30);
  v742 = *&v176[*(v173 + 56)];
  sub_100012DF0(v176, &qword_1006B07D0);
  v181 = *(v766 + 48);
  v772 = v171;
  v762 = v766 + 48;
  v761 = v181;
  if (v181(v171, 1, v180) == 1)
  {
    v768 = 0;
  }

  else
  {
    v768 = FMIPDevice.pairingIncomplete.getter() ^ 1;
  }

  v182 = a2;
  v183 = v779;
  FMIPDevice.itemGroup.getter();
  v184 = v746;
  v185 = *(v746 + 48);
  v186 = v765;
  v752 = v746 + 48;
  v751 = v185;
  if (v185(v183, 1, v765) == 1)
  {
    sub_100012DF0(v183, &unk_1006BB1C0);
LABEL_10:
    v191 = v755;
    v192 = v772;
    v788 = 0;
    v786 = 0u;
    v787 = 0u;
    v193 = v733;
    v194 = v780;
    goto LABEL_11;
  }

  v187 = FMIPItemGroup.items.getter();
  (*(v184 + 8))(v183, v186);
  if (!*(v187 + 16))
  {

    goto LABEL_10;
  }

  v188 = v766;
  v189 = v764;
  (*(v766 + 16))(v764, v187 + ((*(v188 + 80) + 32) & ~*(v188 + 80)), v180);

  v190 = v769;
  FMIPItem.productType.getter();
  (*(v188 + 8))(v189, v180);
  FMIPProductType.productInformation.getter();
  (*(v774 + 8))(v190, v778);
  v191 = v755;
  v192 = v772;
  v193 = v733;
  v194 = v780;
  if (*(&v787 + 1))
  {
    sub_10007EBC0(&unk_1006C1D60);
    v195 = type metadata accessor for FMIPHawkeyeProductInformation();
    v194 = v780;
    v196 = swift_dynamicCast();
    (*(*(v195 - 8) + 56))(v193, v196 ^ 1u, 1, v195);
    goto LABEL_12;
  }

LABEL_11:
  sub_100012DF0(&v786, &qword_1006B1328);
  v195 = type metadata accessor for FMIPHawkeyeProductInformation();
  (*(*(v195 - 8) + 56))(v193, 1, 1, v195);
LABEL_12:
  sub_100007204(v193, v194, &qword_1006C39A0);
  type metadata accessor for FMIPHawkeyeProductInformation();
  v197 = *(v195 - 8);
  if ((*(v197 + 48))(v194, 1, v195) == 1)
  {
    sub_100012DF0(v194, &qword_1006C39A0);
    v198 = 0;
  }

  else
  {
    v198 = FMIPHawkeyeProductInformation.requiresAdditionalConnectionTime.getter();
    (*(v197 + 8))(v194, v195);
  }

  v199 = v783;
  v774 = type metadata accessor for FMDeviceDetailViewModel();
  *(v773 + *(v774 + 52)) = v198 & 1;
  v777 = v182;
  if (v742)
  {
    v200 = v191;
    v201 = v742[2];
    if (v201)
    {
      v780 = *(v766 + 16);
      v202 = v742 + ((*(v766 + 80) + 32) & ~*(v766 + 80));
      *&v779 = *(v766 + 72);
      v203 = (v766 + 8);
      v204 = (v674 + 88);
      LODWORD(v778) = enum case for FMIPPartType.standalone(_:);
      LODWORD(v769) = enum case for FMIPPartType.case(_:);
      LODWORD(v748) = enum case for FMIPPartType.leftBud(_:);
      v717 = enum case for FMIPPartType.rightBud(_:);
      v664 = enum case for FMIPPartType.generic(_:);
      v647 = (v674 + 8);
      v663 = enum case for FMIPPlaySoundChannels.right(_:);
      v764 = v770 + 104;
      v763 = (v770 + 32);
      v715 = enum case for FMIPPlaySoundChannels.left(_:);
      LODWORD(v747) = enum case for FMIPPlaySoundChannels.case(_:);

      v205 = _swiftEmptyArrayStorage;
      while (1)
      {
        v780(v133, v202, v199);
        v206 = v781;
        FMIPItem.partType.getter();
        (*v203)(v133, v199);
        v207 = (*v204)(v206, v782);
        if (v207 != v778)
        {
          if (v207 == v769)
          {
            (*v764)(v771, v747, v776);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v208 = v205;
            }

            else
            {
              v208 = sub_10008BB18(0, v205[2] + 1, 1, v205);
            }

            v210 = v208[2];
            v209 = v208[3];
            if (v210 >= v209 >> 1)
            {
              v208 = sub_10008BB18(v209 > 1, v210 + 1, 1, v208);
            }

            v208[2] = v210 + 1;
            v205 = v208;
            (*(v770 + 4))(v208 + ((v770[80] + 32) & ~v770[80]) + *(v770 + 9) * v210, v771, v776);
          }

          else
          {
            if (v207 != v748)
            {
              if (v207 == v717)
              {
                (*v764)(v730, v663, v776);
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  v214 = v205;
                }

                else
                {
                  v214 = sub_10008BB18(0, v205[2] + 1, 1, v205);
                }

                v216 = v214[2];
                v215 = v214[3];
                if (v216 >= v215 >> 1)
                {
                  v214 = sub_10008BB18(v215 > 1, v216 + 1, 1, v214);
                }

                v214[2] = v216 + 1;
                v205 = v214;
                (*(v770 + 4))(v214 + ((v770[80] + 32) & ~v770[80]) + *(v770 + 9) * v216, v730, v776);
              }

              else if (v207 != v664)
              {
                (*v647)(v781, v782);
              }

              goto LABEL_20;
            }

            (*v764)(v756, v715, v776);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v211 = v205;
            }

            else
            {
              v211 = sub_10008BB18(0, v205[2] + 1, 1, v205);
            }

            v213 = v211[2];
            v212 = v211[3];
            if (v213 >= v212 >> 1)
            {
              v211 = sub_10008BB18(v212 > 1, v213 + 1, 1, v211);
            }

            v211[2] = v213 + 1;
            v205 = v211;
            (*(v770 + 4))(v211 + ((v770[80] + 32) & ~v770[80]) + *(v770 + 9) * v213, v756, v776);
          }

          v199 = v783;
        }

LABEL_20:
        v202 += v779;
        if (!--v201)
        {

          v191 = v755;
          v217 = v772;
          v218 = v765;
          v219 = v205;
          goto LABEL_48;
        }
      }
    }

    v217 = v192;
    v219 = _swiftEmptyArrayStorage;
    v191 = v200;
  }

  else
  {
    v219 = _swiftEmptyArrayStorage;
    v217 = v192;
  }

  v218 = v765;
LABEL_48:
  v220 = *(v219 + 2);
  v764 = v219;
  v221 = v719;
  if (v220)
  {

    v220 = v764;
  }

  v222 = v773;
  *(v773 + *(v774 + 48)) = v220;
  v223 = v768;
  *(v222 + 40) = v768 & 1;
  if (v223)
  {
    v224 = v714;
    sub_100007204(v217, v714, &qword_1006B07D0);
    if (v761(v224, 1, v199) == 1)
    {
      v225 = &qword_1006B07D0;
      v226 = v224;
LABEL_55:
      sub_100012DF0(v226, v225);
      v717 = 0;
      goto LABEL_59;
    }

    v227 = v695;
    FMIPItem.state.getter();
    (*(v766 + 8))(v224, v199);
  }

  else
  {
    FMIPDevice.itemGroup.getter();
    if (v751(v221, 1, v218) == 1)
    {
      v225 = &unk_1006BB1C0;
      v226 = v221;
      goto LABEL_55;
    }

    v227 = v695;
    FMIPItemGroup.state.getter();
    (*(v746 + 8))(v221, v218);
  }

  v228 = v696;
  static FMIPItemState.isBTConnected.getter();
  sub_1004A7DD4(&qword_1006C0350, &type metadata accessor for FMIPItemState);
  v229 = v698;
  v717 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v230 = *(v697 + 8);
  v230(v228, v229);
  v230(v227, v229);
LABEL_59:
  v231 = v739;
  FMIPDevice.state.getter();
  v232 = v740;
  static FMIPDeviceState.isThisDevice.getter();
  v233 = sub_1004A7DD4(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState);
  v234 = v741;
  v715 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v235 = v757 + 8;
  v236 = *(v757 + 8);
  v236(v232, v234);
  v236(v231, v234);
  FMIPDevice.state.getter();
  static FMIPDeviceState.isDeviceWithYou.getter();
  v763 = v233;
  LODWORD(v714) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v236(v232, v234);
  v757 = v235;
  v747 = v236;
  v236(v231, v234);
  if (FMIPDevice.pairingIncomplete.getter())
  {
    LODWORD(v719) = 0;
    v237 = v718;
    v238 = v749;
    goto LABEL_68;
  }

  if ((v768 & 1) == 0)
  {
    v241 = v700;
    FMIPDevice.bestLocation.getter();
LABEL_66:
    v242 = type metadata accessor for FMIPLocation();
    LODWORD(v719) = (*(*(v242 - 8) + 48))(v241, 1, v242) != 1;
    goto LABEL_67;
  }

  v239 = v668;
  sub_100007204(v217, v668, &qword_1006B07D0);
  if (v761(v239, 1, v199) != 1)
  {
    v241 = v701;
    FMIPItem.location.getter();
    (*(v766 + 8))(v239, v199);
    goto LABEL_66;
  }

  sub_100012DF0(v239, &qword_1006B07D0);
  v240 = type metadata accessor for FMIPLocation();
  v241 = v701;
  (*(*(v240 - 8) + 56))(v701, 1, 1, v240);
  LODWORD(v719) = 0;
LABEL_67:
  v237 = v718;
  v238 = v749;
  sub_100012DF0(v241, &unk_1006C0220);
LABEL_68:
  v243 = FMIPDevice.deviceConnectedWithBeacon.getter();
  if (v244)
  {
    v245 = v244;
  }

  else
  {
    v243 = 0;
    v245 = 0xE000000000000000;
  }

  v246 = v744;
  sub_1000E5180(v243, v245, v744);

  sub_1000E5498(v753);

  v247 = v716;
  sub_100007204(v246, v716, &unk_1006BBCE0);
  v248 = *(v238 + 48);
  if (v248(v247, 1, v191) == 1)
  {
    sub_100012DF0(v247, &unk_1006BBCE0);
    v249 = 0;
    v250 = 0;
  }

  else
  {
    v249 = FMIPDevice.baIdentifier.getter();
    v250 = v251;
    (*(v238 + 8))(v247, v191);
  }

  sub_100007204(v753, v237, &unk_1006BBCE0);
  v780 = v248;
  if (v248(v237, 1, v191) == 1)
  {
    sub_100012DF0(v237, &unk_1006BBCE0);
    if (!v250)
    {
      v252 = v191;
      LODWORD(v781) = 1;
      v253 = v732;
      v254 = v731;
      goto LABEL_85;
    }

    goto LABEL_82;
  }

  v255 = FMIPDevice.baIdentifier.getter();
  v257 = v256;
  (*(v238 + 8))(v237, v191);
  if (v250)
  {
    if (v257)
    {
      if (v249 == v255 && v250 == v257)
      {

        LODWORD(v781) = 1;
      }

      else
      {
        LODWORD(v781) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      goto LABEL_83;
    }

LABEL_82:
    LODWORD(v781) = 0;
LABEL_83:
    v253 = v732;
    v254 = v731;
LABEL_84:
    v252 = v191;

    goto LABEL_85;
  }

  v254 = v731;
  if (v257)
  {
    LODWORD(v781) = 0;
    v253 = v732;
    goto LABEL_84;
  }

  v252 = v191;
  LODWORD(v781) = 1;
  v253 = v732;
LABEL_85:
  FMIPDevice.deviceConnectedState.getter();
  v258 = v754;
  v259 = v754 + 104;
  v260 = *(v754 + 13);
  v261 = v743;
  (v260)(v743, enum case for FMIPDeviceConnectedStateType.connected(_:), v253);
  v262 = static FMIPDeviceConnectedStateType.== infix(_:_:)();
  v263 = *(v258 + 1);
  v748 = v263;
  v263(v261, v253);
  v263(v254, v253);
  v754 = v258 + 8;
  v701 = v259;
  v700 = v260;
  if (v262)
  {
    v264 = v759;
    if ((v781 & 1) == 0)
    {
      goto LABEL_87;
    }

LABEL_90:
    v270 = 0;
    v271 = 0;
    v267 = v777;
    v268 = v772;
    v269 = v727;
    goto LABEL_92;
  }

  FMIPDevice.deviceConnectedState.getter();
  v272 = v743;
  (v260)(v743, enum case for FMIPDeviceConnectedStateType.attached(_:), v253);
  v273 = static FMIPDeviceConnectedStateType.== infix(_:_:)();
  v274 = v272;
  v275 = v748;
  v748(v274, v253);
  v275(v254, v253);
  v276 = v781 | ~v273;
  v264 = v759;
  if (v276)
  {
    goto LABEL_90;
  }

LABEL_87:
  v265 = v699;
  sub_100007204(v744, v699, &unk_1006BBCE0);
  v266 = (v780)(v265, 1, v252);
  v267 = v777;
  v268 = v772;
  v269 = v727;
  if (v266 == 1)
  {
    sub_100012DF0(v265, &unk_1006BBCE0);
    v270 = 0;
    v271 = 0;
  }

  else
  {
    v277 = FMIPDevice.name.getter();
    v271 = v278;
    (*(v749 + 8))(v265, v252);
    v270 = v277;
  }

LABEL_92:
  sub_100260334(v267, v268, v264 != 0, 0, 0, 1, 0, v270, &v786, v271);
  v279 = v786;
  v280 = v787;
  v281 = v788;

  if (*(&v279 + 1))
  {
    v282 = [objc_opt_self() mainBundle];
    v789._object = 0x800000010057DBA0;
    v283._countAndFlagsBits = 0xD000000000000027;
    v283._object = 0x800000010057DB70;
    v789._countAndFlagsBits = 0xD000000000000039;
    v284._countAndFlagsBits = 0;
    v284._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v283, 0, v282, v284, v789);

    sub_10007EBC0(&unk_1006B20B0);
    v285 = swift_allocObject();
    *(v285 + 16) = xmmword_100552210;
    *(v285 + 56) = &type metadata for String;
    v286 = sub_10008EE84();
    *(v285 + 32) = v279;
    *(v285 + 96) = &type metadata for String;
    *(v285 + 104) = v286;
    *(v285 + 64) = v286;
    *(v285 + 72) = v280;
    v699 = String.init(format:_:)();
    v716 = v287;
  }

  else
  {
    v716 = *(&v280 + 1);
    v699 = v280;
  }

  v288 = v774;
  v778 = v738;
  v289 = v720;
  v290 = v777;
  FMIPDevice.batteryStatus.getter();
  v291 = v725;
  v292 = v721;
  v293 = v726;
  (v725[13])(v721, enum case for FMIPBatteryStatus.unknown(_:), v726);
  sub_1004A7DD4(&qword_1006C1D38, &type metadata accessor for FMIPBatteryStatus);
  LODWORD(v718) = dispatch thunk of static Equatable.== infix(_:_:)();
  v294 = v291[1];
  v294(v292, v293);
  v294(v289, v293);
  if (v768)
  {
    v295 = v679;
    sub_100007204(v772, v679, &qword_1006B07D0);
    v296 = v783;
    if (v761(v295, 1, v783) == 1)
    {
      sub_100012DF0(v295, &qword_1006B07D0);
      v297 = 1;
      v298 = v750;
      v299 = v680;
    }

    else
    {
      v305 = v669;
      FMIPItem.location.getter();
      (*(v766 + 8))(v295, v296);
      v306 = type metadata accessor for FMIPLocation();
      v307 = *(v306 - 8);
      v308 = (*(v307 + 48))(v305, 1, v306);
      v299 = v680;
      if (v308 == 1)
      {
        sub_100012DF0(v305, &unk_1006C0220);
        v297 = 1;
        v298 = v750;
      }

      else
      {
        v311 = FMIPLocation.location.getter();
        (*(v307 + 8))(v305, v306);
        v312 = [v311 timestamp];

        v313 = v750;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v298 = v313;
        v296 = v783;
        v297 = 0;
      }
    }

    v756 = v778[7];
    (v756)(v298, v297, 1, v758);
    sub_100007204(v772, v299, &qword_1006B07D0);
    if (v761(v299, 1, v296) == 1)
    {
      sub_100012DF0(v299, &qword_1006B07D0);
      v314 = type metadata accessor for FMIPLocation();
      (*(*(v314 - 8) + 56))(v767, 1, 1, v314);
    }

    else
    {
      FMIPItem.location.getter();
      (*(v766 + 8))(v299, v296);
    }
  }

  else
  {
    v300 = v681;
    FMIPDevice.bestLocation.getter();
    v301 = type metadata accessor for FMIPLocation();
    v302 = *(v301 - 8);
    if ((*(v302 + 48))(v300, 1, v301) == 1)
    {
      sub_100012DF0(v300, &unk_1006C0220);
      v303 = 1;
      v304 = v750;
    }

    else
    {
      v309 = FMIPLocation.location.getter();
      (*(v302 + 8))(v300, v301);
      v310 = [v309 timestamp];

      v304 = v750;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v303 = 0;
    }

    v756 = v778[7];
    (v756)(v304, v303, 1, v758);
    FMIPDevice.bestLocation.getter();
  }

  v315 = objc_opt_self();
  v725 = [v315 secondaryLabelColor];
  v721 = v315;
  if (v281)
  {
    v726 = v281;
  }

  else
  {
    v726 = [v315 secondaryLabelColor];
  }

  sub_100007204(v767, v269, &unk_1006C0220);
  v316 = type metadata accessor for FMIPLocation();
  v317 = *(v316 - 8);
  v318 = *(v317 + 6);
  v771 = v317 + 48;
  v770 = v318;
  v319 = (v318)(v269, 1, v316);
  v730 = v281;
  v776 = v316;
  v727 = v317;
  if (v319 == 1)
  {
    v320 = v281;

    sub_100012DF0(v269, &unk_1006C0220);
    countAndFlagsBits = 0;
    object = 0;
    v323 = v722;
    v324 = v759;
  }

  else
  {
    v325 = v281;
    v326 = FMIPLocation.location.getter();
    (*(v317 + 1))(v269, v316);
    v324 = v759;
    if (v759)
    {
      v327 = qword_1006AEC58;
      v328 = v759;
      v329 = v723;
      v330 = v765;
      if (v327 != -1)
      {
        goto LABEL_278;
      }

      goto LABEL_117;
    }

    countAndFlagsBits = 0;
    object = 0;
    v323 = v722;
  }

  v330 = v765;
  while (1)
  {
    v769 = sub_1004A43A0(v290, v324, v781 & 1);
    v353 = FMIPDevice.safeLocations.getter();
    v785 = v353;
    FMIPDevice.itemGroup.getter();
    if (v751(v323, 1, v330) == 1)
    {
      sub_100012DF0(v323, &unk_1006BB1C0);
      v324 = 0;
      v354 = _swiftEmptyArrayStorage;
      v330 = v773;
    }

    else
    {
      v723 = countAndFlagsBits;
      (*(v746 + 32))(v724, v323, v330);
      v355 = FMIPItemGroup.items.getter();
      v356 = *(v355 + 16);
      if (v356)
      {
        v722 = object;
        v324 = 0;
        v780 = *(v766 + 16);
        v357 = (*(v766 + 80) + 32) & ~*(v766 + 80);
        v720 = v355;
        v358 = v355 + v357;
        *&v779 = *(v766 + 72);
        v781 = (v766 + 16);
        v359 = (v766 + 8);
        v354 = _swiftEmptyArrayStorage;
        v360 = v783;
        do
        {
          v361 = v354;
          v362 = v775;
          v780(v775, v358, v360);
          v363 = FMIPItem.safeLocations.getter();
          v364 = sub_1004A623C(v363, &v785);

          sub_100493EF4(v364, sub_10008BAF0, &type metadata accessor for FMIPSafeLocation);
          v365 = FMIPItem.identifier.getter();
          v367 = v366;
          v368 = v362;
          v354 = v361;
          (*v359)(v368, v360);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v354 = sub_10008B9E4(0, *(v361 + 2) + 1, 1, v361);
          }

          v370 = *(v354 + 2);
          v369 = *(v354 + 3);
          if (v370 >= v369 >> 1)
          {
            v354 = sub_10008B9E4((v369 > 1), v370 + 1, 1, v354);
          }

          *(v354 + 2) = v370 + 1;
          v371 = &v354[16 * v370];
          *(v371 + 4) = v365;
          *(v371 + 5) = v367;
          v358 += v779;
          --v356;
          v360 = v783;
        }

        while (v356);

        v288 = v774;
        object = v722;
      }

      else
      {

        v324 = 0;
        v354 = _swiftEmptyArrayStorage;
      }

      (*(v746 + 8))(v724, v765);
      v353 = v785;
      v330 = v773;
      countAndFlagsBits = v723;
    }

    v330[4] = v354;
    *(v330 + v288[38]) = v353;
    v780 = v353;
    v781 = v354;
    if ((v715 | v717 | v714))
    {

      v372 = [objc_opt_self() mainBundle];
      v791._object = 0x8000000100590BA0;
      v373._countAndFlagsBits = 0xD00000000000001DLL;
      v373._object = 0x8000000100590B80;
      v791._countAndFlagsBits = 0xD00000000000002FLL;
      v374._countAndFlagsBits = 0;
      v374._object = 0xE000000000000000;
      v375 = NSLocalizedString(_:tableName:bundle:value:comment:)(v373, 0, v372, v374, v791);
      countAndFlagsBits = v375._countAndFlagsBits;
      object = v375._object;
    }

    else
    {
    }

    v376 = (v330 + v288[14]);
    *v376 = countAndFlagsBits;
    v376[1] = object;
    *v330 = FMIPDevice.identifier.getter();
    v330[1] = v377;
    v330[2] = FMIPDevice.baIdentifier.getter();
    v330[3] = v378;
    FMIPDevice.status.getter();
    (*(v736 + 104))(v735, enum case for FMIPDeviceStatus.online(_:), v737);
    sub_1004A7DD4(&unk_1006C1D40, &type metadata accessor for FMIPDeviceStatus);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v379 = v772;
    if (v786 == v784)
    {
      v380 = 1;
    }

    else
    {
      v380 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v381 = *(v736 + 8);
    v382 = v737;
    v381(v735, v737);
    v381(v734, v382);

    *(v330 + v288[15]) = v380 & 1;
    if (v768)
    {
      v383 = v379;
      v384 = v682;
      sub_100007204(v379, v682, &qword_1006B07D0);
      v385 = v783;
      v386 = v761(v384, 1, v783);
      v387 = v728;
      if (v386 == 1)
      {
        sub_100012DF0(v384, &qword_1006B07D0);
        v388 = type metadata accessor for FMIPAddress();
        (*(*(v388 - 8) + 56))(v745, 1, 1, v388);
      }

      else
      {
        FMIPItem.address.getter();
        (*(v766 + 8))(v384, v385);
      }
    }

    else
    {
      FMIPDevice.address.getter();
      v385 = v783;
      v387 = v728;
      v383 = v379;
    }

    v389 = v719;
    My = type metadata accessor for Feature.FindMy();
    *(&v787 + 1) = My;
    v788 = sub_1004A7DD4(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
    v391 = sub_100008FC0(&v786);
    (*(*(My - 8) + 104))(v391, enum case for Feature.FindMy.baAirpodsMultipartUI(_:), My);
    v392 = isFeatureEnabled(_:)();
    sub_100006060(&v786);
    if (v389)
    {

      v393 = sub_10025F99C(v745, v767, 1, 0);
      v395 = v394;
      v396 = (v330 + v288[17]);
      *v396 = v397;
      v396[1] = v398;
      v399 = (v330 + v288[18]);
      *v399 = v699;
      v400 = v716;
LABEL_161:
      v399[1] = v400;
      goto LABEL_162;
    }

    if ((v392 & 1) == 0 || (FMIPDevice.shouldDisplaySeparatedLocation.getter() & 1) == 0)
    {

      v393 = 0;
      v395 = 0;
      v403 = (v330 + v288[17]);
      v404 = v716;
      *v403 = v699;
      v403[1] = v404;
      v399 = (v330 + v288[18]);
      v400 = 0xE000000000000000;
      *v399 = 0;
      goto LABEL_161;
    }

    v401 = v660;
    FMIPDevice.itemGroup.getter();
    v329 = v765;
    if (v751(v401, 1, v765) == 1)
    {
      sub_100012DF0(v401, &unk_1006BB1C0);
      v402 = 1;
    }

    else
    {
      v328 = v401;
      v326 = FMIPItemGroup.items.getter();
      (*(v746 + 8))(v328, v329);
      v467 = v326;
      v737 = v326[2];
      if (v737)
      {
        v468 = 0;
        *&v779 = v766 + 16;
        LODWORD(v775) = enum case for FMIPPartType.leftBud(_:);
        v469 = (v674 + 104);
        v330 = (v674 + 8);
        v736 = v766 + 8;
        while (v468 < v467[2])
        {
          v326 = v467;
          (*(v766 + 16))(v693, v467 + ((*(v766 + 80) + 32) & ~*(v766 + 80)) + *(v766 + 72) * v468, v783);
          FMIPItem.partType.getter();
          v470 = v672;
          (*v469)(v672, v775, v782);
          sub_1004A7DD4(&qword_1006BEF50, &type metadata accessor for FMIPPartType);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          v328 = *(&v784 + 1);
          if (v786 == v784)
          {
            v559 = *v330;
            v560 = v782;
            (*v330)(v470, v782);
            v559(v694, v560);

LABEL_231:

            v385 = v783;
            (*(v766 + 32))(v673, v693, v783);
            v402 = 0;
            v330 = v773;
            v288 = v774;
            goto LABEL_232;
          }

          v471 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v329 = *v330;
          v472 = v470;
          v473 = v782;
          (*v330)(v472, v782);
          (v329)(v694, v473);

          if (v471)
          {
            goto LABEL_231;
          }

          ++v468;
          (*v736)(v693, v783);
          v288 = v774;
          v467 = v326;
          if (v737 == v468)
          {
            goto LABEL_188;
          }
        }

        __break(1u);
        goto LABEL_277;
      }

LABEL_188:

      v402 = 1;
      v330 = v773;
      v385 = v783;
LABEL_232:
      v387 = v728;
    }

    v561 = v766 + 56;
    v562 = *(v766 + 56);
    v562(v673, v402, 1, v385);
    v563 = v658;
    FMIPDevice.itemGroup.getter();
    v564 = v765;
    if (v751(v563, 1, v765) == 1)
    {
      break;
    }

    v735 = v562;
    v736 = v561;
    v324 = FMIPItemGroup.items.getter();
    (*(v746 + 8))(v563, v564);
    v328 = v689;
    v737 = v324[2];
    if (!v737)
    {
LABEL_241:

      v385 = v783;
      (v735)(v671, 1, 1, v783);

      v565 = v758;
      goto LABEL_245;
    }

    v566 = 0;
    *&v779 = v766 + 16;
    LODWORD(v775) = enum case for FMIPPartType.rightBud(_:);
    v326 = (v674 + 104);
    v567 = (v674 + 8);
    v329 = (v766 + 8);
    while (v566 < v324[2])
    {
      (*(v766 + 16))(v690, v324 + ((*(v766 + 80) + 32) & ~*(v766 + 80)) + *(v766 + 72) * v566, v783);
      FMIPItem.partType.getter();
      (*v326)(v692, v775, v782);
      sub_1004A7DD4(&qword_1006BEF50, &type metadata accessor for FMIPPartType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v786 == v784)
      {
        v571 = *v567;
        v572 = v782;
        (*v567)(v692, v782);
        v571(v691, v572);

        v387 = v728;
LABEL_243:

        v573 = v671;
        v385 = v783;
        (*(v766 + 32))(v671, v690, v783);
        (v735)(v573, 0, 1, v385);

        v330 = v773;
        v565 = v758;
        v288 = v774;
        goto LABEL_244;
      }

      v568 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v569 = *v567;
      v570 = v782;
      (*v567)(v692, v782);
      v569(v691, v570);

      v387 = v728;
      if (v568)
      {
        goto LABEL_243;
      }

      ++v566;
      (*v329)(v690, v783);
      v330 = v773;
      v288 = v774;
      v328 = v689;
      if (v737 == v566)
      {
        goto LABEL_241;
      }
    }

LABEL_277:
    __break(1u);
LABEL_278:
    swift_once();
LABEL_117:
    v331 = qword_1006D48A8;
    v332 = [qword_1006D48A8 localizedDistanceFromLocation:v326 toLocation:v328];
    v333 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    object = v334;

    if (!v329)
    {

      goto LABEL_130;
    }

    v335 = sub_1000FF754();
    if (v336)
    {
      v337 = v336;
      v338 = v335;

      v339 = v655;
      v340 = [objc_allocWithZone(MKDistanceFormatter) init];
      v341 = [v331 measurementSystem];
      if (v341 != 1)
      {
        if (v341 == 2)
        {
          v342 = 1;
        }

        else
        {
          v342 = 2;
        }

        [v340 setUnits:v342];
      }

      v343 = [v340 stringFromDistance:v339];
      v344 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v780 = v345;

      v346 = [objc_opt_self() mainBundle];
      v790._object = 0x800000010057DF30;
      v347._countAndFlagsBits = 0x415045535F415445;
      v347._object = 0xED0000524F544152;
      v790._countAndFlagsBits = 0xD00000000000001FLL;
      v348._countAndFlagsBits = 0;
      v348._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v347, 0, v346, v348, v790);

      sub_10007EBC0(&unk_1006B20B0);
      v349 = swift_allocObject();
      *(v349 + 16) = xmmword_100552210;
      *(v349 + 56) = &type metadata for String;
      v350 = sub_10008EE84();
      v351 = v780;
      *(v349 + 32) = v344;
      *(v349 + 40) = v351;
      *(v349 + 96) = &type metadata for String;
      *(v349 + 104) = v350;
      *(v349 + 64) = v350;
      *(v349 + 72) = v338;
      *(v349 + 80) = v337;
      countAndFlagsBits = String.init(format:_:)();
      object = v352;

      v324 = v759;
      v330 = v765;
      v288 = v774;
      v323 = v722;
      v290 = v777;
    }

    else
    {

LABEL_130:
      v323 = v722;
      v290 = v777;
      countAndFlagsBits = v333;
    }
  }

  sub_100012DF0(v563, &unk_1006BB1C0);
  v562(v671, 1, 1, v385);
  v565 = v758;
LABEL_244:
  v328 = v689;
LABEL_245:
  v574 = v657;
  sub_100007204(v673, v387, &qword_1006B07D0);
  v575 = v761(v387, 1, v385);
  v576 = v670;
  v577 = v661;
  if (v575 == 1)
  {
    sub_100012DF0(v387, &qword_1006B07D0);
    v578 = 1;
  }

  else
  {
    FMIPItem.location.getter();
    (*(v766 + 8))(v387, v385);
    v579 = v776;
    if ((v770)(v574, 1, v776) == 1)
    {
      sub_100012DF0(v574, &unk_1006C0220);
      v578 = 1;
    }

    else
    {
      v580 = FMIPLocation.location.getter();
      v727[1](v574, v579);
      v581 = [v580 timestamp];

      v565 = v758;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v578 = 0;
    }

    v328 = v689;
  }

  (v756)(v576, v578, 1, v565);
  v582 = v656;
  sub_100007204(v671, v656, &qword_1006B07D0);
  if (v761(v582, 1, v385) == 1)
  {
    sub_100012DF0(v582, &qword_1006B07D0);
    v583 = 1;
  }

  else
  {
    v584 = v652;
    FMIPItem.location.getter();
    (*(v766 + 8))(v582, v385);
    v585 = v776;
    if ((v770)(v584, 1, v776) == 1)
    {
      sub_100012DF0(v584, &unk_1006C0220);
      v583 = 1;
      v328 = v689;
    }

    else
    {
      v586 = FMIPLocation.location.getter();
      v727[1](v584, v585);
      v587 = [v586 timestamp];

      v565 = v758;
      v588 = v689;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v328 = v588;
      v577 = v661;
      v583 = 0;
    }
  }

  v589 = v778;
  (v756)(v328, v583, 1, v565);
  sub_100007204(v670, v577, &unk_1006B0000);
  v590 = v577;
  v591 = v589[6];
  if (v591(v577, 1, v565) == 1)
  {
    v592 = v577;
    goto LABEL_260;
  }

  v593 = v589;
  v594 = v590;
  v595 = v589[4];
  v595(v662, v594, v565);
  v592 = v653;
  sub_100007204(v328, v653, &unk_1006B0000);
  if (v591(v592, 1, v565) == 1)
  {
    (v593[1])(v662, v565);
LABEL_260:
    sub_100012DF0(v592, &unk_1006B0000);
    v596 = (v330 + v288[17]);
    v597 = v716;
    *v596 = v699;
    v596[1] = v597;
    sub_100012DF0(v689, &unk_1006B0000);
    sub_100012DF0(v670, &unk_1006B0000);
    sub_100012DF0(v671, &qword_1006B07D0);
    sub_100012DF0(v673, &qword_1006B07D0);
    v393 = 0;
    v395 = 0;
    v598 = (v330 + v288[18]);
    *v598 = 0;
    v598[1] = 0xE000000000000000;
    v383 = v772;
  }

  else
  {

    v595(v654, v592, v565);
    v781 = objc_opt_self();
    v599 = [v781 mainBundle];
    v792._object = 0x800000010057D660;
    v600._countAndFlagsBits = 0xD000000000000024;
    v600._object = 0x800000010059B9D0;
    v782 = "AIRPODS_DIRECTIONS_TITLE";
    v601.value._object = 0x800000010057D640;
    v792._countAndFlagsBits = 0xD00000000000001BLL;
    v601.value._countAndFlagsBits = 0xD000000000000016;
    v602._countAndFlagsBits = 0;
    v602._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v600, v601, v599, v602, v792);

    sub_10007EBC0(&unk_1006B20B0);
    v603 = v385;
    v604 = swift_allocObject();
    v779 = xmmword_100552220;
    *(v604 + 16) = xmmword_100552220;
    v605 = sub_100455280();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v607 = v330;
    v608 = [v605 stringFromDate:isa];

    v609 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v611 = v610;

    *(v604 + 56) = &type metadata for String;
    v612 = sub_10008EE84();
    *(v604 + 64) = v612;
    *(v604 + 32) = v609;
    *(v604 + 40) = v611;
    v613 = String.init(format:_:)();
    v615 = v614;

    v616 = (v607 + *(v774 + 68));
    *v616 = v613;
    v616[1] = v615;
    v617 = v648;
    sub_100007204(v673, v648, &qword_1006B07D0);
    if (v761(v617, 1, v385) == 1)
    {
      sub_100012DF0(v617, &qword_1006B07D0);
      v618 = v650;
      (v727[7])(v650, 1, 1, v776);
    }

    else
    {
      v618 = v650;
      FMIPItem.location.getter();
      (*(v766 + 8))(v617, v385);
    }

    v619 = v721;
    v620 = sub_1004A3F00(v618);
    sub_100012DF0(v618, &unk_1006C0220);
    v621 = &selRef_systemRedColor;
    if ((v620 & 1) == 0)
    {
      v621 = &selRef_systemGreenColor;
    }

    v622 = [v619 *v621];

    v623 = [v781 mainBundle];
    v793._object = 0x800000010057D660;
    v624._countAndFlagsBits = 0xD000000000000025;
    v624._object = 0x800000010059BA00;
    v625.value._object = (v782 | 0x8000000000000000);
    v793._countAndFlagsBits = 0xD00000000000001BLL;
    v625.value._countAndFlagsBits = 0xD000000000000016;
    v626._countAndFlagsBits = 0;
    v626._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v624, v625, v623, v626, v793);

    v627 = swift_allocObject();
    *(v627 + 16) = v779;
    v628 = sub_100455280();
    v629 = Date._bridgeToObjectiveC()().super.isa;
    v630 = [v628 stringFromDate:v629];

    v631 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v633 = v632;

    *(v627 + 56) = &type metadata for String;
    *(v627 + 64) = v612;
    *(v627 + 32) = v631;
    *(v627 + 40) = v633;
    v634 = String.init(format:_:)();
    v636 = v635;

    v288 = v774;
    v330 = v773;
    v637 = (v773 + *(v774 + 72));
    *v637 = v634;
    v637[1] = v636;
    v638 = v649;
    sub_100007204(v671, v649, &qword_1006B07D0);
    if (v761(v638, 1, v603) == 1)
    {
      sub_100012DF0(v638, &qword_1006B07D0);
      v639 = v651;
      (v727[7])(v651, 1, 1, v776);
    }

    else
    {
      v639 = v651;
      FMIPItem.location.getter();
      (*(v766 + 8))(v638, v603);
    }

    v383 = v772;
    v640 = v662;
    v641 = sub_1004A3F00(v639);
    sub_100012DF0(v639, &unk_1006C0220);
    v642 = &selRef_systemRedColor;
    if ((v641 & 1) == 0)
    {
      v642 = &selRef_systemGreenColor;
    }

    v643 = [v619 *v642];

    v644 = v778[1];
    v645 = v758;
    v644(v654, v758);
    v644(v640, v645);
    sub_100012DF0(v689, &unk_1006B0000);
    sub_100012DF0(v670, &unk_1006B0000);
    sub_100012DF0(v671, &qword_1006B07D0);
    sub_100012DF0(v673, &qword_1006B07D0);
    v393 = 0;
    v395 = 0;
    v726 = v643;
    v725 = v622;
  }

LABEL_162:
  sub_100007204(v383, v330 + v288[9], &qword_1006B07D0);
  v405 = v742;
  v330[6] = v742;

  v406 = v777;
  v407 = FMIPDevice.shouldDisplaySeparatedLocation.getter();
  v408 = sub_1002642B0(v406, v383, v405, v407 & 1);
  v410 = v409;

  v411 = (v330 + v288[19]);
  *v411 = v408;
  v411[1] = v410;
  v412 = (v330 + v288[16]);
  *v412 = v393;
  v412[1] = v395;
  v413 = v709;
  sub_100007204(v750, v709, &unk_1006B0000);
  v414 = v778;
  v415 = v778[6];
  v416 = v758;
  if (v415(v413, 1, v758) == 1)
  {
    v417 = v710;
    static Date.distantFuture.getter();
    if (v415(v413, 1, v416) != 1)
    {
      sub_100012DF0(v413, &unk_1006B0000);
    }
  }

  else
  {
    v417 = v710;
    (v414[4])(v710, v413, v416);
  }

  v418 = v718 ^ 1;
  v419 = v773 + v288[20];
  v782 = v414[4];
  (v782)(v419, v417, v416);
  v420 = v708;
  sub_100007204(v383, v708, &qword_1006B07D0);
  v421 = v783;
  v422 = v761(v420, 1, v783);
  v778 = v414 + 4;
  v781 = v415;
  if (v422 == 1)
  {
    sub_100012DF0(v420, &qword_1006B07D0);
    v423 = 0;
    v424 = 0;
  }

  else
  {
    v425 = v766;
    v426 = v676;
    (*(v766 + 32))(v676, v420, v421);
    v424 = sub_1000F4104();
    v423 = sub_1000F39B8(v426, v759);
    (*(v425 + 8))(v426, v421);
  }

  v427 = v777;
  FMIPDevice.batteryLevel.getter();
  v428 = v773;
  *(v773 + v288[21]) = v429;
  v430 = v428 + v288[10];
  *v430 = v424;
  *(v430 + 8) = v422 == 1;
  v431 = v428 + v288[11];
  *v431 = v423;
  *(v431 + 8) = v422 == 1;
  FMIPDevice.batteryStatus.getter();
  *(v428 + v288[23]) = v769;
  *(v428 + v288[25]) = sub_100494A0C(v427, v760);
  *(v428 + v288[24]) = sub_1004A6880(v427);
  *(v428 + v288[26]) = v725;
  *(v428 + v288[27]) = v726;
  *(v428 + v288[29]) = v418 & 1;
  v432 = v739;
  FMIPDevice.state.getter();
  v433 = v740;
  static FMIPDeviceState.isLowPowerModeEnabled.getter();
  v434 = v741;
  LOBYTE(v427) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v435 = v747;
  v747(v433, v434);
  v435(v432, v434);
  *(v428 + v288[31]) = v427 & 1;
  if (FMIPDevice.category.getter() == 0x6863746157 && v436 == 0xE500000000000000)
  {

    v437 = 1;
  }

  else
  {
    v437 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v438 = v713;
  v439 = v729;
  v440 = v711;
  v441 = v776;
  v442 = v756;
  v443 = v437 & 1;
  v444 = v773;
  *(v773 + v288[30]) = v443;
  *(v444 + v288[32]) = (v770)(v767, 1, v441) != 1;
  FMIPDevice.lockMetadata.getter();
  v445 = type metadata accessor for FMIPLockMetadata();
  v446 = *(v445 - 8);
  if ((*(v446 + 48))(v440, 1, v445) == 1)
  {
    sub_100012DF0(v440, &unk_1006C1D20);
    v447 = v758;
    (v442)(v439, 1, 1, v758);
    v448 = v678;
    FMIPDevice.lostMetadata.getter();
    v449 = type metadata accessor for FMIPDeviceLostModeMetadata();
    v450 = *(v449 - 8);
    if ((*(v450 + 48))(v448, 1, v449) == 1)
    {
      sub_100012DF0(v448, &qword_1006B8B78);
      v451 = v684;
      (v442)(v684, 1, 1, v447);
      v452 = v667;
      FMIPDevice.itemGroup.getter();
      v453 = v765;
      if (v751(v452, 1, v765) == 1)
      {
        sub_100012DF0(v452, &unk_1006BB1C0);
        v454 = 1;
        v455 = v773;
        v456 = v781;
      }

      else
      {
        v463 = v659;
        FMIPItemGroup.lostMetadata.getter();
        (*(v746 + 8))(v452, v453);
        v464 = type metadata accessor for FMIPItemLostModeMetadata();
        v465 = *(v464 - 8);
        v466 = (*(v465 + 48))(v463, 1, v464);
        v455 = v773;
        v456 = v781;
        if (v466 == 1)
        {
          sub_100012DF0(v463, &unk_1006C1D10);
          v454 = 1;
        }

        else
        {
          FMIPItemLostModeMetadata.timestamp.getter();
          (*(v465 + 8))(v463, v464);
          v454 = 0;
        }

        v447 = v758;
        v451 = v684;
      }

      (v756)(v438, v454, 1, v447);
      v474 = (v456)(v451, 1, v447);
      v461 = v729;
      if (v474 != 1)
      {
        sub_100012DF0(v451, &unk_1006B0000);
      }

      v462 = (v456)(v461, 1, v447);
    }

    else
    {
      v459 = v684;
      FMIPDeviceLostModeMetadata.timestamp.getter();
      (*(v450 + 8))(v448, v449);
      (v442)(v459, 0, 1, v447);
      v460 = v459;
      v288 = v774;
      (v782)(v438, v460, v447);
      (v442)(v438, 0, 1, v447);
      v455 = v773;
      v461 = v729;
      v462 = (v781)(v729, 1, v447);
    }

    v458 = v776;
    if (v462 != 1)
    {
      sub_100012DF0(v461, &unk_1006B0000);
    }
  }

  else
  {
    FMIPLockMetadata.timestamp.getter();
    (*(v446 + 8))(v440, v445);
    v457 = v758;
    (v442)(v439, 0, 1, v758);
    (v782)(v438, v439, v457);
    (v442)(v438, 0, 1, v457);
    v455 = v773;
    v458 = v776;
  }

  sub_100035318(v438, v455 + v288[33], &unk_1006B0000);
  v475 = v777;
  *(v455 + v288[36]) = FMIPDevice.shouldDisplaySeparatedLocation.getter() & 1;
  v476 = v749;
  v477 = v754;
  v478 = v727;
  if (v768)
  {
    v479 = v677;
    sub_100007204(v772, v677, &qword_1006B07D0);
    v480 = v783;
    if (v761(v479, 1, v783) == 1)
    {
      sub_100012DF0(v479, &qword_1006B07D0);
      v481 = 0;
    }

    else
    {
      v482 = v695;
      FMIPItem.state.getter();
      (*(v766 + 8))(v479, v480);
      v438 = v696;
      static FMIPItemState.isLocating.getter();
      sub_1004A7DD4(&qword_1006C0350, &type metadata accessor for FMIPItemState);
      v483 = v478;
      v484 = v698;
      v485 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v486 = *(v697 + 8);
      v486(v438, v484);
      v487 = v484;
      v478 = v483;
      v475 = v777;
      v486(v482, v487);
      v458 = v776;
      v481 = v485;
    }
  }

  else
  {
    v481 = FMIPDevice.isLocating.getter();
  }

  v488 = v712;
  *(v455 + *(v774 + 112)) = v481 & 1;
  sub_100007204(v767, v488, &unk_1006C0220);
  if ((v770)(v488, 1, v458) == 1)
  {
    sub_100012DF0(v488, &unk_1006C0220);
    v489 = 0.0;
LABEL_206:
    v493 = v704;
    v494 = v703;
    v495 = v705;
    (*(v704 + 104))(v703, enum case for FMIPConfigValue.inaccuracyRadiusThreshold(_:), v705);
    *&v784 = 0x7FFFFFFFFFFFFFFFLL;
    FMIPGlobalConfig<A>(_:fallback:)();
    (*(v493 + 8))(v494, v495);
    *(v455 + *(v774 + 136)) = v786 < v489;
    v496 = FMIPDevice.ownerIdentifier.getter();
    v498 = v497;
    if (v496 == FMIPDefaultOwnerIdentifier.getter() && v498 == v499)
    {

      v500 = 0;
    }

    else
    {
      v501 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v500 = v501 ^ 1;
    }

    v502 = v774;
    *(v455 + *(v774 + 140)) = v500 & 1;
    v503 = v702;
    FMIPDevice.itemGroup.getter();
    v504 = v751(v503, 1, v765) != 1;
    sub_100012DF0(v503, &unk_1006BB1C0);
    *(v455 + *(v502 + 148)) = v504;
    if ((v769 & 0x2000) != 0 && (FMIPDevice.pairingIncomplete.getter() & 1) == 0)
    {
      v508 = 1;
    }

    else
    {
      v505 = v685;
      FMIPDevice.features.getter();
      v506 = v686;
      static FMIPFeatures.isBTFindingSupported.getter();
      sub_1004A7DD4(&qword_1006C1D50, &type metadata accessor for FMIPFeatures);
      v507 = v688;
      v508 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v509 = *(v687 + 8);
      v509(v506, v507);
      v509(v505, v507);
    }

    v438 = v755;

    v510 = v774;
    *(v455 + *(v774 + 156)) = v508 & 1;
    v511 = v731;
    FMIPDevice.deviceConnectedState.getter();
    v512 = v743;
    v513 = v732;
    (v700)(v743, enum case for FMIPDeviceConnectedStateType.attached(_:), v732);
    v514 = static FMIPDeviceConnectedStateType.== infix(_:_:)();
    v515 = v512;
    v516 = v748;
    v748(v515, v513);
    v516(v511, v513);
    *(v455 + v510[40]) = v514 & 1;
    *(v455 + v510[41]) = FMIPDevice.removePairingLockLocally.getter() & 1;
    *(v455 + v510[42]) = FMIPDevice.skipPasswordOnRemove.getter() & 1;
    *(v455 + v510[43]) = FMIPDevice.warnLockOnUnattachedRemove.getter() & 1;
    if (v768)
    {
      v477 = v730;
      if (qword_1006AEBE0 == -1)
      {
        goto LABEL_216;
      }

      goto LABEL_275;
    }

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v527 = type metadata accessor for Logger();
    sub_100005B14(v527, qword_1006D4630);
    v528 = *(v476 + 16);
    v529 = v675;
    v528(v675, v475, v438);
    v530 = v706;
    v528(v706, v475, v438);
    v531 = Logger.logObject.getter();
    v532 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v531, v532))
    {
      v533 = swift_slowAlloc();
      *v533 = 67109376;
      LODWORD(v782) = v532;
      v534 = v739;
      FMIPDevice.state.getter();
      v535 = v740;
      static FMIPDeviceState.isLocating.getter();
      v536 = v741;
      v537 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v783 = v531;
      v538 = v747;
      v747(v535, v536);
      v538(v534, v536);
      v539 = *(v476 + 8);
      v539(v529, v755);
      *(v533 + 4) = v537 & 1;
      *(v533 + 8) = 1024;
      FMIPDevice.state.getter();
      static FMIPDeviceState.isCrowdsourcedLocating.getter();
      v540 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v538(v535, v536);
      v541 = v536;
      v438 = v755;
      v538(v534, v541);
      v531 = v783;
      v539(v706, v438);
      *(v533 + 10) = v540 & 1;
      _os_log_impl(&_mh_execute_header, v531, v782, "FMDeviceDetailViewModel: Locating states - device: %{BOOL}d ba: %{BOOL}d", v533, 0xEu);
    }

    else
    {
      v539 = *(v476 + 8);
      v539(v530, v438);
      v539(v529, v438);
    }

    v542 = v750;
    v543 = v733;
    v544 = v707;
    v545 = v730;
    v546 = v759;

    v539(v777, v438);
    sub_100012DF0(v745, &qword_1006BB1E0);
    sub_100012DF0(v542, &unk_1006B0000);
    sub_100012DF0(v753, &unk_1006BBCE0);
    sub_100012DF0(v744, &unk_1006BBCE0);
    sub_100012DF0(v544, &qword_1006C1D30);
  }

  else
  {
    v490 = FMIPLocation.location.getter();
    v478[1](v488, v458);
    [v490 horizontalAccuracy];
    v489 = v491;
    v492 = v491;

    if ((*&v492 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v489 <= -9.22337204e18)
      {
        __break(1u);
      }

      else if (v489 < 9.22337204e18)
      {
        goto LABEL_206;
      }

      __break(1u);
    }

    __break(1u);
LABEL_275:
    swift_once();
LABEL_216:
    v517 = type metadata accessor for Logger();
    sub_100005B14(v517, qword_1006D4630);
    v518 = v683;
    sub_100007204(v772, v683, &qword_1006B07D0);
    v519 = Logger.logObject.getter();
    v520 = static os_log_type_t.default.getter();
    v521 = os_log_type_enabled(v519, v520);
    v522 = v783;
    if (v521)
    {
      v523 = swift_slowAlloc();
      v524 = swift_slowAlloc();
      *&v786 = v524;
      *v523 = 136315138;
      v525 = v666;
      sub_100007204(v518, v666, &qword_1006B07D0);
      if (v761(v525, 1, v522) == 1)
      {
        sub_100012DF0(v525, &qword_1006B07D0);
        v526 = 2;
      }

      else
      {
        v547 = v695;
        FMIPItem.state.getter();
        (*(v766 + 8))(v525, v522);
        v548 = v696;
        static FMIPItemState.isLocating.getter();
        sub_1004A7DD4(&qword_1006C0350, &type metadata accessor for FMIPItemState);
        v549 = v698;
        v550 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v551 = *(v697 + 8);
        v552 = v548;
        v438 = v755;
        v551(v552, v549);
        v553 = v547;
        v518 = v683;
        v551(v553, v549);
        v477 = v730;
        v526 = v550 & 1;
      }

      LOBYTE(v784) = v526;
      sub_10007EBC0(&qword_1006B14D8);
      v554 = String.init<A>(describing:)();
      v556 = v555;
      sub_100012DF0(v518, &qword_1006B07D0);
      v557 = sub_100005B4C(v554, v556, &v786);

      *(v523 + 4) = v557;
      _os_log_impl(&_mh_execute_header, v519, v520, "FMDeviceDetailViewModel: Locating states - device: %s", v523, 0xCu);
      sub_100006060(v524);

      (*(v749 + 8))(v777, v438);
    }

    else
    {

      (*(v749 + 8))(v777, v438);
      sub_100012DF0(v518, &qword_1006B07D0);
    }

    sub_100012DF0(v745, &qword_1006BB1E0);
    sub_100012DF0(v750, &unk_1006B0000);
    sub_100012DF0(v753, &unk_1006BBCE0);
    sub_100012DF0(v744, &unk_1006BBCE0);
    sub_100012DF0(v707, &qword_1006C1D30);
    v543 = v733;
  }

  sub_100012DF0(v767, &unk_1006C0220);

  sub_100012DF0(v543, &qword_1006C39A0);
  return sub_100012DF0(v772, &qword_1006B07D0);
}

char *sub_1004A024C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v225 = a3;
  v233 = type metadata accessor for FMIPPartType();
  v214 = *(v233 - 1);
  v5 = __chkstk_darwin(v233);
  v228 = (&v200 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __chkstk_darwin(v5);
  v232 = &v200 - v8;
  v9 = __chkstk_darwin(v7);
  v215 = &v200 - v10;
  v11 = __chkstk_darwin(v9);
  v221 = &v200 - v12;
  v13 = __chkstk_darwin(v11);
  v217 = &v200 - v14;
  __chkstk_darwin(v13);
  v226 = &v200 - v15;
  v16 = sub_10007EBC0(&unk_1006BB1C0);
  v17 = __chkstk_darwin(v16 - 8);
  v210 = &v200 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v200 - v20;
  v22 = __chkstk_darwin(v19);
  v205 = &v200 - v23;
  v24 = __chkstk_darwin(v22);
  v219 = &v200 - v25;
  v26 = __chkstk_darwin(v24);
  v208 = &v200 - v27;
  v28 = __chkstk_darwin(v26);
  v201 = &v200 - v29;
  __chkstk_darwin(v28);
  v207 = (&v200 - v30);
  v31 = type metadata accessor for FMIPItem();
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v231 = &v200 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v216 = (&v200 - v36);
  v37 = __chkstk_darwin(v35);
  v39 = &v200 - v38;
  v40 = __chkstk_darwin(v37);
  v220 = &v200 - v41;
  v42 = __chkstk_darwin(v40);
  v227 = &v200 - v43;
  v44 = __chkstk_darwin(v42);
  v204 = (&v200 - v45);
  v46 = __chkstk_darwin(v44);
  v209 = &v200 - v47;
  __chkstk_darwin(v46);
  v213 = &v200 - v48;
  v49 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v49);
  v51 = &v200 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10007EBC0(&qword_1006B07D0);
  v53 = __chkstk_darwin(v52 - 8);
  v222 = &v200 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __chkstk_darwin(v53);
  v206 = &v200 - v56;
  v57 = __chkstk_darwin(v55);
  v211 = &v200 - v58;
  v59 = __chkstk_darwin(v57);
  v212 = &v200 - v60;
  v61 = __chkstk_darwin(v59);
  v202 = &v200 - v62;
  v63 = __chkstk_darwin(v61);
  v203 = &v200 - v64;
  v65 = __chkstk_darwin(v63);
  v67 = &v200 - v66;
  __chkstk_darwin(v65);
  v69 = &v200 - v68;
  v70 = v32[7];
  v218 = a1;
  v223 = v32 + 7;
  v224 = v70;
  (v70)(a1, 1, 1, v31);
  v71 = FMIPDevice.shouldDisplaySeparatedLocation.getter();
  v229 = v31;
  v230 = v32;
  if (v71)
  {
    v231 = v39;
    v232 = v69;
    v72 = *(v225 + 56);
    v73 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100062074(v72 + v73, v51);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_10005D4E4(v51);
      return 0;
    }

    v91 = sub_10007EBC0(&qword_1006BEEE0);
    v92 = v232;
    sub_100035318(&v51[*(v91 + 48)], v232, &qword_1006B07D0);
    v93 = type metadata accessor for FMIPDevice();
    (*(*(v93 - 8) + 8))(v51, v93);
    sub_100007204(v92, v67, &qword_1006B07D0);
    v79 = (v32 + 6);
    v49 = v32[6];
    if ((v49)(v67, 1, v31) == 1)
    {
      sub_100012DF0(v67, &qword_1006B07D0);
      v94 = v208;
      FMIPDevice.itemGroup.getter();
      v95 = type metadata accessor for FMIPItemGroup();
      v90 = *(v95 - 1);
      v96 = *(v90 + 48);
      v209 = (v90 + 48);
      v204 = v96;
      v97 = v96(v94, 1, v95);
      v213 = v95;
      v203 = v90;
      if (v97 == 1)
      {
        sub_100012DF0(v94, &unk_1006BB1C0);
        v98 = v211;
        (v224)(v211, 1, 1, v31);
        v99 = v232;
        v100 = v219;
LABEL_64:
        v165 = v99;
        FMIPDevice.itemGroup.getter();
        v166 = v100;
        v167 = v100;
        v168 = v213;
        if (v204(v166, 1, v213) == 1)
        {
          sub_100012DF0(v167, &unk_1006BB1C0);
          v169 = 1;
          v99 = v165;
          v163 = v224;
LABEL_78:
          v179 = v212;
          (v163)(v212, v169, 1, v31);
          if ((v49)(v98, 1, v31) != 1)
          {
            sub_100012DF0(v98, &qword_1006B07D0);
          }

LABEL_80:
          v183 = v206;
          sub_100007204(v179, v206, &qword_1006B07D0);
          if ((v49)(v183, 1, v31) == 1)
          {
            sub_100012DF0(v179, &qword_1006B07D0);
            sub_100012DF0(v99, &qword_1006B07D0);
            v111 = v183;
            goto LABEL_23;
          }

          v184 = v99;
          v185 = v218;
          sub_100012DF0(v218, &qword_1006B07D0);
          v186 = v231;
          (v32[4])(v231, v183, v31);
          (v32[2])(v185, v186, v31);
          (v163)(v185, 0, 1, v31);
          v187 = v205;
          FMIPDevice.itemGroup.getter();
          v188 = v213;
          if (v204(v187, 1, v213) == 1)
          {
            sub_100012DF0(v212, &qword_1006B07D0);
            sub_100012DF0(v184, &qword_1006B07D0);
            sub_100012DF0(v187, &unk_1006BB1C0);
            v95 = 0;
LABEL_91:
            v32[1](v231, v31);
            return v95;
          }

          v189 = FMIPItemGroup.groupedItems.getter();
          v190 = (*(v203 + 8))(v187, v188);
          __chkstk_darwin(v190);
          *(&v200 - 2) = v186;
          v191 = sub_100110710(sub_1004A7D68, (&v200 - 4), v189);

          if (v191)
          {
            v192 = *(v191 + 16);
            v31 = v229;
            if (v192)
            {
              v95 = sub_10008C8B4(*(v191 + 16), 0);
              v193 = sub_1004A2EF0(&v238, &v95[(*(v32 + 80) + 32) & ~*(v32 + 80)], v192, v191, &type metadata accessor for FMIPItem);
              sub_1002204D4();
              if (v193 != v192)
              {
                __break(1u);
                goto LABEL_88;
              }
            }

            else
            {

              v95 = _swiftEmptyArrayStorage;
            }

            sub_100012DF0(v212, &qword_1006B07D0);
            sub_100012DF0(v232, &qword_1006B07D0);
            goto LABEL_91;
          }

LABEL_88:
          sub_100012DF0(v212, &qword_1006B07D0);
          sub_100012DF0(v232, &qword_1006B07D0);
          v95 = 0;
          v31 = v229;
          goto LABEL_91;
        }

        v207 = v49;
        v210 = v79;
        v200 = a2;
        v170 = FMIPItemGroup.items.getter();
        (*(v203 + 8))(v167, v168);
        v226 = *(v170 + 16);
        if (!v226)
        {
LABEL_73:

          v169 = 1;
LABEL_77:
          v99 = v232;
          v163 = v224;
          v49 = v207;
          v98 = v211;
          goto LABEL_78;
        }

        v171 = 0;
        v228 = (v32 + 2);
        LODWORD(v227) = enum case for FMIPPartType.leftBud(_:);
        v172 = (v214 + 104);
        v173 = (v214 + 8);
        v225 = (v32 + 1);
        while (v171 < *(v170 + 16))
        {
          (v32[2])(v220, v170 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + v32[9] * v171, v31);
          FMIPItem.partType.getter();
          v174 = v215;
          (*v172)(v215, v227, v233);
          sub_1004A7DD4(&qword_1006BEF50, &type metadata accessor for FMIPPartType);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          if (v238 == v234 && v239 == v235)
          {
            v180 = *v173;
            v181 = v174;
            v182 = v233;
            (*v173)(v181, v233);
            v180(v221, v182);

LABEL_76:

            v32 = v230;
            (*(v230 + 32))(v212, v220, v31);
            v169 = 0;
            goto LABEL_77;
          }

          v175 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v176 = *v173;
          v177 = v174;
          v178 = v233;
          (*v173)(v177, v233);
          v176(v221, v178);
          v31 = v229;

          if (v175)
          {
            goto LABEL_76;
          }

          ++v171;
          (*v225)(v220, v31);
          v32 = v230;
          if (v226 == v171)
          {
            goto LABEL_73;
          }
        }

        goto LABEL_103;
      }

      goto LABEL_30;
    }

    v101 = v213;
    v233 = v32[4];
    (v233)(v213, v67, v31);
    v102 = v207;
    FMIPDevice.itemGroup.getter();
    v103 = type metadata accessor for FMIPItemGroup();
    v104 = *(v103 - 8);
    v228 = *(v104 + 48);
    if (v228(v102, 1, v103) == 1)
    {
      sub_100012DF0(v102, &unk_1006BB1C0);
      goto LABEL_49;
    }

    v227 = (v104 + 48);
    v200 = a2;
    v127 = FMIPItemGroup.groupedItems.getter();
    v129 = *(v104 + 8);
    v128 = (v104 + 8);
    v226 = v129;
    v130 = (v129)(v102, v103);
    __chkstk_darwin(v130);
    *(&v200 - 2) = v101;
    v131 = sub_100110710(sub_1004A7D68, (&v200 - 4), v127);

    if (!v131)
    {
LABEL_49:
      if (qword_1006AEBE0 == -1)
      {
LABEL_50:
        v145 = type metadata accessor for Logger();
        sub_100005B14(v145, qword_1006D4630);
        v146 = Logger.logObject.getter();
        v147 = static os_log_type_t.error.getter();
        v148 = os_log_type_enabled(v146, v147);
        v142 = v229;
        v149 = v230;
        if (v148)
        {
          v150 = swift_slowAlloc();
          *v150 = 0;
          _os_log_impl(&_mh_execute_header, v146, v147, "FMDeviceDetailViewModel: We shouldn't be here. No group for this item", v150, 2u);
        }

        sub_100012DF0(v232, &qword_1006B07D0);
        v95 = 0;
        goto LABEL_98;
      }

LABEL_104:
      swift_once();
      goto LABEL_50;
    }

    v221 = 0;
    v222 = v128;
    v225 = v103;
    v207 = v49;
    v210 = v79;
    v132 = v131 + 56;
    v133 = 1 << *(v131 + 32);
    v134 = -1;
    if (v133 < 64)
    {
      v134 = ~(-1 << v133);
    }

    v135 = v134 & *(v131 + 56);
    v136 = (v133 + 63) >> 6;
    v231 = (v230 + 16);
    v137 = (v230 + 8);

    v138 = 0;
    v139 = v204;
    if (v135)
    {
      while (1)
      {
        v140 = v138;
LABEL_46:
        v141 = v131;
        v142 = v229;
        v143 = *(v131 + 48) + *(v230 + 72) * (__clz(__rbit64(v135)) | (v140 << 6));
        v144 = v209;
        (*(v230 + 16))(v209, v143, v229);
        (v233)(v139, v144, v142);
        if (FMIPItem.primaryItemPart.getter())
        {
          break;
        }

        v135 &= v135 - 1;
        (*v137)(v139, v142);
        v138 = v140;
        v131 = v141;
        if (!v135)
        {
          goto LABEL_43;
        }
      }

      v194 = v202;
      v195 = v233;
      (v233)(v202, v139, v142);
      v196 = v224;
      (v224)(v194, 0, 1, v142);
      v156 = v218;
      sub_100012DF0(v218, &qword_1006B07D0);
      v157 = v203;
      v197 = v194;
      v131 = v141;
      (v195)(v203, v197, v142);
      (v196)(v157, 0, 1, v142);
      v149 = v230;
LABEL_93:
      sub_100035318(v157, v156, &qword_1006B07D0);
      v198 = *(v131 + 16);
      if (v198)
      {
        v95 = sub_10008C8B4(*(v131 + 16), 0);
        v199 = sub_1004A2EF0(&v238, &v95[(*(v149 + 80) + 32) & ~*(v149 + 80)], v198, v131, &type metadata accessor for FMIPItem);
        sub_1002204D4();
        if (v199 == v198)
        {
LABEL_97:
          sub_100012DF0(v232, &qword_1006B07D0);
LABEL_98:
          (*(v149 + 8))(v213, v142);
          return v95;
        }

        __break(1u);
      }

      v95 = _swiftEmptyArrayStorage;
      goto LABEL_97;
    }

LABEL_43:
    while (1)
    {
      v140 = v138 + 1;
      if (__OFADD__(v138, 1))
      {
        break;
      }

      if (v140 >= v136)
      {

        v151 = v202;
        v152 = v229;
        v153 = v224;
        (v224)(v202, 1, 1, v229);
        v154 = v201;
        FMIPDevice.itemGroup.getter();
        v155 = v225;
        if (v228(v154, 1, v225) == 1)
        {
          v156 = v218;
          sub_100012DF0(v218, &qword_1006B07D0);
          sub_100012DF0(v154, &unk_1006BB1C0);
          v157 = v203;
          (v153)(v203, 1, 1, v152);
        }

        else
        {
          v158 = FMIPItemGroup.items.getter();
          v159 = (v226)(v154, v155);
          __chkstk_darwin(v159);
          *(&v200 - 2) = v213;
          v157 = v203;
          sub_10011FB64(sub_1003E0788, v158, v203);

          v156 = v218;
          sub_100012DF0(v218, &qword_1006B07D0);
        }

        v142 = v152;
        v149 = v230;
        if (v207(v151, 1, v142) != 1)
        {
          sub_100012DF0(v151, &qword_1006B07D0);
        }

        goto LABEL_93;
      }

      v135 = *(v132 + 8 * v140);
      ++v138;
      if (v135)
      {
        goto LABEL_46;
      }
    }

LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  FMIPDevice.itemGroup.getter();
  v75 = type metadata accessor for FMIPItemGroup();
  v76 = *(v75 - 8);
  v77 = *(v76 + 48);
  if (v77(v21, 1, v75) == 1)
  {
    sub_100012DF0(v21, &unk_1006BB1C0);
    v78 = v222;
    (v224)(v222, 1, 1, v31);
    goto LABEL_22;
  }

  v219 = v77;
  v220 = (v76 + 48);
  v200 = a2;
  v79 = FMIPItemGroup.items.getter();
  v80 = *(v76 + 8);
  v221 = v75;
  v217 = (v76 + 8);
  v215 = v80;
  (v80)(v21, v75);
  v225 = *(v79 + 16);
  if (v225)
  {
    v81 = 0;
    v227 = (v230 + 16);
    LODWORD(v226) = enum case for FMIPPartType.case(_:);
    v82 = (v214 + 104);
    v83 = (v214 + 8);
    v84 = (v230 + 8);
    while (v81 < *(v79 + 16))
    {
      (*(v230 + 16))(v231, v79 + ((*(v230 + 80) + 32) & ~*(v230 + 80)) + *(v230 + 72) * v81, v31);
      FMIPItem.partType.getter();
      v85 = v228;
      v49 = v233;
      (*v82)(v228, v226, v233);
      sub_1004A7DD4(&qword_1006BEF50, &type metadata accessor for FMIPPartType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v238 == v236 && v239 == v237)
      {
        v105 = *v83;
        v106 = v85;
        v107 = v233;
        (*v83)(v106, v233);
        v105(v232, v107);

        v31 = v229;
LABEL_20:

        v90 = v230;
        v78 = v222;
        (*(v230 + 32))(v222, v231, v31);
        v89 = 0;
        v32 = v216;
        goto LABEL_21;
      }

      v49 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v86 = *v83;
      v87 = v85;
      v88 = v233;
      (*v83)(v87, v233);
      v86(v232, v88);
      v31 = v229;

      if (v49)
      {
        goto LABEL_20;
      }

      ++v81;
      (*v84)(v231, v31);
      if (v225 == v81)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_101;
  }

LABEL_13:

  v89 = 1;
  v90 = v230;
  v32 = v216;
  v78 = v222;
LABEL_21:
  v108 = v224;
  (v224)(v78, v89, 1, v31);
  v109 = (*(v90 + 48))(v78, 1, v31);
  v110 = v218;
  if (v109 == 1)
  {
LABEL_22:
    v111 = v78;
LABEL_23:
    sub_100012DF0(v111, &qword_1006B07D0);
    return 0;
  }

  sub_100012DF0(v218, &qword_1006B07D0);
  (*(v90 + 32))(v32, v78, v31);
  (*(v90 + 16))(v110, v32, v31);
  (v108)(v110, 0, 1, v31);
  v112 = v210;
  FMIPDevice.itemGroup.getter();
  v113 = v221;
  if ((v219)(v112, 1, v221) == 1)
  {
    sub_100012DF0(v112, &unk_1006BB1C0);
    v95 = 0;
  }

  else
  {
    v114 = FMIPItemGroup.groupedItems.getter();
    v115 = (v215)(v112, v113);
    __chkstk_darwin(v115);
    *(&v200 - 2) = v32;
    v116 = sub_100110710(sub_1004A7D68, (&v200 - 4), v114);

    if (v116)
    {
      v94 = *(v116 + 16);
      v31 = v229;
      if (v94)
      {
        v95 = sub_10008C8B4(*(v116 + 16), 0);
        a2 = sub_1004A2EF0(&v238, &v95[(*(v90 + 80) + 32) & ~*(v90 + 80)], v94, v116, &type metadata accessor for FMIPItem);
        sub_1002204D4();
        if (a2 != v94)
        {
          __break(1u);
LABEL_30:
          v207 = v49;
          v210 = v79;
          v200 = a2;
          v117 = FMIPItemGroup.items.getter();
          (*(v90 + 8))(v94, v95);
          v100 = v219;
          v222 = *(v117 + 16);
          if (!v222)
          {
LABEL_37:

            v126 = 1;
            v98 = v211;
LABEL_63:
            v163 = v224;
            (v224)(v98, v126, 1, v31);
            v79 = v210;
            v49 = v207;
            v164 = v207(v98, 1, v31);
            a2 = v200;
            v99 = v232;
            if (v164 != 1)
            {
              v179 = v212;
              (v32[4])(v212, v98, v31);
              (v163)(v179, 0, 1, v31);
              goto LABEL_80;
            }

            goto LABEL_64;
          }

          v118 = 0;
          v228 = (v32 + 2);
          LODWORD(v225) = enum case for FMIPPartType.case(_:);
          v119 = (v214 + 104);
          v120 = (v214 + 8);
          v216 = v32 + 1;
          while (v118 < *(v117 + 16))
          {
            (v32[2])(v227, v117 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + v32[9] * v118, v31);
            FMIPItem.partType.getter();
            v121 = v217;
            (*v119)(v217, v225, v233);
            sub_1004A7DD4(&qword_1006BEF50, &type metadata accessor for FMIPPartType);
            dispatch thunk of RawRepresentable.rawValue.getter();
            dispatch thunk of RawRepresentable.rawValue.getter();
            if (v238 == v234 && v239 == v235)
            {
              v160 = *v120;
              v161 = v121;
              v162 = v233;
              (*v120)(v161, v233);
              v160(v226, v162);

LABEL_62:

              v32 = v230;
              v98 = v211;
              (*(v230 + 32))(v211, v227, v31);
              v126 = 0;
              v100 = v219;
              goto LABEL_63;
            }

            v122 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v123 = *v120;
            v124 = v121;
            v125 = v233;
            (*v120)(v124, v233);
            v123(v226, v125);
            v31 = v229;

            if (v122)
            {
              goto LABEL_62;
            }

            ++v118;
            (*v216)(v227, v31);
            v32 = v230;
            v100 = v219;
            if (v222 == v118)
            {
              goto LABEL_37;
            }
          }

LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }
      }

      else
      {

        v95 = _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v95 = 0;
      v31 = v229;
    }
  }

  (*(v90 + 8))(v32, v31);
  return v95;
}

uint64_t sub_1004A218C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 80);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

Swift::Int sub_1004A2200()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1004A224C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1004A22D8(uint64_t a1)
{
  result = sub_1004A7DD4(&qword_1006C1D08, type metadata accessor for FMDeviceDetailViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1004A2348(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = sub_10007EBC0(&qword_1006AF940);
  v42 = *(v45 - 8);
  v8 = __chkstk_darwin(v45);
  v44 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v43 = &v39 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  v46 = a2;
  if (!a2)
  {
LABEL_18:
    v22 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v22;
    a1[4] = v15;
    return a3;
  }

  if (!a3)
  {
    v22 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v39 = v13;
    v40 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v18 = 1;
    v41 = a3;
    while (v15)
    {
LABEL_14:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v16;
      v23 = v21 | (v16 << 6);
      v24 = *(a4 + 56);
      v25 = a4;
      v26 = (*(a4 + 48) + 16 * v23);
      v27 = *v26;
      v28 = v26[1];
      v29 = type metadata accessor for FMIPItemPairingState();
      v30 = *(v29 - 8);
      v31 = v24 + *(v30 + 72) * v23;
      v32 = v44;
      (*(v30 + 16))(&v44[*(v45 + 48)], v31, v29);
      *v32 = v27;
      v32[1] = v28;
      v33 = v32;
      v34 = v43;
      sub_100035318(v33, v43, &qword_1006AF940);
      v35 = v34;
      v36 = v46;
      sub_100035318(v35, v46, &qword_1006AF940);
      a3 = v41;
      if (v18 == v41)
      {

        a1 = v40;
        a4 = v25;
        goto LABEL_23;
      }

      a1 = (v36 + *(v42 + 72));
      v46 = a1;

      result = v18;
      v37 = __OFADD__(v18++, 1);
      a4 = v25;
      v16 = v22;
      if (v37)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v16 = v20;
        goto LABEL_14;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v38 = v16 + 1;
    }

    else
    {
      v38 = v17;
    }

    v22 = v38 - 1;
    a3 = result;
    a1 = v40;
LABEL_23:
    v13 = v39;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1004A2634(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + v17);
      *(v11 + 8) = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 16;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1004A278C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for UUID();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1004A2A30(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v9 = 0;
    a3 = 0;
LABEL_24:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v30 = result;
    v31 = a3;
    result = 0;
    v9 = 0;
    v29 = -1 << *(a4 + 32);
    v10 = (63 - v5) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_14:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = v14 | (v9 << 6);
      v16 = a4;
      v17 = (*(a4 + 48) + 16 * v15);
      v19 = *v17;
      v18 = v17[1];
      v20 = *(a4 + 56) + 48 * v15;
      v21 = *v20;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      v24 = *(v20 + 24);
      v25 = *(v20 + 32);
      v26 = *(v20 + 40);
      *v8 = v19;
      *(v8 + 8) = v18;
      *(v8 + 16) = v21;
      *(v8 + 24) = v22;
      *(v8 + 32) = v23;
      *(v8 + 40) = v24;
      *(v8 + 48) = v25;
      *(v8 + 56) = v26;
      if (v11 == v31)
      {

        a4 = v16;
        v5 = v29;
        result = v30;
        a3 = v31;
        goto LABEL_24;
      }

      v8 += 64;

      result = v11;
      v27 = __OFADD__(v11++, 1);
      a4 = v16;
      if (v27)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v10 <= v9 + 1)
    {
      v28 = v9 + 1;
    }

    else
    {
      v28 = v10;
    }

    v9 = v28 - 1;
    a3 = result;
    v5 = v29;
    result = v30;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1004A2BFC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1004A2D50(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1004A2EF0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v41 = a5(0);
  v43 = *(v41 - 8);
  v9 = (__chkstk_darwin)();
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1004A3198(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1004A32EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v92 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&unk_1006B0000);
  __chkstk_darwin(v7 - 8);
  v90 = &v85 - v8;
  v89 = sub_10007EBC0(&unk_1006B00E0);
  __chkstk_darwin(v89);
  v91 = &v85 - v9;
  v10 = type metadata accessor for FMIPItem();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v14 - 8);
  v16 = &v85 - v15;
  v17 = sub_10007EBC0(&qword_1006B7A90);
  __chkstk_darwin(v17);
  v19 = &v85 - v18;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  v20 = *(a1 + 24);
  v21 = *(a2 + 24);
  if (v20)
  {
    if (!v21 || (*(a1 + 16) != *(a2 + 16) || v20 != v21) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v21)
  {
    goto LABEL_17;
  }

  v22 = *(a1 + 32);
  v23 = *(a2 + 32);
  if (v22)
  {
    if (!v23 || (sub_100244968(v22, v23) & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_16:
    if (*(a1 + 40) != *(a2 + 40))
    {
      goto LABEL_17;
    }

    v87 = v5;
    v88 = v4;
    v26 = *(a1 + 48);
    v27 = *(a2 + 48);
    if (v26)
    {
      if (!v27)
      {
        goto LABEL_17;
      }

      v28 = sub_1002449F8(v26, v27);

      if ((v28 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (v27)
    {
      goto LABEL_17;
    }

    v86 = type metadata accessor for FMDeviceDetailViewModel();
    v29 = v86[9];
    v30 = *(v17 + 48);
    sub_100007204(a1 + v29, v19, &qword_1006B07D0);
    sub_100007204(a2 + v29, &v19[v30], &qword_1006B07D0);
    v31 = *(v11 + 48);
    if (v31(v19, 1, v10) == 1)
    {
      if (v31(&v19[v30], 1, v10) == 1)
      {
        sub_100012DF0(v19, &qword_1006B07D0);
LABEL_32:
        v36 = v86;
        v37 = v86[10];
        v38 = (a1 + v37);
        v39 = *(a1 + v37 + 8);
        v40 = (a2 + v37);
        v24 = *(a2 + v37 + 8);
        if (v39)
        {
          if (!v24)
          {
            return v24 & 1;
          }
        }

        else
        {
          if (*v38 != *v40)
          {
            LOBYTE(v24) = 1;
          }

          if (v24)
          {
            goto LABEL_17;
          }
        }

        v41 = v86[11];
        v42 = (a1 + v41);
        v43 = *(a1 + v41 + 8);
        v44 = (a2 + v41);
        v24 = *(a2 + v41 + 8);
        if (v43)
        {
          if (!v24)
          {
            return v24 & 1;
          }
        }

        else
        {
          if (*v42 != *v44)
          {
            LOBYTE(v24) = 1;
          }

          if (v24)
          {
            goto LABEL_17;
          }
        }

        v45 = v86[12];
        v46 = *(a1 + v45);
        v47 = *(a2 + v45);
        if (v46)
        {
          if (!v47)
          {
            goto LABEL_17;
          }

          v48 = sub_100244A40(v46, v47);

          if ((v48 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else if (v47)
        {
          goto LABEL_17;
        }

        if (*(a1 + v36[13]) != *(a2 + v36[13]))
        {
          goto LABEL_17;
        }

        v49 = v36[14];
        v50 = (a1 + v49);
        v51 = *(a1 + v49 + 8);
        v52 = (a2 + v49);
        v53 = v52[1];
        if (v51)
        {
          if (!v53 || (*v50 != *v52 || v51 != v53) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else if (v53)
        {
          goto LABEL_17;
        }

        if (*(a1 + v36[15]) != *(a2 + v36[15]))
        {
          goto LABEL_17;
        }

        v54 = v36[16];
        v55 = (a1 + v54);
        v56 = *(a1 + v54 + 8);
        v57 = (a2 + v54);
        v58 = v57[1];
        if (v56)
        {
          if (!v58 || (*v55 != *v57 || v56 != v58) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else if (v58)
        {
          goto LABEL_17;
        }

        v59 = v86[17];
        v60 = *(a1 + v59);
        v61 = *(a1 + v59 + 8);
        v62 = (a2 + v59);
        if ((v60 != *v62 || v61 != v62[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_17;
        }

        v63 = v86[18];
        v64 = *(a1 + v63);
        v65 = *(a1 + v63 + 8);
        v66 = (a2 + v63);
        if ((v64 != *v66 || v65 != v66[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_17;
        }

        v67 = v86[19];
        v68 = *(a1 + v67);
        v69 = *(a1 + v67 + 8);
        v70 = (a2 + v67);
        if ((v68 != *v70 || v69 != v70[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_17;
        }

        if ((static Date.== infix(_:_:)() & 1) == 0 || *(a1 + v86[21]) != *(a2 + v86[21]))
        {
          goto LABEL_17;
        }

        type metadata accessor for FMIPBatteryStatus();
        sub_1004A7DD4(&unk_1006C1DB0, &type metadata accessor for FMIPBatteryStatus);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v95 == v93 && v96 == v94)
        {
        }

        else
        {
          v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v71 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        if (*(a1 + v86[23]) != *(a2 + v86[23]))
        {
          goto LABEL_17;
        }

        if (*(a1 + v86[24]) != *(a2 + v86[24]))
        {
          goto LABEL_17;
        }

        if (*(a1 + v86[25]) != *(a2 + v86[25]))
        {
          goto LABEL_17;
        }

        sub_10000905C(0, &qword_1006B4980);
        if ((static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0 || *(a1 + v86[28]) != *(a2 + v86[28]) || *(a1 + v86[29]) != *(a2 + v86[29]) || *(a1 + v86[30]) != *(a2 + v86[30]) || *(a1 + v86[31]) != *(a2 + v86[31]) || *(a1 + v86[32]) != *(a2 + v86[32]))
        {
          goto LABEL_17;
        }

        v72 = v86[33];
        v73 = *(v89 + 48);
        v74 = v91;
        sub_100007204(a1 + v72, v91, &unk_1006B0000);
        sub_100007204(a2 + v72, v74 + v73, &unk_1006B0000);
        v75 = *(v87 + 48);
        if (v75(v74, 1, v88) == 1)
        {
          if (v75(v91 + v73, 1, v88) == 1)
          {
            sub_100012DF0(v91, &unk_1006B0000);
            goto LABEL_97;
          }
        }

        else
        {
          v76 = v91;
          sub_100007204(v91, v90, &unk_1006B0000);
          if (v75(v76 + v73, 1, v88) != 1)
          {
            v77 = v87;
            v79 = v91;
            v78 = v92;
            v80 = v91 + v73;
            v81 = v88;
            (*(v87 + 32))(v92, v80, v88);
            sub_1004A7DD4(&qword_1006C1DC0, &type metadata accessor for Date);
            v82 = v90;
            v83 = dispatch thunk of static Equatable.== infix(_:_:)();
            v84 = *(v77 + 8);
            v84(v78, v81);
            v84(v82, v81);
            sub_100012DF0(v79, &unk_1006B0000);
            if ((v83 & 1) == 0)
            {
              goto LABEL_17;
            }

LABEL_97:
            if (*(a1 + v86[34]) == *(a2 + v86[34]) && *(a1 + v86[35]) == *(a2 + v86[35]) && *(a1 + v86[36]) == *(a2 + v86[36]) && *(a1 + v86[37]) == *(a2 + v86[37]) && (sub_100244C80(*(a1 + v86[38]), *(a2 + v86[38])) & 1) != 0 && *(a1 + v86[39]) == *(a2 + v86[39]) && *(a1 + v86[40]) == *(a2 + v86[40]) && *(a1 + v86[41]) == *(a2 + v86[41]) && *(a1 + v86[42]) == *(a2 + v86[42]))
            {
              LOBYTE(v24) = *(a1 + v86[43]) ^ *(a2 + v86[43]) ^ 1;
              return v24 & 1;
            }

            goto LABEL_17;
          }

          (*(v87 + 8))(v90, v88);
        }

        v32 = &unk_1006B00E0;
        v33 = v91;
LABEL_30:
        sub_100012DF0(v33, v32);
        goto LABEL_17;
      }
    }

    else
    {
      sub_100007204(v19, v16, &qword_1006B07D0);
      if (v31(&v19[v30], 1, v10) != 1)
      {
        (*(v11 + 32))(v13, &v19[v30], v10);
        sub_1004A7DD4(&qword_1006B7AA8, &type metadata accessor for FMIPItem);
        v34 = dispatch thunk of static Equatable.== infix(_:_:)();
        v35 = *(v11 + 8);
        v35(v13, v10);
        v35(v16, v10);
        sub_100012DF0(v19, &qword_1006B07D0);
        if ((v34 & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_32;
      }

      (*(v11 + 8))(v16, v10);
    }

    v32 = &qword_1006B7A90;
    v33 = v19;
    goto LABEL_30;
  }

  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_17:
  LOBYTE(v24) = 0;
  return v24 & 1;
}

uint64_t sub_1004A3F00(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v35 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v36 = &v35 - v6;
  v7 = sub_10007EBC0(&unk_1006C0220);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v35 - v11;
  v13 = sub_10007EBC0(&unk_1006B0000);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v35 - v17;
  v38 = a1;
  sub_100007204(a1, v12, &unk_1006C0220);
  v19 = type metadata accessor for FMIPLocation();
  v20 = *(v19 - 8);
  v37 = *(v20 + 48);
  if (v37(v12, 1, v19) == 1)
  {
    sub_100012DF0(v12, &unk_1006C0220);
    v21 = 1;
  }

  else
  {
    v22 = FMIPLocation.location.getter();
    (*(v20 + 8))(v12, v19);
    v23 = [v22 timestamp];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = 0;
  }

  (*(v3 + 56))(v18, v21, 1, v2);
  sub_100007204(v18, v16, &unk_1006B0000);
  if ((*(v3 + 48))(v16, 1, v2) == 1)
  {
    sub_100012DF0(v16, &unk_1006B0000);
  }

  else
  {
    v24 = v36;
    (*(v3 + 32))(v36, v16, v2);
    v25 = v35;
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v27 = v26;
    v28 = *(v3 + 8);
    v28(v25, v2);
    Date.timeIntervalSince1970.getter();
    v30 = v27 - v29;
    FMIPOldLocationAgeThresholdInSeconds.getter();
    v32 = v31;
    v28(v24, v2);
    if (v32 < v30)
    {
      sub_100012DF0(v18, &unk_1006B0000);
      v33 = 1;
      return v33 & 1;
    }
  }

  sub_100007204(v38, v10, &unk_1006C0220);
  if (v37(v10, 1, v19) == 1)
  {
    sub_100012DF0(v18, &unk_1006B0000);
    sub_100012DF0(v10, &unk_1006C0220);
    v33 = 0;
  }

  else
  {
    v33 = FMIPLocation.isOld.getter();
    sub_100012DF0(v18, &unk_1006B0000);
    (*(v20 + 8))(v10, v19);
  }

  return v33 & 1;
}

uint64_t sub_1004A43A0(uint64_t a1, void *a2, int a3)
{
  v181 = a3;
  v213 = a2;
  v194 = type metadata accessor for FMIPDeviceStatus();
  v193 = *(v194 - 8);
  v4 = __chkstk_darwin(v194);
  v192 = &v180 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v191 = &v180 - v6;
  v182 = type metadata accessor for FMIPDeviceConnectedStateType();
  v205 = *(v182 - 8);
  v7 = __chkstk_darwin(v182);
  v222 = &v180 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v204 = &v180 - v9;
  v203 = type metadata accessor for FMIPItem();
  v221 = *(v203 - 8);
  v10 = __chkstk_darwin(v203);
  v217 = &v180 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v212 = &v180 - v13;
  v14 = __chkstk_darwin(v12);
  v215 = &v180 - v15;
  __chkstk_darwin(v14);
  v200 = &v180 - v16;
  v197 = type metadata accessor for FMIPFeatures();
  v195 = *(v197 - 8);
  v17 = __chkstk_darwin(v197);
  v201 = &v180 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v202 = &v180 - v19;
  v20 = sub_10007EBC0(&unk_1006B0000);
  __chkstk_darwin(v20 - 8);
  v220 = &v180 - v21;
  v187 = type metadata accessor for FMIPActionStatus();
  v186 = *(v187 - 1);
  v22 = __chkstk_darwin(v187);
  v185 = &v180 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v184 = &v180 - v24;
  v25 = sub_10007EBC0(&qword_1006B8678);
  __chkstk_darwin(v25 - 8);
  v210 = &v180 - v26;
  v219 = type metadata accessor for FMIPEraseMetadata();
  v211 = *(v219 - 8);
  __chkstk_darwin(v219);
  v183 = &v180 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10007EBC0(&unk_1006C0220);
  __chkstk_darwin(v28 - 8);
  v209 = &v180 - v29;
  v30 = type metadata accessor for FMIPDeviceState();
  v207 = *(v30 - 8);
  v208 = v30;
  v31 = __chkstk_darwin(v30);
  v33 = &v180 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v180 - v34;
  v36 = sub_10007EBC0(&unk_1006BB1C0);
  v37 = __chkstk_darwin(v36 - 8);
  v196 = (&v180 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v37);
  v40 = &v180 - v39;
  v41 = sub_10007EBC0(&qword_1006C1D88);
  __chkstk_darwin(v41 - 8);
  v43 = &v180 - v42;
  v44 = type metadata accessor for FMItemCapabilities();
  v45 = *(v44 - 8);
  v46 = __chkstk_darwin(v44);
  v214 = &v180 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v218 = &v180 - v49;
  __chkstk_darwin(v48);
  v51 = &v180 - v50;
  v206 = a1;
  FMIPDevice.itemGroup.getter();
  v52 = type metadata accessor for FMIPItemGroup();
  v53 = *(v52 - 8);
  v54 = *(v53 + 48);
  v189 = v53 + 48;
  v188 = v54;
  v55 = v54(v40, 1, v52);
  v216 = v44;
  v199 = v45;
  v198 = v51;
  v190 = v52;
  v180 = v53;
  if (v55 == 1)
  {
    sub_100012DF0(v40, &unk_1006BB1C0);
    (*(v45 + 56))(v43, 1, 1, v44);
    v225._countAndFlagsBits = 0;
    sub_1004A7DD4(&qword_1006C1D90, &type metadata accessor for FMItemCapabilities);
    dispatch thunk of OptionSet.init(rawValue:)();
    if ((*(v45 + 48))(v43, 1, v44) != 1)
    {
      sub_100012DF0(v43, &qword_1006C1D88);
    }
  }

  else
  {
    FMIPItemGroup.capabilities.getter();
    (*(v53 + 8))(v40, v52);
    (*(v45 + 56))(v43, 0, 1, v44);
    (*(v45 + 32))(v51, v43, v44);
  }

  FMIPDevice.state.getter();
  static FMIPDeviceState.isThisDevice.getter();
  sub_1004A7DD4(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState);
  v56 = v208;
  v57 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v58 = *(v207 + 8);
  v58(v33, v56);
  v58(v35, v56);
  FMIPDevice.state.getter();
  static FMIPDeviceState.isDeviceWithYou.getter();
  v59 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v58(v33, v56);
  v58(v35, v56);
  v60 = v209;
  FMIPDevice.bestLocation.getter();
  v61 = type metadata accessor for FMIPLocation();
  v62 = *(v61 - 8);
  v63 = (*(v62 + 48))(v60, 1, v61);
  v64 = v211;
  if (v63 == 1)
  {
    sub_100012DF0(v60, &unk_1006C0220);
    v65 = 1;
  }

  else
  {
    v66 = FMIPLocation.location.getter();
    (*(v62 + 8))(v60, v61);

    v65 = v57 | v59;
  }

  LODWORD(v209) = v65;
  v67 = v222;
  v68 = v219;
  v69 = v210;
  FMIPDevice.eraseMetadata.getter();
  if ((*(v64 + 48))(v69, 1, v68) == 1)
  {
    sub_100012DF0(v69, &qword_1006B8678);
    v70 = 1;
  }

  else
  {
    v71 = v183;
    (*(v64 + 32))(v183, v69, v68);
    v72 = v184;
    FMIPEraseMetadata.status.getter();
    v73 = v186;
    v74 = v185;
    v75 = v187;
    (*(v186 + 104))(v185, enum case for FMIPActionStatus.eraseCancelled(_:), v187);
    sub_1004A7DD4(&unk_1006C1DA0, &type metadata accessor for FMIPActionStatus);
    v70 = dispatch thunk of static Equatable.== infix(_:_:)();
    v76 = *(v73 + 8);
    v76(v74, v75);
    v76(v72, v75);
    (*(v64 + 8))(v71, v68);
  }

  v77 = v220;
  FMIPDevice.wipedTimestamp.getter();
  v78 = type metadata accessor for Date();
  v79 = 1;
  v80 = (*(*(v78 - 8) + 48))(v77, 1, v78);
  sub_100012DF0(v77, &unk_1006B0000);
  if ((FMIPDevice.pairingIncomplete.getter() & 1) != 0 || v80 != 1)
  {
    v81 = v197;
  }

  else
  {
    v81 = v197;
    if (v70)
    {
      v82 = v202;
      FMIPDevice.features.getter();
      v83 = v201;
      static FMIPFeatures.isWipeEnabled.getter();
      v84 = sub_1004A7DD4(&qword_1006C1D50, &type metadata accessor for FMIPFeatures);
      v85 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v86 = v195 + 8;
      v87 = *(v195 + 8);
      v87(v83, v81);
      v87(v82, v81);
      if (v85)
      {
        v88 = 3;
      }

      else
      {
        v88 = 1;
      }

      FMIPDevice.features.getter();
      static FMIPFeatures.isLockAndMessageEnabled.getter();
      v89 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v87(v83, v81);
      v87(v82, v81);
      if (v89)
      {
        v88 |= 4uLL;
      }

      FMIPDevice.features.getter();
      static FMIPFeatures.isLostModeEnabled.getter();
      v90 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v87(v83, v81);
      v87(v82, v81);
      if (v90)
      {
        v88 |= 8uLL;
      }

      FMIPDevice.features.getter();
      static FMIPFeatures.isPlaySoundEnabled.getter();
      v91 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v87(v83, v81);
      v87(v82, v81);
      if (v91)
      {
        v88 |= 0x20uLL;
      }

      FMIPDevice.features.getter();
      static FMIPFeatures.isMultiChannelSoundEnabled.getter();
      v92 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v87(v83, v81);
      v87(v82, v81);
      if (v92)
      {
        v88 |= 0x400uLL;
      }

      FMIPDevice.features.getter();
      static FMIPFeatures.isBluetoothRequired.getter();
      v93 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v87(v83, v81);
      v87(v82, v81);
      if (v93)
      {
        v88 |= 0x800uLL;
      }

      FMIPDevice.features.getter();
      static FMIPFeatures.isStopSoundSupported.getter();
      v185 = v84;
      v94 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v87(v83, v81);
      v187 = v87;
      v186 = v86;
      v87(v82, v81);
      v95 = v88 | 0x1000;
      if ((v94 & 1) == 0)
      {
        v95 = v88;
      }

      if (v209)
      {
        v96 = v95;
      }

      else
      {
        v96 = v95 | 0x80;
      }

      if (FMIPDevice.canEnableNotifyWhenFound()())
      {
        v97 = v96 | 0x40;
      }

      else
      {
        v97 = v96;
      }

      v98 = v196;
      FMIPDevice.itemGroup.getter();
      v99 = v190;
      if (v188(v98, 1, v190) == 1)
      {
        sub_100012DF0(v98, &unk_1006BB1C0);
        v100 = _swiftEmptyArrayStorage;
        v101 = v205;
        v102 = v204;
LABEL_64:
        v130 = *(v100 + 2);

        v131 = v97 | 0x82000;
        if (!v130)
        {
          v131 = v97;
        }

        v222 = v131;
        FMIPDevice.deviceConnectedState.getter();
        v132 = v182;
        v221 = *(v101 + 104);
        (v221)(v67, enum case for FMIPDeviceConnectedStateType.connected(_:), v182);
        v133 = static FMIPDeviceConnectedStateType.== infix(_:_:)();
        v134 = *(v101 + 8);
        v134(v67, v132);
        v134(v102, v132);
        if (v133 & 1) != 0 || (v135 = v102, v136 = v132, FMIPDevice.deviceConnectedState.getter(), (v221)(v67, enum case for FMIPDeviceConnectedStateType.detectedNearby(_:), v132), v137 = static FMIPDeviceConnectedStateType.== infix(_:_:)(), v134(v67, v136), v134(v135, v136), (v137))
        {
          v138 = v197;
          v139 = v202;
          if (v181)
          {
            v222 |= 0x80000uLL;
          }
        }

        else
        {
          v138 = v197;
          v139 = v202;
        }

        FMIPDevice.features.getter();
        static FMIPFeatures.isNotifyWhenFoundSupported.getter();
        v140 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v141 = v187;
        (v187)(v83, v138);
        v141(v139, v138);
        if ((v140 & 1) == 0 || (FMIPDevice.features.getter(), static FMIPFeatures.isMultiChannelSoundEnabled.getter(), v142 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v141(v83, v138), v141(v139, v138), (v142) || (FMIPDevice.features.getter(), static FMIPFeatures.isStopSoundSupported.getter(), v143 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v141(v83, v138), v141(v139, v138), (v143)) && (v144 = v218, static FMItemCapabilities.canEnableNotifyWhenFound.getter(), sub_1004A7DD4(&qword_1006B4180, &type metadata accessor for FMItemCapabilities), v145 = v216, v146 = dispatch thunk of SetAlgebra.isSuperset(of:)(), (*(v199 + 8))(v144, v145), (v146 & 1) == 0))
        {
          v147 = v222;
        }

        else
        {
          v147 = v222;
          if ((v222 & 0x8000) == 0)
          {
            v147 = v222 | 0x8000;
          }
        }

        FMIPDevice.features.getter();
        static FMIPFeatures.isNotifyWhenDetachedSupported.getter();
        v148 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v149 = v187;
        (v187)(v83, v138);
        v149(v139, v138);
        if (v148)
        {
          v147 |= 0x10000uLL;
        }

        FMIPDevice.features.getter();
        static FMIPFeatures.isShowContactDetailsSupported.getter();
        v150 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v149(v83, v138);
        v149(v139, v138);
        if (v150)
        {
          v147 |= 0x20000uLL;
        }

        FMIPDevice.features.getter();
        static FMIPFeatures.isRemoveUIv2Supported.getter();
        v151 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v149(v83, v138);
        v149(v139, v138);
        if (v151)
        {
          v147 |= 0x40000uLL;
        }

        FMIPDevice.features.getter();
        static FMIPFeatures.isLeashingSupported.getter();
        v152 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v149(v83, v138);
        v149(v139, v138);
        v153 = v147 | 0x4000;
        if (v152)
        {
          v147 |= 0x4000uLL;
        }

        v154 = v218;
        static FMItemCapabilities.canEnableLeashing.getter();
        sub_1004A7DD4(&qword_1006B4180, &type metadata accessor for FMItemCapabilities);
        v155 = v216;
        v156 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v157 = *(v199 + 8);
        v157(v154, v155);
        if ((v156 & ((v147 & 0x4000) == 0)) != 0)
        {
          v147 = v153;
        }

        v81 = v197;
        static FMItemCapabilities.canEnableLostMode.getter();
        v158 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v157(v154, v155);
        if (v158)
        {
          v79 = v147 | 8;
        }

        else
        {
          v79 = v147;
        }

        goto LABEL_90;
      }

      v189 = v97;
      v103 = FMIPItemGroup.items.getter();
      (*(v180 + 8))(v98, v99);
      result = v103;
      v105 = v216;
      v211 = *(v103 + 16);
      if (v211)
      {
        v106 = 0;
        v209 = v221 + 16;
        v208 = v199 + 8;
        v196 = (v221 + 8);
        v207 = v221 + 32;
        countAndFlagsBits = _swiftEmptyArrayStorage;
        v108 = v203;
        v109 = v200;
        v210 = result;
        v110 = (v199 + 8);
        while (v106 < *(result + 16))
        {
          v111 = countAndFlagsBits;
          v220 = ((*(v221 + 80) + 32) & ~*(v221 + 80));
          v219 = *(v221 + 72);
          (*(v221 + 16))(v109, &v220[result + v219 * v106], v108);
          v112 = v218;
          v113 = v108;
          FMIPItem.capabilities.getter();
          v114 = v214;
          static FMItemCapabilities.canBTFinding.getter();
          sub_1004A7DD4(&qword_1006B4180, &type metadata accessor for FMItemCapabilities);
          v115 = dispatch thunk of SetAlgebra.isSuperset(of:)();
          v116 = *v110;
          (*v110)(v114, v105);
          v116(v112, v105);
          if (v115)
          {
            v117 = *v207;
            (*v207)(v215, v109, v113);
            countAndFlagsBits = v111;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v225._countAndFlagsBits = v111;
            if (isUniquelyReferenced_nonNull_native)
            {
              v108 = v113;
            }

            else
            {
              sub_10016704C(0, *(v111 + 16) + 1, 1);
              v108 = v203;
              countAndFlagsBits = v225._countAndFlagsBits;
            }

            v120 = *(countAndFlagsBits + 16);
            v119 = *(countAndFlagsBits + 24);
            if (v120 >= v119 >> 1)
            {
              sub_10016704C(v119 > 1, v120 + 1, 1);
              v108 = v203;
              countAndFlagsBits = v225._countAndFlagsBits;
            }

            *(countAndFlagsBits + 16) = v120 + 1;
            v117(&v220[countAndFlagsBits + v120 * v219], v215, v108);
            v105 = v216;
            v109 = v200;
          }

          else
          {
            (*v196)(v109, v113);
            v108 = v113;
            countAndFlagsBits = v111;
          }

          ++v106;
          result = v210;
          v67 = v222;
          if (v211 == v106)
          {
            goto LABEL_51;
          }
        }

        __break(1u);
      }

      else
      {
        countAndFlagsBits = _swiftEmptyArrayStorage;
        v108 = v203;
LABEL_51:

        v101 = v205;
        v220 = *(countAndFlagsBits + 16);
        if (!v220)
        {
          v100 = _swiftEmptyArrayStorage;
          v102 = v204;
LABEL_63:

          v83 = v201;
          v97 = v189;
          goto LABEL_64;
        }

        v121 = 0;
        v219 = v221 + 16;
        v122 = (v221 + 32);
        v215 = (v221 + 8);
        v100 = _swiftEmptyArrayStorage;
        v102 = v204;
        while (v121 < *(countAndFlagsBits + 16))
        {
          v123 = (*(v221 + 80) + 32) & ~*(v221 + 80);
          v124 = *(v221 + 72);
          v125 = v212;
          (*(v221 + 16))(v212, countAndFlagsBits + v123 + v124 * v121, v108);
          if ((sub_1000F39B8(v125, v213) & 0x60) != 0)
          {
            v126 = *v122;
            (*v122)(v217, v125, v108);
            v127 = swift_isUniquelyReferenced_nonNull_native();
            v225._countAndFlagsBits = v100;
            if ((v127 & 1) == 0)
            {
              sub_10016704C(0, *(v100 + 2) + 1, 1);
              v108 = v203;
              v100 = v225._countAndFlagsBits;
            }

            v129 = *(v100 + 2);
            v128 = *(v100 + 3);
            if (v129 >= v128 >> 1)
            {
              sub_10016704C(v128 > 1, v129 + 1, 1);
              v108 = v203;
              v100 = v225._countAndFlagsBits;
            }

            *(v100 + 2) = v129 + 1;
            result = v126(&v100[v123 + v129 * v124], v217, v108);
            v101 = v205;
            v102 = v204;
          }

          else
          {
            result = (*v215)(v125, v108);
          }

          ++v121;
          v67 = v222;
          if (v220 == v121)
          {
            goto LABEL_63;
          }
        }
      }

      __break(1u);
      return result;
    }
  }

LABEL_90:
  v159 = v191;
  FMIPDevice.status.getter();
  v160 = v193;
  v161 = v192;
  v162 = v194;
  (*(v193 + 104))(v192, enum case for FMIPDeviceStatus.online(_:), v194);
  sub_1004A7DD4(&qword_1006C1D98, &type metadata accessor for FMIPDeviceStatus);
  v163 = dispatch thunk of static Equatable.== infix(_:_:)();
  v164 = *(v160 + 8);
  v164(v161, v162);
  v164(v159, v162);
  if (v163)
  {
    v165 = v202;
    FMIPDevice.features.getter();
    v166 = v201;
    static FMIPFeatures.isRemoveUIv2Supported.getter();
    sub_1004A7DD4(&qword_1006C1D50, &type metadata accessor for FMIPFeatures);
    v167 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v168 = v195;
    v169 = *(v195 + 8);
    v169(v166, v81);
    v169(v165, v81);
  }

  else
  {
    v167 = 1;
    v168 = v195;
    v166 = v201;
    v165 = v202;
  }

  FMIPDevice.features.getter();
  static FMIPFeatures.isRemoveEnabled.getter();
  sub_1004A7DD4(&qword_1006C1D50, &type metadata accessor for FMIPFeatures);
  v170 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v171 = *(v168 + 8);
  v171(v166, v81);
  v171(v165, v81);
  if (v170 & 1) != 0 && (v167 & 1) != 0 || (v172 = v218, static FMItemCapabilities.canRemove.getter(), sub_1004A7DD4(&qword_1006B4180, &type metadata accessor for FMItemCapabilities), v173 = v216, v174 = dispatch thunk of SetAlgebra.isSuperset(of:)(), (*(v199 + 8))(v172, v173), (v174) || (FMIPDevice.rawModel.getter(), v175 = String.uppercased()(), , v225 = v175, v223 = 0x53444F50524941, v224 = 0xE700000000000000, sub_100035F3C(), v176 = StringProtocol.contains<A>(_:)(), v81 = v197, , (v176))
  {
    v79 |= 0x200200uLL;
  }

  v177 = v202;
  FMIPDevice.features.getter();
  v178 = v201;
  static FMIPFeatures.isRepairSupported.getter();
  v179 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v171(v178, v81);
  v171(v177, v81);
  (*(v199 + 8))(v198, v216);
  if (v179)
  {
    return v79 | 0x300000;
  }

  else
  {
    return v79;
  }
}

void *sub_1004A623C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v44 = a2;
  v54 = type metadata accessor for FMIPSafeLocation();
  v5 = *(v54 - 8);
  v6 = __chkstk_darwin(v54);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v50 = &v39 - v9;
  __chkstk_darwin(v8);
  v11 = &v39 - v10;
  v12 = _swiftEmptyArrayStorage;
  v42 = *(a1 + 16);
  if (!v42)
  {
    return _swiftEmptyArrayStorage;
  }

  v13 = 0;
  v15 = *(v5 + 16);
  v14 = v5 + 16;
  v16 = *(v14 + 64);
  v45 = _swiftEmptyArrayStorage;
  v46 = (v16 + 32) & ~v16;
  v41 = a1 + v46;
  v17 = *(v14 + 56);
  v52 = v15;
  v53 = v17;
  v51 = (v14 - 8);
  v39 = &v39 - v10;
  v40 = (v14 + 16);
  do
  {
    v49 = v13;
    v52(v11, v41 + v53 * v13, v54);
    v18 = *v44;
    v19 = *(*v44 + 16);
    if (v19)
    {
      v48 = v3;
      v55[0] = _swiftEmptyArrayStorage;

      sub_10016715C(0, v19, 0);
      v12 = v55[0];
      v47 = v18;
      v20 = v18 + v46;
      do
      {
        v21 = v50;
        v22 = v54;
        v23 = v14;
        v52(v50, v20, v54);
        v24 = FMIPSafeLocation.identifier.getter();
        v26 = v25;
        (*v51)(v21, v22);
        v55[0] = v12;
        v28 = v12[2];
        v27 = v12[3];
        if (v28 >= v27 >> 1)
        {
          sub_10016715C((v27 > 1), v28 + 1, 1);
          v12 = v55[0];
        }

        v12[2] = v28 + 1;
        v29 = &v12[2 * v28];
        v29[4] = v24;
        v29[5] = v26;
        v20 += v53;
        --v19;
        v14 = v23;
      }

      while (v19);

      v3 = v48;
      v11 = v39;
    }

    v55[0] = FMIPSafeLocation.identifier.getter();
    v55[1] = v30;
    __chkstk_darwin(v55[0]);
    *(&v39 - 2) = v55;
    v31 = sub_10008A40C(sub_10011F7D4, (&v39 - 4), v12);

    if (v31)
    {
      (*v51)(v11, v54);
      v12 = _swiftEmptyArrayStorage;
    }

    else
    {
      v32 = *v40;
      (*v40)(v43, v11, v54);
      v33 = v45;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v33;
      v56 = v33;
      v12 = _swiftEmptyArrayStorage;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1001670D4(0, v33[2] + 1, 1);
        v35 = v56;
      }

      v37 = v35[2];
      v36 = v35[3];
      if (v37 >= v36 >> 1)
      {
        sub_1001670D4(v36 > 1, v37 + 1, 1);
        v35 = v56;
      }

      v35[2] = v37 + 1;
      v45 = v35;
      v32(v35 + v46 + v37 * v53, v43, v54);
    }

    v13 = v49 + 1;
  }

  while (v49 + 1 != v42);
  return v45;
}

void *sub_1004A6638(uint64_t a1)
{
  v2 = type metadata accessor for FMIPAudioChannel();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return _swiftEmptyArrayStorage;
  }

  v12 = *(v3 + 16);
  v10 = v3 + 16;
  v11 = v12;
  v13 = *(v10 + 56);
  v24 = (*(v10 + 64) + 32) & ~*(v10 + 64);
  v14 = a1 + v24;
  v23 = (v10 - 8);
  v28 = (v10 + 16);
  v29 = v13;
  v15 = _swiftEmptyArrayStorage;
  v25 = v12;
  v26 = v6;
  v27 = v10;
  v12(v8, a1 + v24, v2);
  while (1)
  {
    if (FMIPAudioChannel.isPlaying.getter())
    {
      v17 = *v28;
      (*v28)(v6, v8, v2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100167090(0, v15[2] + 1, 1);
        v15 = v30;
      }

      v16 = v29;
      v20 = v15[2];
      v19 = v15[3];
      if (v20 >= v19 >> 1)
      {
        sub_100167090(v19 > 1, v20 + 1, 1);
        v16 = v29;
        v15 = v30;
      }

      v15[2] = v20 + 1;
      v6 = v26;
      v17(v15 + v24 + v20 * v16, v26, v2);
      v11 = v25;
    }

    else
    {
      (*v23)(v8, v2);
      v16 = v29;
    }

    v14 += v16;
    if (!--v9)
    {
      break;
    }

    v11(v8, v14, v2);
  }

  return v15;
}

uint64_t sub_1004A6880(uint64_t a1)
{
  v169 = type metadata accessor for FMIPItemState();
  v145 = *(v169 - 8);
  v2 = __chkstk_darwin(v169);
  v171 = &v138 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v170 = &v138 - v4;
  v5 = type metadata accessor for FMIPItem();
  v142 = *(v5 - 8);
  __chkstk_darwin(v5);
  v168 = &v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&unk_1006BB1C0);
  __chkstk_darwin(v7 - 8);
  v153 = &v138 - v8;
  v9 = type metadata accessor for FMIPItemGroup();
  v157 = *(v9 - 8);
  v158 = v9;
  __chkstk_darwin(v9);
  v154 = &v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007EBC0(&qword_1006B8678);
  __chkstk_darwin(v11 - 8);
  v150 = &v138 - v12;
  v152 = type metadata accessor for FMIPEraseMetadata();
  v165 = *(v152 - 8);
  __chkstk_darwin(v152);
  v151 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMIPDeviceState();
  v161 = *(v14 - 8);
  v162 = v14;
  v15 = __chkstk_darwin(v14);
  v160 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v159 = &v138 - v17;
  v18 = sub_10007EBC0(&qword_1006B8B78);
  __chkstk_darwin(v18 - 8);
  v149 = &v138 - v19;
  v156 = type metadata accessor for FMIPDeviceLostModeMetadata();
  v164 = *(v156 - 1);
  __chkstk_darwin(v156);
  v144 = &v138 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for FMIPActionStatus();
  v167 = *(v172 - 8);
  v21 = __chkstk_darwin(v172);
  v143 = &v138 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v155 = &v138 - v24;
  v25 = __chkstk_darwin(v23);
  v166 = &v138 - v26;
  __chkstk_darwin(v25);
  v28 = &v138 - v27;
  v29 = sub_10007EBC0(&unk_1006C1D20);
  __chkstk_darwin(v29 - 8);
  v31 = &v138 - v30;
  v32 = type metadata accessor for FMIPLockMetadata();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &v138 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10007EBC0(&unk_1006B0000);
  v37 = __chkstk_darwin(v36 - 8);
  v39 = &v138 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v41 = &v138 - v40;
  FMIPDevice.lockedTimestamp.getter();
  v42 = type metadata accessor for Date();
  v43 = *(v42 - 8);
  v44 = *(v43 + 48);
  v148 = v42;
  v147 = v44;
  v146 = (v43 + 48);
  v45 = v44(v41, 1);
  v46 = v41;
  v47 = v33;
  v48 = v172;
  sub_100012DF0(v46, &unk_1006B0000);
  v163 = a1;
  FMIPDevice.lockMetadata.getter();
  if ((*(v47 + 48))(v31, 1, v32) == 1)
  {
    sub_100012DF0(v31, &unk_1006C1D20);
    if (v45 == 1)
    {
      v49 = 1;
    }

    else
    {
      v49 = 17;
    }
  }

  else
  {
    v141 = v45;
    (*(v47 + 32))(v35, v31, v32);
    FMIPLockMetadata.status.getter();
    v50 = FMIPActionStatus.isActionSuccessful.getter();
    v51 = *(v167 + 8);
    v51(v28, v48);
    v52 = v48;
    if ((v50 & 1) == 0 || v141 == 1)
    {
      v140 = v47;
      v53 = v166;
      FMIPLockMetadata.status.getter();
      v54 = *(v167 + 104);
      v139 = v35;
      v55 = v155;
      v54(v155, enum case for FMIPActionStatus.pending(_:), v52);
      sub_1004A7DD4(&qword_1006C1D70, &type metadata accessor for FMIPActionStatus);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v51(v55, v52);
      v51(v53, v52);
      v57 = v173;
      v56 = v174;
      (*(v140 + 8))(v139, v32);
      v58 = 17;
      if (v141 == 1)
      {
        v58 = 1;
      }

      if (v56 == v57)
      {
        v49 = 33;
      }

      else
      {
        v49 = v58;
      }
    }

    else
    {
      (*(v47 + 8))(v35, v32);
      v49 = 17;
    }
  }

  v59 = v159;
  FMIPDevice.lostTimestamp.getter();
  v60 = (v147)(v39, 1, v148);
  sub_100012DF0(v39, &unk_1006B0000);
  v61 = v149;
  FMIPDevice.lostMetadata.getter();
  v62 = v164;
  v63 = v156;
  if ((*(v164 + 48))(v61, 1, v156) != 1)
  {
    v147 = v49;
    v148 = v5;
    v66 = v144;
    (*(v62 + 32))(v144, v61, v63);
    v67 = v166;
    FMIPDeviceLostModeMetadata.status.getter();
    v68 = FMIPActionStatus.isActionSuccessful.getter();
    v69 = v167;
    v70 = *(v167 + 8);
    v70(v67, v172);
    if (v68 & 1) != 0 && (FMIPDevice.isLocalFindable.getter())
    {
      (*(v164 + 8))(v66, v63);
    }

    else
    {
      v71 = v143;
      FMIPDeviceLostModeMetadata.status.getter();
      v72 = FMIPActionStatus.isActionSuccessful.getter();
      v70(v71, v172);
      if ((v72 & 1) == 0 || (FMIPDevice.state.getter(), v73 = v160, static FMIPDeviceState.isLostModeEnabled.getter(), sub_1004A7DD4(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState), v74 = v162, v75 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v76 = *(v161 + 8), v76(v73, v74), v66 = v144, v76(v59, v74), (v75 & 1) == 0))
      {
        v77 = v166;
        FMIPDeviceLostModeMetadata.status.getter();
        v78 = *(v69 + 104);
        v79 = v155;
        LODWORD(v149) = enum case for FMIPActionStatus.pending(_:);
        v80 = v172;
        v146 = v78;
        v78(v155);
        sub_1004A7DD4(&qword_1006C1D70, &type metadata accessor for FMIPActionStatus);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v70(v79, v80);
        v70(v77, v80);
        if (v174 == v173 && (FMIPDeviceLostModeMetadata.canStopLostMode.getter() & 1) != 0)
        {
          (*(v164 + 8))(v66, v156);
          v64 = v147 | 0x200;
        }

        else
        {
          v81 = v166;
          FMIPDeviceLostModeMetadata.status.getter();
          v82 = v155;
          v83 = v172;
          v146(v155, v149, v172);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          v70(v82, v83);
          v70(v81, v83);
          v85 = v173;
          v84 = v174;
          (*(v164 + 8))(v66, v156);
          if (v84 == v85)
          {
            v64 = v147 | 0x80;
          }

          else
          {
            v64 = v147;
          }
        }

        goto LABEL_31;
      }

      (*(v164 + 8))(v66, v156);
    }

    v64 = v147 | 0x40;
LABEL_31:
    v65 = v161;
    v5 = v148;
    goto LABEL_32;
  }

  sub_100012DF0(v61, &qword_1006B8B78);
  if (v60 == 1)
  {
    v64 = v49;
  }

  else
  {
    v64 = v49 | 0x40;
  }

  v65 = v161;
LABEL_32:
  FMIPDevice.state.getter();
  v86 = v160;
  static FMIPDeviceState.isNotifyWhenFoundEnabled.getter();
  v87 = sub_1004A7DD4(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState);
  v88 = v162;
  v89 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v92 = *(v65 + 8);
  v91 = v65 + 8;
  v90 = v92;
  v92(v86, v88);
  v92(v59, v88);
  if (v89)
  {
    v64 |= 8uLL;
  }

  FMIPDevice.state.getter();
  static FMIPDeviceState.isNotifyWhenDetachedEnabled.getter();
  v93 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v90(v86, v88);
  v90(v59, v88);
  if (v93)
  {
    v64 |= 0x8000uLL;
  }

  FMIPDevice.state.getter();
  static FMIPDeviceState.isShowContactDetailsEnabled.getter();
  v94 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v90(v86, v88);
  v90(v59, v88);
  if (v94)
  {
    v64 |= 0x10000uLL;
  }

  FMIPDevice.state.getter();
  static FMIPDeviceState.isDeviceWithYou.getter();
  v149 = v87;
  v95 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v90(v86, v88);
  v156 = v90;
  v90(v59, v88);
  if (v95)
  {
    v96 = v64 | 0x20000;
  }

  else
  {
    v96 = v64;
  }

  v97 = v150;
  FMIPDevice.eraseMetadata.getter();
  v98 = v165;
  v99 = v152;
  if ((*(v165 + 48))(v97, 1, v152) == 1)
  {
    sub_100012DF0(v97, &qword_1006B8678);
  }

  else
  {
    (*(v98 + 32))(v151, v97, v99);
    v100 = v166;
    FMIPEraseMetadata.status.getter();
    v101 = v167;
    v102 = v96;
    v103 = v155;
    v104 = v172;
    (*(v167 + 104))(v155, enum case for FMIPActionStatus.pending(_:), v172);
    sub_1004A7DD4(&qword_1006C1D70, &type metadata accessor for FMIPActionStatus);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v105 = *(v101 + 8);
    v106 = v103;
    v96 = v102;
    v105(v106, v104);
    v105(v100, v104);
    v59 = v159;
    v108 = v173;
    v107 = v174;
    (*(v165 + 8))(v151, v99);
    if (v107 == v108)
    {
      v96 |= 0x100uLL;
    }
  }

  v109 = v157;
  v110 = v153;
  FMIPDevice.itemGroup.getter();
  v111 = v158;
  if ((*(v109 + 48))(v110, 1, v158) == 1)
  {
    sub_100012DF0(v110, &unk_1006BB1C0);
  }

  else
  {
    v161 = v91;
    (*(v109 + 32))(v154, v110, v111);
    v112 = FMIPItemGroup.items.getter();
    v113 = *(v112 + 16);
    if (v113)
    {
      v114 = *(v142 + 16);
      v115 = *(v142 + 80);
      v155 = v112;
      v116 = v96;
      v117 = v112 + ((v115 + 32) & ~v115);
      v166 = *(v142 + 72);
      v167 = v114;
      v165 = v142 + 8;
      v164 = v145 + 8;
      v118 = v170;
      do
      {
        v172 = v113;
        v119 = v168;
        (v167)(v168, v117, v5);
        FMIPItem.state.getter();
        (*v165)(v119, v5);
        v120 = v171;
        static FMIPItemState.separationWarningActive.getter();
        sub_1004A7DD4(&qword_1006C0350, &type metadata accessor for FMIPItemState);
        v121 = v169;
        LOBYTE(v119) = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v122 = v5;
        v123 = *v164;
        (*v164)(v120, v121);
        v123(v118, v121);
        v5 = v122;
        if (v119)
        {
          v116 |= 0x1000uLL;
        }

        v117 += v166;
        v113 = v172 - 1;
      }

      while (v172 != 1);

      v124 = v169;
      v125 = v170;
      v126 = v171;
      v59 = v159;
      v96 = v116;
    }

    else
    {

      v124 = v169;
      v125 = v170;
      v126 = v171;
    }

    v127 = v154;
    FMIPItemGroup.state.getter();
    static FMIPItemState.pairingLocked.getter();
    sub_1004A7DD4(&qword_1006C0350, &type metadata accessor for FMIPItemState);
    v128 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v129 = *(v145 + 8);
    v129(v126, v124);
    v129(v125, v124);
    if (v128)
    {
      v96 |= 0x80000uLL;
    }

    FMIPItemGroup.state.getter();
    static FMIPItemState.pairingIncomplete.getter();
    v130 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v129(v126, v124);
    v129(v125, v124);
    (*(v157 + 8))(v127, v158);
    if (v130)
    {
      v96 |= 0x40000uLL;
    }
  }

  FMIPDevice.state.getter();
  v131 = v160;
  static FMIPDeviceState.separationWarningActive.getter();
  v132 = v162;
  v133 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v134 = v156;
  (v156)(v131, v132);
  v134(v59, v132);
  if (v133)
  {
    v135 = v96 | 0x1000;
  }

  else
  {
    v135 = v96;
  }

  FMIPDevice.state.getter();
  static FMIPDeviceState.isInRepairMode.getter();
  v136 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v134(v131, v132);
  v134(v59, v132);
  if (v136)
  {
    return v135 | 0x100000;
  }

  else
  {
    return v135;
  }
}

uint64_t sub_1004A7D98(uint64_t *a1, uint64_t (*a2)(char *))
{
  v3 = *a1;
  v5[2] = *(v2 + 16);
  return sub_10008A5B8(a2, v5, v3) & 1;
}

uint64_t sub_1004A7DD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004A7E1C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    if (!(*v4 >> 62))
    {
      v8 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = __OFADD__(v8, v7);
      result = v8 + v7;
      if (!v9)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = _CocoaArrayWrapper.endIndex.getter();
  v9 = __OFADD__(v14, v7);
  result = v14 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_10001FF90();
  v11 = *v4;
  if (v6 == v5)
  {
    if (v7 <= 0)
    {
LABEL_11:
      *v4 = v11;
      return result;
    }

    __break(1u);
  }

  if ((*((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_10007EBC0(&qword_1006C1DD0);
  result = swift_arrayInitWithCopy();
  if (v7 <= 0)
  {
    goto LABEL_11;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFADD__(v12, v7);
  v13 = v12 + v7;
  if (!v9)
  {
    *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1004A7F38()
{

  return swift_deallocClassInstance();
}

BOOL sub_1004A7F9C(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_1004A8014(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = 0;
  v9 = *(a2 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    a3(0);
    ++v8;
    sub_10000A6F0(a4, a5);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v9 != v10;
}

char *sub_1004A811C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_scrollView;
  *&v4[v8] = [objc_allocWithZone(UIScrollView) init];
  v9 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_contentStackView;
  *&v4[v9] = [objc_allocWithZone(UIStackView) init];
  *&v4[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindImageView;
  sub_10000905C(0, &qword_1006BC2B0);
  v11 = sub_1003DE3DC(0xD00000000000001ALL, 0x8000000100586BE0, 6778480, 0xE300000000000000);
  v12 = [objc_allocWithZone(UIImageView) initWithImage:v11];

  *&v4[v10] = v12;
  v13 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindDescription;
  *&v4[v13] = [objc_allocWithZone(UILabel) init];
  v14 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_trustedLocationsDescription;
  *&v4[v14] = [objc_allocWithZone(UILabel) init];
  v15 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindSwitchSection;
  *&v4[v15] = [objc_allocWithZone(type metadata accessor for FMSectionPlatterGroupView()) init];
  v16 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindSwitch;
  *&v4[v16] = [objc_allocWithZone(type metadata accessor for FMSettingSwitchView()) init];
  v17 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_nonMeDescriptionPadView;
  *&v4[v17] = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_assignedSafeLocations] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_suggestedSafeLocations] = _swiftEmptyArrayStorage;
  v18 = &v4[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_beaconUUID];
  v19 = type metadata accessor for FMTrustedLocationDetailView();
  *v18 = 0;
  *(v18 + 1) = 0;
  v20 = objc_allocWithZone(v19);

  v22 = sub_100337DAC(v21);

  *&v4[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_trustedLocationsSection] = v22;
  v23 = objc_allocWithZone(type metadata accessor for FMSafeLocationSuggestionsView());

  *&v4[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_suggestionsSection] = sub_1004E8FAC(v24);
  *v18 = a2;
  *(v18 + 1) = a3;

  *&v4[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] = a1;
  v27.receiver = v4;
  v27.super_class = type metadata accessor for FMMediatedViewController();
  v25 = objc_msgSendSuper2(&v27, "initWithNibName:bundle:", 0, 0);
  *(*&v25[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_suggestionsSection] + OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_delegate + 8) = &off_100641A18;
  swift_unknownObjectWeakAssign();
  *(*&v25[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_trustedLocationsSection] + OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_delegate + 8) = &off_1006419F0;
  swift_unknownObjectWeakAssign();
  return v25;
}

void sub_1004A842C()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v2 - 8);
  v122 = &v120 - v3;
  v4 = type metadata accessor for FMFDevice();
  v5 = *(v4 - 8);
  v134 = v4;
  v135 = v5;
  __chkstk_darwin(v4);
  v139 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&qword_1006B68E8);
  __chkstk_darwin(v7 - 8);
  v123 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v124 = &v120 - v10;
  v11 = sub_10007EBC0(&qword_1006AF748);
  __chkstk_darwin(v11 - 8);
  v133 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v132 = &v120 - v14;
  __chkstk_darwin(v15);
  v17 = &v120 - v16;
  v18 = type metadata accessor for FMTrustedLocationDetailViewController();
  v140.receiver = v0;
  v140.super_class = v18;
  objc_msgSendSuper2(&v140, "viewDidLoad");
  v19 = [v0 view];
  if (!v19)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v20 = v19;
  v21 = objc_opt_self();
  v22 = [v21 secondarySystemBackgroundColor];
  [v20 setBackgroundColor:v22];

  v23 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_scrollView;
  v24 = *&v1[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_scrollView];
  v25 = [v21 secondarySystemBackgroundColor];
  [v24 setBackgroundColor:v25];

  v26 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_contentStackView;
  v27 = *&v1[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_contentStackView];
  v129 = v21;
  v28 = [v21 secondarySystemBackgroundColor];
  [v27 setBackgroundColor:v28];

  [*&v1[v23] setPreservesSuperviewLayoutMargins:1];
  [*&v1[v23] setContentInsetAdjustmentBehavior:3];
  [*&v1[v26] setPreservesSuperviewLayoutMargins:1];
  [*&v1[v26] setAxis:1];
  sub_1004A979C();
  v29 = [objc_allocWithZone(UIView) init];
  [*&v1[v26] addArrangedSubview:v29];
  v30 = *&v1[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindImageView];
  [*&v1[v26] addArrangedSubview:v30];
  v31 = *&v1[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindSwitchSection];
  v32 = *(v31 + OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_contentStackView);
  v127 = *&v1[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindSwitch];
  [v32 addArrangedSubview:?];
  [*&v1[v26] addArrangedSubview:v31];
  v33 = *&v1[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindDescription];
  [*&v1[v26] addArrangedSubview:v33];
  v34 = *&v1[v26];
  v121 = *&v1[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_trustedLocationsDescription];
  [v34 addArrangedSubview:?];
  v35 = *&v1[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_nonMeDescriptionPadView];
  [*&v1[v26] addArrangedSubview:v35];
  v36 = *&v1[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_trustedLocationsSection];
  [*&v1[v26] addArrangedSubview:v36];
  v37 = *&v1[v26];
  v125 = *&v1[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_suggestionsSection];
  [v37 addArrangedSubview:?];
  [v30 setContentMode:1];
  v38 = *&v1[v26];
  v128 = v29;
  [v38 setCustomSpacing:v29 afterView:6.0];
  [*&v1[v26] setCustomSpacing:v30 afterView:6.0];
  v39 = *&v1[v26];
  v126 = v33;
  [v39 setCustomSpacing:v33 afterView:12.0];
  [*&v1[v26] setCustomSpacing:v35 afterView:24.0];
  [*&v1[v26] setCustomSpacing:v36 afterView:24.0];
  [*&v1[v23] addSubview:*&v1[v26]];
  v40 = [v1 view];
  if (!v40)
  {
LABEL_52:
    __break(1u);
    return;
  }

  v41 = v40;
  [v40 addSubview:*&v1[v23]];

  v138 = *&v1[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator];

  dispatch thunk of FMFManager.myInfo.getter();

  v42 = type metadata accessor for FMFMyInfo();
  v43 = *(v42 - 8);
  v136 = *(v43 + 48);
  v137 = v43 + 48;
  if (v136(v17, 1, v42) == 1)
  {
    sub_100012DF0(v17, &qword_1006AF748);
    v44 = 0;
    v45 = 0;
  }

  else
  {
    v44 = FMFMyInfo.meDeviceId.getter();
    v45 = v46;
    (*(v43 + 8))(v17, v42);
  }

  v47 = v132;

  dispatch thunk of FMFManager.myInfo.getter();

  if (v136(v47, 1, v42) == 1)
  {
    sub_100012DF0(v47, &qword_1006AF748);
    if (!v45)
    {
      goto LABEL_46;
    }

    goto LABEL_16;
  }

  v48 = FMFMyInfo.deviceId.getter();
  v50 = v49;
  (*(v43 + 8))(v47, v42);
  if (v45)
  {
    if (v50)
    {
      if (v44 == v48 && v45 == v50)
      {

        goto LABEL_45;
      }

      v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v66)
      {
        goto LABEL_46;
      }

LABEL_17:

      v51 = dispatch thunk of FMFManager.devices.getter();

      if (v51)
      {
        v120 = v1;
        v52 = v134;
        v132 = *(v51 + 16);
        if (v132)
        {
          v53 = 0;
          v131 = v51 + ((*(v135 + 80) + 32) & ~*(v135 + 80));
          v130 = v135 + 16;
          v54 = (v43 + 8);
          v55 = (v135 + 8);
          while (1)
          {
            if (v53 >= *(v51 + 16))
            {
              __break(1u);
              goto LABEL_51;
            }

            (*(v135 + 16))(v139, v131 + *(v135 + 72) * v53, v52);
            v56 = FMFDevice.identifier.getter();
            v58 = v57;

            v59 = v133;
            dispatch thunk of FMFManager.myInfo.getter();

            if (v136(v59, 1, v42) == 1)
            {
              break;
            }

            v60 = FMFMyInfo.meDeviceId.getter();
            v62 = v61;
            (*v54)(v59, v42);
            if (!v62)
            {
              goto LABEL_21;
            }

            if (v56 == v60 && v62 == v58)
            {

LABEL_35:

              v52 = v134;
              v64 = v135;
              v65 = v124;
              (*(v135 + 32))(v124, v139, v134);
              (*(v64 + 56))(v65, 0, 1, v52);
              goto LABEL_36;
            }

            v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v63)
            {
              goto LABEL_35;
            }

LABEL_22:
            ++v53;
            v52 = v134;
            (*v55)(v139, v134);
            if (v132 == v53)
            {
              goto LABEL_30;
            }
          }

          sub_100012DF0(v59, &qword_1006AF748);
LABEL_21:

          goto LABEL_22;
        }

LABEL_30:

        v64 = v135;
        v65 = v124;
        (*(v135 + 56))(v124, 1, 1, v52);
LABEL_36:
        v1 = v120;
      }

      else
      {
        v52 = v134;
        v64 = v135;
        v65 = v124;
        (*(v135 + 56))(v124, 1, 1, v134);
      }

      v67 = v123;
      sub_100007204(v65, v123, &qword_1006B68E8);
      if ((*(v64 + 48))(v67, 1, v52) == 1)
      {
        sub_100012DF0(v65, &qword_1006B68E8);
        sub_100012DF0(v67, &qword_1006B68E8);
        goto LABEL_46;
      }

      v68 = FMFDevice.name.getter();
      v70 = v69;
      (*(v64 + 8))(v67, v52);
      v71 = *&v1[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_beaconUUID + 8];
      if (v71)
      {
        v72 = *&v1[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_beaconUUID];

        v73 = v122;
        sub_1000E5180(v72, v71, v122);

        v74 = type metadata accessor for FMIPDevice();
        LODWORD(v72) = (*(*(v74 - 8) + 48))(v73, 1, v74);
        sub_100012DF0(v73, &unk_1006BBCE0);
        v75 = [objc_opt_self() mainBundle];
        v76 = "RUSTED_LOCATION_DESCRIPTION";
        if (v72 == 1)
        {
          v76 = "ONS_SUGGESTION_TITLE";
          v77 = 0xD00000000000003BLL;
        }

        else
        {
          v77 = 0xD00000000000003DLL;
        }

        v141._object = 0x800000010057D660;
        v78 = v76 | 0x8000000000000000;
        v79.value._object = 0x800000010057D640;
        v141._countAndFlagsBits = 0xD00000000000001BLL;
        v79.value._countAndFlagsBits = 0xD000000000000016;
        v80._countAndFlagsBits = 0;
        v80._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(*&v77, v79, v75, v80, v141);

        sub_10007EBC0(&unk_1006B20B0);
        v81 = swift_allocObject();
        *(v81 + 16) = xmmword_100552220;
        *(v81 + 56) = &type metadata for String;
        *(v81 + 64) = sub_10008EE84();
        *(v81 + 32) = v68;
        *(v81 + 40) = v70;
        String.init(format:_:)();

        v82 = String._bridgeToObjectiveC()();

        v83 = v121;
        [v121 setText:v82];

        [v83 setNumberOfLines:0];
        v84 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
        [v83 setFont:v84];

        v85 = [v129 secondaryLabelColor];
        [v83 setTextColor:v85];

        [v83 setLineBreakMode:0];
        [v83 sizeToFit];
        sub_100012DF0(v65, &qword_1006B68E8);
        goto LABEL_46;
      }

      sub_100012DF0(v65, &qword_1006B68E8);
LABEL_45:

      goto LABEL_46;
    }

LABEL_16:

    goto LABEL_17;
  }

  if (v50)
  {
    goto LABEL_16;
  }

LABEL_46:
  sub_1004A967C();
  sub_1004AFD20();
  v86 = *(v125 + OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_sectionLabel);
  v87 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_suggestedSafeLocations;
  swift_beginAccess();
  if (*(*&v1[v87] + 16))
  {
    v88 = objc_opt_self();
    v89 = v86;
    v90 = [v88 mainBundle];
    v138 = 0x800000010057D660;
    v142._object = 0x800000010057D660;
    v91._countAndFlagsBits = 0xD000000000000024;
    v91._object = 0x800000010059BC60;
    v142._countAndFlagsBits = 0xD00000000000001BLL;
    v92.value._countAndFlagsBits = 0xD000000000000016;
    v139 = 0x800000010057D640;
    v92.value._object = 0x800000010057D640;
    v93._countAndFlagsBits = 0;
    v93._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v91, v92, v90, v93, v142);

    v94 = String._bridgeToObjectiveC()();
  }

  else
  {
    v138 = 0x800000010057D660;
    v139 = 0x800000010057D640;
    v95 = v86;
    v94 = 0;
  }

  [v86 setText:{v94, v120}];

  sub_1004ABCE4();
  v96 = String._bridgeToObjectiveC()();

  v97 = v126;
  [v126 setText:v96];

  [v97 setNumberOfLines:0];
  v98 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v97 setFont:v98];

  v99 = [v129 secondaryLabelColor];
  [v97 setTextColor:v99];

  [v97 setLineBreakMode:0];
  [v97 sizeToFit];
  v100 = v1;
  v137 = "DeviceNotificationsView";
  v101 = objc_opt_self();
  v102 = [v101 mainBundle];
  v103 = v138;
  v143._object = v138;
  v104._countAndFlagsBits = 0xD000000000000023;
  v104._object = 0x80000001005888C0;
  v143._countAndFlagsBits = 0xD00000000000001BLL;
  v105.value._countAndFlagsBits = 0xD000000000000016;
  v106 = v139;
  v105.value._object = v139;
  v107._countAndFlagsBits = 0;
  v107._object = 0xE000000000000000;
  v108 = NSLocalizedString(_:tableName:bundle:value:comment:)(v104, v105, v102, v107, v143);

  v109 = v127;
  *&v127[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_title] = v108;

  v110 = *&v109[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_titleLabel];

  v111 = v110;
  v112 = String._bridgeToObjectiveC()();

  [v111 setText:v112];

  *&v109[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_delegate + 8] = &off_100641A38;
  swift_unknownObjectWeakAssign();
  v113 = String._bridgeToObjectiveC()();
  [v109 setAccessibilityIdentifier:v113];

  v109[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_separated] = 0;
  [*&v109[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_separator] setHidden:1];
  v114 = [v100 navigationItem];
  v115 = [v101 mainBundle];
  v144._object = v103;
  v116._countAndFlagsBits = 0xD000000000000023;
  v116._object = (v137 | 0x8000000000000000);
  v144._countAndFlagsBits = 0xD00000000000001BLL;
  v117.value._countAndFlagsBits = 0xD000000000000016;
  v117.value._object = v106;
  v118._countAndFlagsBits = 0;
  v118._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v116, v117, v115, v118, v144);

  v119 = String._bridgeToObjectiveC()();

  [v114 setTitle:v119];
}

void sub_1004A967C()
{
  v1 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v0 action:"doneAction"];
  v2 = [v0 navigationItem];
  sub_10007EBC0(&qword_1006AFC30);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1005528C0;
  *(v3 + 32) = v1;
  sub_10000905C(0, &qword_1006B0160);
  v4 = v1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setRightBarButtonItems:isa animated:0];
}

uint64_t sub_1004A979C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v5 = *(v17 - 8);
  __chkstk_darwin(v17);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004A9B58();
  if (!v8)
  {
    v8 = [objc_allocWithZone(MKAnnotationView) init];
  }

  v9 = v8;
  sub_10000905C(0, &qword_1006AEDC0);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v0;
  aBlock[4] = sub_1004B07A8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100641C80;
  v12 = _Block_copy(aBlock);
  v13 = v9;
  v14 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A6F0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v2 + 8))(v4, v1);
  return (*(v5 + 8))(v7, v17);
}

id sub_1004A9A90(void *a1, uint64_t a2)
{
  [a1 frame];
  [a1 setFrame:?];
  v4 = *(a2 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindImageView);
  [v4 addSubview:a1];
  [v4 bounds];
  v6 = v5 * 0.5 + -14.0;
  [v4 bounds];

  return [a1 setCenter:{v6, v7 * 0.5}];
}

_BYTE *sub_1004A9B58()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v63 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMIPDevice();
  v68 = *(v5 - 8);
  __chkstk_darwin(v5);
  v67 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v61 - v11;
  v13 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v13 - 8);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v61 - v17;
  v19 = [objc_allocWithZone(CLLocation) init];
  v20 = v19;
  v21 = *(v1 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_beaconUUID + 8);
  if (v21)
  {
    v61 = v3;
    v62 = v2;
    v66 = v19;
    v22 = *(v1 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_beaconUUID);

    sub_1000E5180(v22, v21, v18);

    v65 = v12;
    sub_1000E5FF8(v22, v21, v12);

    v23 = v68;
    v24 = *(v68 + 48);
    v25 = v24(v18, 1, v5);
    v64 = v18;
    sub_100007204(v18, v15, &unk_1006BBCE0);
    if (v24(v15, 1, v5) == 1)
    {
      sub_100012DF0(v15, &unk_1006BBCE0);
    }

    else
    {
      v31 = v67;
      (*(v23 + 32))(v67, v15, v5);
      if (v25 != 1)
      {
        v32 = v66;
        v53 = sub_1004AA348(v31, v66);
        sub_10007EBC0(&qword_1006AFC30);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_1005528C0;
        *(v54 + 32) = v53;
        v55 = objc_allocWithZone(type metadata accessor for FMClusterAnnotation());
        v56 = v53;
        sub_1003F4230(v54);
        v58 = v57;
        v59 = objc_allocWithZone(type metadata accessor for FMClusteredAnnotationView());
        v60 = String._bridgeToObjectiveC()();
        v30 = [v59 initWithAnnotation:v58 reuseIdentifier:v60];

        (*(v23 + 8))(v31, v5);
        v33 = v65;
        if (!v30)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      (*(v23 + 8))(v31, v5);
    }

    v33 = v65;
    v32 = v66;
    sub_100007204(v65, v9, &qword_1006B07D0);
    v34 = v61;
    v35 = v62;
    if ((*(v61 + 48))(v9, 1, v62) == 1)
    {
      sub_100012DF0(v9, &qword_1006B07D0);
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_100005B14(v36, qword_1006D4630);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "FMTrustedLocationDetailViewController: no item or device", v39, 2u);
      }

      v30 = 0;
      goto LABEL_20;
    }

    v40 = v63;
    (*(v34 + 32))(v63, v9, v35);
    sub_1004AB5C8(v40, v32);
    v42 = v41;
    sub_10007EBC0(&qword_1006AFC30);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1005528C0;
    *(v43 + 32) = v42;
    v44 = objc_allocWithZone(type metadata accessor for FMClusterAnnotation());
    v45 = v34;
    v46 = v42;
    sub_1003F4230(v43);
    v48 = v47;
    v49 = objc_allocWithZone(type metadata accessor for FMClusteredAnnotationView());
    v50 = String._bridgeToObjectiveC()();
    v30 = [v49 initWithAnnotation:v48 reuseIdentifier:v50];

    (*(v45 + 8))(v40, v35);
    if (!v30)
    {
LABEL_19:
      v37 = v32;
LABEL_20:

      sub_100012DF0(v33, &qword_1006B07D0);
      sub_100012DF0(v64, &unk_1006BBCE0);
      return v30;
    }

LABEL_18:
    v51 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckHidden;
    v30[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckHidden] = 1;
    [*&v30[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckIcon] setHidden:1];
    [*&v30[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckBackgroundLayer] setHidden:v30[v51]];
    goto LABEL_19;
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100005B14(v26, qword_1006D4630);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "FMTrustedLocationDetailViewController: no beacon UUID", v29, 2u);
  }

  return 0;
}

uint64_t sub_1004AA348(uint64_t a1, void *a2)
{
  v142 = a2;
  v3 = type metadata accessor for FMIPItem();
  v4 = *(v3 - 8);
  v151 = v3;
  v152 = v4;
  __chkstk_darwin(v3);
  v128 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for FMIPConfigValue();
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v130 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v141 = *(v143 - 8);
  __chkstk_darwin(v143);
  v140 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8 - 8);
  v139 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v138 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v12 - 8);
  v133 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v153 = &v117 - v15;
  v16 = type metadata accessor for FMIPDevice();
  v147 = *(v16 - 8);
  __chkstk_darwin(v16);
  v150 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v145 = &v117 - v19;
  v137 = type metadata accessor for FMIPDeviceImageCacheRequest();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v21 = &v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v117 - v23;
  v146 = type metadata accessor for FMIPDeviceImageSize();
  v25 = *(v146 - 8);
  __chkstk_darwin(v146);
  v148 = &v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v144 = &v117 - v28;
  __chkstk_darwin(v29);
  v135 = &v117 - v30;
  v31 = sub_10007EBC0(&unk_1006BB1C0);
  __chkstk_darwin(v31 - 8);
  v127 = &v117 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v117 - v34;
  v36 = type metadata accessor for FMIPItemGroup();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v117 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  FMIPDevice.itemGroup.getter();
  v41 = *(v37 + 48);
  v126 = v37 + 48;
  v125 = v41;
  v42 = v41(v35, 1, v36);
  v154 = v16;
  v134 = v36;
  v129 = v37;
  if (v42 == 1)
  {
    sub_100012DF0(v35, &unk_1006BB1C0);
    v43 = v144;
    v44 = v146;
    (*(v25 + 104))(v144, enum case for FMIPDeviceImageSize.list(_:), v146);
    v45 = v25;
    v46 = *(v147 + 16);
    v47 = (v147 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v121 = a1;
    v46(v145, a1, v154);
    (*(v45 + 16))(v148, v43, v44);
    v48 = objc_opt_self();

    v49 = [v48 mainScreen];
    [v49 scale];

    FMIPDeviceImageCacheRequest.init(device:size:scale:)();
    dispatch thunk of FMImageCache.cachedImage(for:completion:)();
    (*(v136 + 8))(v21, v137);

    v50 = v155;
    (*(v45 + 8))(v43, v44);
    v52 = v151;
    v51 = v152;
    v53 = v121;
  }

  else
  {
    v119 = v21;
    (*(v37 + 32))(v39, v35, v36);
    v122 = *(*(*(v149 + OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator) + 24) + 24);

    v123 = v39;
    v54 = FMIPItemGroup.items.getter();
    v120 = sub_10053840C(v54);

    v55 = v135;
    v56 = v146;
    (*(v25 + 104))(v135, enum case for FMIPDeviceImageSize.list(_:), v146);
    v57 = *(v147 + 16);
    v148 = ((v147 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
    v53 = v40;
    v57(v145, v40, v154);
    v124 = v25;
    v118 = *(v25 + 16);
    v118(v144, v55, v56);
    v58 = objc_opt_self();
    v59 = [v58 mainScreen];
    [v59 scale];

    FMIPDeviceImageCacheRequest.init(itemParts:device:size:scale:)();
    v60 = v24;
    dispatch thunk of FMImageCache.cachedImage(for:completion:)();
    v50 = v155;
    v149 = v57;
    if (v155)
    {

      v61 = v146;
      v62 = v135;
      (*(v136 + 8))(v60, v137);
    }

    else
    {
      v57(v145, v53, v154);
      v62 = v135;
      v61 = v146;
      v118(v144, v135, v146);
      v63 = [v58 mainScreen];
      [v63 scale];

      v64 = v119;
      FMIPDeviceImageCacheRequest.init(device:size:scale:)();
      dispatch thunk of FMImageCache.cachedImage(for:completion:)();
      v65 = *(v136 + 8);
      v66 = v64;
      v67 = v137;
      v65(v66, v137);

      v50 = v157;
      v65(v60, v67);
    }

    (*(v124 + 8))(v62, v61);
    (*(v129 + 8))(v123, v134);
    v52 = v151;
    v51 = v152;
    v47 = v148;
    v46 = v149;
  }

  v146 = v50;
  v68 = v50;
  v69 = v142;
  [v142 coordinate];
  v71 = v70;
  v73 = v72;
  [v69 horizontalAccuracy];
  v75 = v74;
  v76 = v74;
  v148 = v47;
  v149 = v46;
  v46(v150, v53, v154);
  (*(v51 + 56))(v153, 1, 1, v52);
  v77 = objc_allocWithZone(type metadata accessor for FMDeviceAnnotation());
  v78 = OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_deviceImage;
  *&v77[OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_deviceImage] = 0;
  v79 = OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_updateQueue;
  sub_10000905C(0, &qword_1006AEDC0);
  static DispatchQoS.userInteractive.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v141 + 104))(v140, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v143);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v77[v79] = result;
  if ((*&v76 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v75 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v75 < 9.22337204e18)
  {
    v81 = v131;
    v82 = v130;
    v83 = v132;
    (*(v131 + 104))(v130, enum case for FMIPConfigValue.inaccuracyRadiusThreshold(_:), v132);
    v157 = 0x7FFFFFFFFFFFFFFFLL;
    FMIPGlobalConfig<A>(_:fallback:)();
    (*(v81 + 8))(v82, v83);
    v84 = v155 < v75;
    sub_10007EBC0(&unk_1006C2480);
    v85 = swift_allocObject();
    *(v85 + ((*(*v85 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
    v87 = v150;
    v86 = v151;
    v149((v85 + *(*v85 + class metadata base offset for ManagedBuffer + 16)), v150, v154);
    *&v77[OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_deviceLock] = v85;
    sub_10007EBC0(&unk_1006BB1D0);
    v88 = swift_allocObject();
    *(v88 + ((*(*v88 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
    v89 = v68;
    v90 = v153;
    sub_100007204(v153, v88 + *(*v88 + class metadata base offset for ManagedBuffer + 16), &qword_1006B07D0);
    *&v77[OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_partLock] = v88;
    v91 = *&v77[v78];
    *&v77[v78] = v146;
    v92 = v89;

    v93 = &v77[OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_tempCoordinate];
    *v93 = v71;
    v93[1] = v73;
    v94 = &v77[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
    *v94 = 0;
    v94[1] = 0;
    *&v77[OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage] = 0;
    *&v77[OBJC_IVAR____TtC6FindMy12FMAnnotation_stewieBadgeImage] = 0;
    *&v77[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier] = xmmword_100554BC0;
    v95 = &v77[OBJC_IVAR____TtC6FindMy12FMAnnotation_coordinate];
    *v95 = v71;
    v95[1] = v73;
    *&v77[OBJC_IVAR____TtC6FindMy12FMAnnotation_horizontalAccuracy] = v75;
    v77[OBJC_IVAR____TtC6FindMy12FMAnnotation_isWithYou] = 0;
    v77[OBJC_IVAR____TtC6FindMy12FMAnnotation_isInaccurate] = v84;
    v77[OBJC_IVAR____TtC6FindMy12FMAnnotation_isLive] = 0;
    v96 = type metadata accessor for FMAnnotation();
    v156.receiver = v77;
    v156.super_class = v96;
    v97 = objc_msgSendSuper2(&v156, "init");
    v98 = *&v97[OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage];
    *&v97[OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage] = 0;
    v99 = v97;

    v100 = v133;
    sub_100007204(v90, v133, &qword_1006B07D0);
    v101 = v152;
    if ((*(v152 + 48))(v100, 1, v86) == 1)
    {
      sub_100012DF0(v100, &qword_1006B07D0);
      v102 = v154;
LABEL_21:
      v113 = FMIPDevice.name.getter();
      v115 = v114;

      (*(v147 + 8))(v87, v102);
      v116 = &v99[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
      *v116 = v113;
      v116[1] = v115;

      sub_100012DF0(v153, &qword_1006B07D0);
      return v99;
    }

    v103 = v128;
    v104 = v86;
    (*(v101 + 4))(v128, v100, v86);
    v105 = v127;
    FMIPDevice.itemGroup.getter();
    v106 = v134;
    if (v125(v105, 1, v134) == 1)
    {
      sub_100012DF0(v105, &unk_1006BB1C0);
      v102 = v154;
    }

    else
    {
      v107 = FMIPItemGroup.groupedItems.getter();
      v108 = (*(v129 + 8))(v105, v106);
      __chkstk_darwin(v108);
      *(&v117 - 2) = v103;
      v109 = sub_100110710(sub_1002F5958, (&v117 - 4), v107);
      v101 = v152;
      v110 = v109;

      v102 = v154;
      if (v110)
      {
        v111 = *(v110 + 16);
        if (v111)
        {
          v101 = sub_10008C8B4(*(v110 + 16), 0);
          v112 = sub_1004A2330(&v155, &v101[(*(v152 + 80) + 32) & ~*(v152 + 80)], v111, v110);
          sub_1002204D4();
          if (v112 != v111)
          {
            __break(1u);
            goto LABEL_18;
          }
        }

        else
        {
        }

        (*(v152 + 8))(v103, v104);
        goto LABEL_21;
      }
    }

LABEL_18:
    (*(v101 + 1))(v103, v104);
    goto LABEL_21;
  }

LABEL_24:
  __break(1u);
  return result;
}

void sub_1004AB5C8(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for FMIPConfigValue();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7 - 8);
  v56 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for FMIPItem();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v13;
  v14 = type metadata accessor for FMIPItemImageSize();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v18, enum case for FMIPItemImageSize.list(_:), v14, v16);

  v55 = sub_1001C8A1C(a1, v18, 0);

  (*(v15 + 8))(v18, v14);
  [a2 coordinate];
  v20 = v19;
  v22 = v21;
  [a2 horizontalAccuracy];
  v24 = v23;
  v54 = v23;
  v49 = v11;
  v53 = *(v11 + 16);
  v53(v13, a1, v10);
  v25 = objc_allocWithZone(type metadata accessor for FMItemAnnotation());
  v26 = OBJC_IVAR____TtC6FindMy16FMItemAnnotation_itemImage;
  *&v25[OBJC_IVAR____TtC6FindMy16FMItemAnnotation_itemImage] = 0;
  v27 = OBJC_IVAR____TtC6FindMy16FMItemAnnotation_updateQueue;
  sub_10000905C(0, &qword_1006AEDC0);
  static DispatchQoS.userInteractive.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v57 + 104))(v58, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v59);
  *&v25[v27] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v28 = v10;
  v29 = v52;
  sub_10007EBC0(&unk_1006C2450);
  v30 = swift_allocObject();
  *(v30 + ((*(*v30 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v53((v30 + *(*v30 + class metadata base offset for ManagedBuffer + 16)), v29, v28);
  *&v25[OBJC_IVAR____TtC6FindMy16FMItemAnnotation_itemLock] = v30;
  v31 = *&v25[v26];
  v32 = v55;
  *&v25[v26] = v55;
  v33 = v32;

  v34 = &v25[OBJC_IVAR____TtC6FindMy16FMItemAnnotation_tempCoordinate];
  *v34 = v20;
  v34[1] = v22;
  if ((*&v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v24 < 9.22337204e18)
  {
    v36 = v50;
    v35 = v51;
    v37 = v48;
    (*(v50 + 104))(v48, enum case for FMIPConfigValue.inaccuracyRadiusThreshold(_:), v51);
    v61 = 0x7FFFFFFFFFFFFFFFLL;
    FMIPGlobalConfig<A>(_:fallback:)();
    (*(v36 + 8))(v37, v35);
    v38 = v62;
    v39 = &v25[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
    *v39 = 0;
    v39[1] = 0;
    *&v25[OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage] = 0;
    *&v25[OBJC_IVAR____TtC6FindMy12FMAnnotation_stewieBadgeImage] = 0;
    *&v25[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier] = xmmword_100554BC0;
    v40 = &v25[OBJC_IVAR____TtC6FindMy12FMAnnotation_coordinate];
    *v40 = v20;
    v40[1] = v22;
    *&v25[OBJC_IVAR____TtC6FindMy12FMAnnotation_horizontalAccuracy] = v24;
    v25[OBJC_IVAR____TtC6FindMy12FMAnnotation_isWithYou] = 0;
    v25[OBJC_IVAR____TtC6FindMy12FMAnnotation_isInaccurate] = v38 < v24;
    v25[OBJC_IVAR____TtC6FindMy12FMAnnotation_isLive] = 0;
    v41 = type metadata accessor for FMAnnotation();
    v60.receiver = v25;
    v60.super_class = v41;
    v42 = objc_msgSendSuper2(&v60, "init");
    v43 = FMIPItem.name.getter();
    v45 = v44;

    (*(v49 + 8))(v29, v28);
    v46 = &v42[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
    *v46 = v43;
    v46[1] = v45;

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1004ABCE4()
{
  v1 = type metadata accessor for FMIPItem();
  v49 = *(v1 - 8);
  __chkstk_darwin(v1);
  v48 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for FMIPDevice();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v47 - v11;
  v13 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v13 - 8);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v47 - v17;
  v19 = *(v0 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_beaconUUID + 8);
  if (!v19)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100005B14(v24, qword_1006D4630);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "FMTrustedLocationDetailViewController: no beacon UUID", v27, 2u);
    }

    return 0;
  }

  v47 = v1;
  v20 = *(v0 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_beaconUUID);
  v50 = v12;

  sub_1000E5180(v20, v19, v18);

  v21 = v50;

  sub_1000E5FF8(v20, v19, v21);

  sub_100007204(v18, v15, &unk_1006BBCE0);
  if ((*(v4 + 48))(v15, 1, v3) == 1)
  {
    sub_100012DF0(v15, &unk_1006BBCE0);
    sub_100007204(v21, v9, &qword_1006B07D0);
    v22 = v49;
    v23 = v47;
    if ((*(v49 + 48))(v9, 1, v47) == 1)
    {
      sub_100012DF0(v9, &qword_1006B07D0);
      sub_100012DF0(v50, &qword_1006B07D0);
      sub_100012DF0(v18, &unk_1006BBCE0);
      return 0;
    }

    v38 = v48;
    (*(v22 + 32))(v48, v9, v23);
    v39 = [objc_opt_self() mainBundle];
    v52._object = 0x800000010057D660;
    v40._countAndFlagsBits = 0xD000000000000032;
    v40._object = 0x800000010059BBE0;
    v41.value._object = 0x800000010057D640;
    v52._countAndFlagsBits = 0xD00000000000001BLL;
    v41.value._countAndFlagsBits = 0xD000000000000016;
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v40, v41, v39, v42, v52);

    sub_10007EBC0(&unk_1006B20B0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_100552220;
    v44 = FMIPItem.name.getter();
    v46 = v45;
    *(v43 + 56) = &type metadata for String;
    *(v43 + 64) = sub_10008EE84();
    *(v43 + 32) = v44;
    *(v43 + 40) = v46;
    v37 = String.init(format:_:)();

    (*(v22 + 8))(v38, v23);
    sub_100012DF0(v50, &qword_1006B07D0);
    sub_100012DF0(v18, &unk_1006BBCE0);
  }

  else
  {
    (*(v4 + 32))(v6, v15, v3);
    v29 = [objc_opt_self() mainBundle];
    v51._object = 0x800000010057D660;
    v30._countAndFlagsBits = 0xD000000000000034;
    v30._object = 0x800000010059BC20;
    v31.value._object = 0x800000010057D640;
    v51._countAndFlagsBits = 0xD00000000000001BLL;
    v31.value._countAndFlagsBits = 0xD000000000000016;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v30, v31, v29, v32, v51);

    sub_10007EBC0(&unk_1006B20B0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_100552220;
    v34 = FMIPDevice.name.getter();
    v36 = v35;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_10008EE84();
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    v37 = String.init(format:_:)();

    (*(v4 + 8))(v6, v3);
    sub_100012DF0(v21, &qword_1006B07D0);
    sub_100012DF0(v18, &unk_1006BBCE0);
  }

  return v37;
}

id sub_1004AC438(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v120 = a6;
  v119 = a5;
  v117 = a4;
  v115 = a3;
  v116 = a2;
  v140 = a1;
  v129 = type metadata accessor for FMFDevice();
  v124 = *(v129 - 8);
  __chkstk_darwin(v129);
  v128 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&qword_1006B68E8);
  __chkstk_darwin(v8 - 8);
  v114 = &v113 - v9;
  v10 = sub_10007EBC0(&qword_1006AF748);
  v11 = __chkstk_darwin(v10 - 8);
  v123 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v121 = &v113 - v14;
  __chkstk_darwin(v13);
  v118 = &v113 - v15;
  v139 = type metadata accessor for FMIPSafeLocationApprovalState();
  v16 = *(v139 - 8);
  v17 = __chkstk_darwin(v139);
  v141 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v138 = &v113 - v19;
  v145 = type metadata accessor for FMIPSafeLocation();
  v20 = *(v145 - 8);
  v21 = __chkstk_darwin(v145);
  v127 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v113 - v24;
  v26 = __chkstk_darwin(v23);
  v147 = &v113 - v27;
  v28 = __chkstk_darwin(v26);
  v137 = &v113 - v29;
  __chkstk_darwin(v28);
  v31 = &v113 - v30;
  v122 = v6;
  v126 = *(v6 + OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator);

  v32 = FMIPManager.safeLocations.getter();

  v34 = *(v32 + 16);
  v143 = v20;
  v136 = v34;
  if (v34)
  {
    v35 = 0;
    v134 = v20 + 16;
    v133 = enum case for FMIPSafeLocationApprovalState.accepted(_:);
    v132 = (v16 + 104);
    v131 = (v16 + 8);
    v125 = (v20 + 8);
    v130 = (v20 + 32);
    v36 = _swiftEmptyArrayStorage;
    v37 = v145;
    v135 = v32;
    v38 = v139;
    while (v35 < *(v32 + 16))
    {
      v144 = v36;
      v146 = ((*(v20 + 80) + 32) & ~*(v20 + 80));
      v142 = *(v20 + 72);
      (*(v20 + 16))(v31, v146 + v32 + v142 * v35, v37);
      v39 = v138;
      FMIPSafeLocation.approvalState.getter();
      v40 = v31;
      v41 = v141;
      (*v132)(v141, v133, v38);
      sub_10000A6F0(&qword_1006C1F20, &type metadata accessor for FMIPSafeLocationApprovalState);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v42 = *v131;
      (*v131)(v41, v38);
      v42(v39, v38);
      if (v148 == v150)
      {
        v43 = *v130;
        (*v130)(v137, v40, v37);
        v36 = v144;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v149 = v36;
        v31 = v40;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1001670D4(0, v36[2] + 1, 1);
          v36 = v149;
        }

        v32 = v135;
        v46 = v36[2];
        v45 = v36[3];
        if (v46 >= v45 >> 1)
        {
          sub_1001670D4(v45 > 1, v46 + 1, 1);
          v36 = v149;
        }

        v36[2] = v46 + 1;
        v37 = v145;
        result = v43(v146 + v36 + v46 * v142, v137, v145);
      }

      else
      {
        result = (*v125)(v40, v37);
        v36 = v144;
        v31 = v40;
        v32 = v135;
      }

      ++v35;
      v20 = v143;
      if (v136 == v35)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

  v36 = _swiftEmptyArrayStorage;
  v37 = v145;
LABEL_13:

  v139 = v36[2];
  if (!v139)
  {
    v138 = _swiftEmptyArrayStorage;
LABEL_30:

    v67 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_assignedSafeLocations;
    v68 = v122;
    swift_beginAccess();
    v69 = v140;
    *(v68 + v67) = v140;

    v70 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_suggestedSafeLocations;
    swift_beginAccess();
    v71 = v138;
    *(v68 + v70) = v138;

    v72 = *(v68 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_trustedLocationsSection);
    sub_10032FEF4(v69);
    v73 = *(v68 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_suggestionsSection);
    sub_1004E9200(v71);

    v74 = *(v68 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindSwitch);
    *(v74 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isOn) = v115 & 1;
    [*(v74 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_settingSwitch) setOn:?];
    *(v74 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isEnabled) = v116 & 1;
    sub_10014B454();
    v75 = (v68 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_beaconUUID);
    v76 = v117;
    v77 = v119;
    *v75 = v117;
    *(v75 + 1) = v77;

    v78 = (v73 + OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_beaconUUID);
    *v78 = v76;
    v78[1] = v77;

    v79 = v120;
    *(v73 + OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_groupBeaconUUIDs) = v120;

    v80 = (v72 + OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_beaconUUID);
    *v80 = v76;
    v80[1] = v77;

    *(v72 + OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_groupBeaconUUIDs) = v79;

    v81 = v118;
    dispatch thunk of FMFManager.myInfo.getter();

    v82 = type metadata accessor for FMFMyInfo();
    v83 = *(v82 - 8);
    v146 = *(v83 + 48);
    v147 = (v83 + 48);
    if (v146(v81, 1, v82) == 1)
    {
      sub_100012DF0(v81, &qword_1006AF748);
      v84 = 0;
      v85 = 0;
    }

    else
    {
      v84 = FMFMyInfo.meDeviceId.getter();
      v85 = v86;
      (*(v83 + 8))(v81, v82);
    }

    v87 = v121;

    dispatch thunk of FMFManager.myInfo.getter();

    if (v146(v87, 1, v82) == 1)
    {
      sub_100012DF0(v87, &qword_1006AF748);
      if (!v85)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v88 = FMFMyInfo.deviceId.getter();
      v90 = v89;
      (*(v83 + 8))(v87, v82);
      if (!v85)
      {
        if (!v90)
        {
LABEL_44:
          v91 = 1;
          goto LABEL_47;
        }

        v91 = 0;
LABEL_46:

LABEL_47:

        v92 = dispatch thunk of FMFManager.devices.getter();

        if (v92)
        {
          LODWORD(v140) = v91;
          v141 = v75;
          v144 = *(v92 + 16);
          v145 = v82;
          if (v144)
          {
            v93 = 0;
            v143 = v92 + ((*(v124 + 80) + 32) & ~*(v124 + 80));
            v142 = v124 + 16;
            v94 = (v83 + 8);
            v95 = (v124 + 8);
            while (1)
            {
              if (v93 >= *(v92 + 16))
              {
                goto LABEL_69;
              }

              (*(v124 + 16))(v128, v143 + *(v124 + 72) * v93, v129);
              v96 = FMFDevice.identifier.getter();
              v98 = v97;

              v99 = v123;
              dispatch thunk of FMFManager.myInfo.getter();

              v100 = v145;
              if (v146(v99, 1, v145) == 1)
              {
                break;
              }

              v101 = FMFMyInfo.meDeviceId.getter();
              v103 = v102;
              (*v94)(v99, v100);
              if (!v103)
              {
                goto LABEL_51;
              }

              if (v96 == v101 && v103 == v98)
              {

LABEL_64:

                v107 = v124;
                v108 = v114;
                v109 = v129;
                (*(v124 + 32))(v114, v128, v129);
                (*(v107 + 56))(v108, 0, 1, v109);
                sub_100012DF0(v108, &qword_1006B68E8);
                if ((v140 & 1) == 0 && *(v141 + 1))
                {
                  v110 = v122;
                  [*(v122 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_nonMeDescriptionPadView) setHidden:0];
                  v111 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_contentStackView;
                  v112 = *(v110 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindDescription);
                  [*(v110 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_contentStackView) setCustomSpacing:v112 afterView:6.0];
                  return [*(v110 + v111) setCustomSpacing:v112 afterView:12.0];
                }

                goto LABEL_62;
              }

              v104 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v104)
              {
                goto LABEL_64;
              }

LABEL_52:
              ++v93;
              result = (*v95)(v128, v129);
              if (v144 == v93)
              {
                goto LABEL_60;
              }
            }

            sub_100012DF0(v99, &qword_1006AF748);
LABEL_51:

            goto LABEL_52;
          }

LABEL_60:
        }

        v105 = v114;
        (*(v124 + 56))(v114, 1, 1, v129);
        sub_100012DF0(v105, &qword_1006B68E8);
LABEL_62:
        v106 = v122;
        [*(v122 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_nonMeDescriptionPadView) setHidden:1];
        return [*(v106 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_contentStackView) setCustomSpacing:*(v106 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindDescription) afterView:24.0];
      }

      if (v90)
      {
        if (v84 == v88 && v85 == v90)
        {

          v91 = 1;
        }

        else
        {
          v91 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        goto LABEL_46;
      }
    }

    v91 = 0;
    goto LABEL_46;
  }

  v47 = 0;
  v146 = (v20 + 16);
  v48 = (v20 + 8);
  v137 = (v20 + 32);
  v138 = _swiftEmptyArrayStorage;
  v144 = v36;
  while (v47 < v36[2])
  {
    v49 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v50 = *(v20 + 72);
    v142 = v47 + 1;
    v51 = *(v20 + 16);
    v51(v147, v36 + v49 + v50 * v47, v37);
    v52 = *(v140 + 16);
    v141 = v49;
    v53 = v140 + v49;
    v54 = v52 + 1;
    while (--v54)
    {
      v51(v25, v53, v37);
      v57 = FMIPSafeLocation.identifier.getter();
      v59 = v58;
      if (v57 == FMIPSafeLocation.identifier.getter() && v59 == v60)
      {

        v56 = *v48;
        v37 = v145;
        (*v48)(v25, v145);
LABEL_15:
        result = (v56)(v147, v37);
        v20 = v143;
        v36 = v144;
        goto LABEL_16;
      }

      v53 += v50;
      v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v56 = *v48;
      v37 = v145;
      (*v48)(v25, v145);
      if (v55)
      {
        goto LABEL_15;
      }
    }

    v61 = *v137;
    (*v137)(v127, v147, v37);
    v62 = v138;
    v63 = swift_isUniquelyReferenced_nonNull_native();
    v64 = v62;
    v149 = v62;
    if ((v63 & 1) == 0)
    {
      sub_1001670D4(0, *(v62 + 2) + 1, 1);
      v64 = v149;
    }

    v66 = *(v64 + 2);
    v65 = *(v64 + 3);
    v36 = v144;
    if (v66 >= v65 >> 1)
    {
      sub_1001670D4(v65 > 1, v66 + 1, 1);
      v36 = v144;
      v64 = v149;
    }

    *(v64 + 2) = v66 + 1;
    v138 = v64;
    result = v61(&v141[v64 + v66 * v50], v127, v37);
    v20 = v143;
LABEL_16:
    v47 = v142;
    if (v142 == v139)
    {
      goto LABEL_30;
    }
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

void sub_1004AD4AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_10000905C(0, &qword_1006B4980);
    v7 = *&v6[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindSwitch];
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      v9 = [objc_opt_self() standardUserDefaults];
      v10 = String._bridgeToObjectiveC()();
      v11 = [v9 BOOLForKey:v10];

      if (v11)
      {
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        sub_100005B14(v12, qword_1006D4630);
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v13, v14, "FMItemNotificationsView:  User toggled notify when left behind switch", v15, 2u);
        }

        v16 = &v6[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_delegate];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v17 = *(v16 + 1);
          ObjectType = swift_getObjectType();
          (*(v17 + 8))(v6, a4 & 1, ObjectType, v17);

          swift_unknownObjectRelease();
          return;
        }
      }

      else
      {
        sub_1004AEF64();
      }
    }
  }
}

void sub_1004AD6DC(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindSwitch);
    *(v5 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isOn) = (a3 & 1) == 0;
    v6 = Strong;
    [*(v5 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_settingSwitch) setOn:?];
  }
}

uint64_t sub_1004AD79C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPSeparationEvent();
  v37 = *(v4 - 8);
  __chkstk_darwin(v4);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMIPSafeLocationType();
  v40 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v39 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v38 = &v33 - v9;
  v10 = type metadata accessor for FMIPSafeLocation();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_assignedSafeLocations;
  swift_beginAccess();
  v15 = *(a1 + v14);

  v16 = sub_1004A8014(a2, v15, &type metadata accessor for FMIPSafeLocation, &qword_1006B7AB0, &type metadata accessor for FMIPSafeLocation);

  if (v16)
  {
    v18 = *(v11 + 16);
    v35 = a2;
    v18(v13, a2, v10);
    v19 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_suggestedSafeLocations;
    swift_beginAccess();
    v20 = *(a1 + v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v19) = v20;
    v34 = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_10008BAF0(0, v20[2] + 1, 1, v20);
      *(a1 + v19) = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_10008BAF0(v22 > 1, v23 + 1, 1, v20);
    }

    v20[2] = v23 + 1;
    (*(v11 + 32))(v20 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v23, v13, v10);
    *(a1 + v19) = v20;
    v24 = swift_endAccess();
    __chkstk_darwin(v24);
    *(&v33 - 2) = v35;
    swift_beginAccess();
    result = sub_1004AF610(sub_1004B07BC, (&v33 - 4));
    v25 = *(*(a1 + v14) + 16);
    if (v25 < result)
    {
      __break(1u);
    }

    else
    {
      sub_1003D02F8(result, v25);
      swift_endAccess();
      v26 = v38;
      FMIPSafeLocation.type.getter();
      v28 = v39;
      v27 = v40;
      (*(v40 + 104))(v39, enum case for FMIPSafeLocationType.home(_:), v6);
      sub_10000A6F0(&qword_1006B1320, &type metadata accessor for FMIPSafeLocationType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v29 = *(v27 + 8);
      v29(v28, v6);
      v29(v26, v6);
      if (v42 == v41)
      {
        v30 = v36;
        FMIPSeparationEvent.init(itemOrDeviceCount:addSafeLocationTapped:addToAllTapped:homeRemoved:)();

        FMIPManager.enqueue(separationEvent:)();
        (*(v37 + 8))(v30, v34);
      }

      sub_10032FEF4(v31);

      sub_1004E9200(v32);
    }
  }

  return result;
}

uint64_t sub_1004ADD04(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  v13[2] = v2;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_1004B0350;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100641BE0;
  v14 = _Block_copy(aBlock);
  v15 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A6F0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v18);
}

uint64_t sub_1004ADFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007EBC0(&unk_1006BB1B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for FMIPSafeLocation();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v26 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v25 - v13;
  v15 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_suggestedSafeLocations;
  swift_beginAccess();

  v16 = sub_1004B035C((a1 + v15), a2, a3);

  v17 = *(*(a1 + v15) + 16);
  if (v17 < v16)
  {
    __break(1u);
LABEL_10:
    v16 = sub_10008BAF0(0, *(v16 + 2) + 1, 1, v16);
    *&v8[a1] = v16;
    goto LABEL_5;
  }

  sub_1003D02F8(v16, v17);
  swift_endAccess();

  sub_1000E65EC(a2, a3, v8);

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100012DF0(v8, &unk_1006BB1B0);
    goto LABEL_8;
  }

  v18 = *(v10 + 32);
  v18(v14, v8, v9);
  (*(v10 + 16))(v26, v14, v9);
  v8 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_assignedSafeLocations;
  swift_beginAccess();
  v16 = *&v8[a1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v8[a1] = v16;
  v25 = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v21 = *(v16 + 2);
  v20 = *(v16 + 3);
  if (v21 >= v20 >> 1)
  {
    v16 = sub_10008BAF0(v20 > 1, v21 + 1, 1, v16);
  }

  *(v16 + 2) = v21 + 1;
  v25(&v16[((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v21], v26, v9);
  *&v8[a1] = v16;
  swift_endAccess();
  (*(v10 + 8))(v14, v9);
LABEL_8:
  swift_beginAccess();

  sub_10032FEF4(v22);

  sub_1004E9200(v23);
}

uint64_t sub_1004AE3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v22[1] = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v26 = *(v8 - 8);
  v27 = v8;
  __chkstk_darwin(v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMIPSafeLocation();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v15 = static OS_dispatch_queue.main.getter();
  (*(v12 + 16))(v14, a1, v11);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = swift_allocObject();
  v18 = v23;
  *(v17 + 16) = v23;
  (*(v12 + 32))(v17 + v16, v14, v11);
  aBlock[4] = v24;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = v25;
  v19 = _Block_copy(aBlock);
  v20 = v18;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A6F0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v28 + 8))(v7, v5);
  return (*(v26 + 8))(v10, v27);
}

uint64_t sub_1004AE720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPSafeLocation();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_assignedSafeLocations;
  swift_beginAccess();
  v9 = *(a1 + v8);

  v10 = sub_1004A8014(a2, v9, &type metadata accessor for FMIPSafeLocation, &qword_1006B7AB0, &type metadata accessor for FMIPSafeLocation);

  if (!v10)
  {
    (*(v5 + 16))(v7, a2, v4);
    swift_beginAccess();
    v12 = *(a1 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v8) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_10008BAF0(0, v12[2] + 1, 1, v12);
      *(a1 + v8) = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_10008BAF0(v14 > 1, v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    (*(v5 + 32))(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, v7, v4);
    *(a1 + v8) = v12;
    swift_endAccess();

    sub_10032FEF4(v16);
  }

  return result;
}

uint64_t sub_1004AE988(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPSafeLocation();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a2;
  v8 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_assignedSafeLocations;
  swift_beginAccess();
  v9 = 0;
  v10 = sub_1004AF610(sub_1004B0318, v17);
  v11 = *(*(a1 + v8) + 16);
  if (v11 < v10)
  {
    __break(1u);
  }

  else
  {
    sub_1003D02F8(v10, v11);
    (*(v5 + 16))(v7, a2, v4);
    v9 = *(a1 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v8) = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  v9 = sub_10008BAF0(0, v9[2] + 1, 1, v9);
  *(a1 + v8) = v9;
LABEL_3:
  v14 = v9[2];
  v13 = v9[3];
  if (v14 >= v13 >> 1)
  {
    v9 = sub_10008BAF0(v13 > 1, v14 + 1, 1, v9);
  }

  v9[2] = v14 + 1;
  (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v7, v4);
  *(a1 + v8) = v9;
  swift_endAccess();

  sub_10032FEF4(v15);
}

uint64_t sub_1004AEBB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPSafeLocation();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_assignedSafeLocations;
  swift_beginAccess();
  v9 = *(a1 + v8);

  v10 = sub_1004A8014(a2, v9, &type metadata accessor for FMIPSafeLocation, &qword_1006B7AB0, &type metadata accessor for FMIPSafeLocation);

  if (!v10)
  {
    (*(v5 + 16))(v7, a2, v4);
    swift_beginAccess();
    v12 = *(a1 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v8) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_10008BAF0(0, v12[2] + 1, 1, v12);
      *(a1 + v8) = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_10008BAF0(v14 > 1, v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    (*(v5 + 32))(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, v7, v4);
    *(a1 + v8) = v12;
    v16 = swift_endAccess();
    __chkstk_darwin(v16);
    *&v21[-16] = a2;
    v17 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_suggestedSafeLocations;
    swift_beginAccess();
    result = sub_1004AF610(sub_1004B07BC, &v21[-32]);
    v18 = *(*(a1 + v17) + 16);
    if (v18 < result)
    {
      __break(1u);
    }

    else
    {
      sub_1003D02F8(result, v18);
      swift_endAccess();

      sub_10032FEF4(v19);

      sub_1004E9200(v20);
    }
  }

  return result;
}

uint64_t sub_1004AEEB4()
{
  v0 = FMIPSafeLocation.identifier.getter();
  v2 = v1;
  if (v0 == FMIPSafeLocation.identifier.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

void sub_1004AEF64()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator];
  v3 = type metadata accessor for FMSeparationWelcomeScreenViewController();
  v4 = objc_allocWithZone(v3);
  v5 = swift_retain_n();
  v6 = sub_1004DEC88(v5, 0);
  v7 = objc_allocWithZone(v3);
  v8 = sub_1004DEC88(v2, 1);
  *&v8[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_delegate + 8] = &off_100641A28;
  swift_unknownObjectWeakAssign();
  sub_10007EBC0(&qword_1006AFC30);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100552EE0;
  *(v9 + 32) = v6;
  *(v9 + 40) = v8;
  v10 = objc_allocWithZone(type metadata accessor for FMPageViewController());
  v11 = v6;
  v12 = v8;
  v13 = sub_100141E10(v2, v9);
  v14 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v13];
  [v1 presentViewController:v14 animated:1 completion:0];
  v15 = [objc_opt_self() standardUserDefaults];
  v16 = String._bridgeToObjectiveC()();
  [v15 setBool:1 forKey:v16];
}

uint64_t sub_1004AF148()
{
  v1 = v0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMItemNotificationsView:  User toggled notify when left behind switch", v5, 2u);
  }

  v6 = v1 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(v1, 1, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004AF290()
{
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_delegate);
}

id sub_1004AF394()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMTrustedLocationDetailViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004AF4FC(void *a1, char a2)
{
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a2;
  v8 = a1;
  sub_1000C5474(sub_1004AF9B4, v5, sub_1004AF9C0, v7);
}

uint64_t sub_1004AF610(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = type metadata accessor for FMIPSafeLocation();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v39 - v11;
  __chkstk_darwin(v10);
  v14 = &v39 - v13;
  v15 = *v2;
  v16 = v53;
  result = sub_1004B2280(a1, a2, *v2);
  if (!v16)
  {
    v49 = v14;
    v53 = 0;
    if (v18)
    {
      return *(v15 + 16);
    }

    v19 = v5;
    v41 = v9;
    v42 = v12;
    v46 = a1;
    v40 = v2;
    v51 = result;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = v15;
      v23 = (v15 + 16);
      v22 = *(v15 + 16);
      v24 = v49;
      if (v20 == v22)
      {
        return v51;
      }

      v25 = v19;
      v48 = v6 + 16;
      v44 = v6;
      v45 = (v6 + 8);
      v39 = (v6 + 40);
      v43 = a2;
      while (v20 < v22)
      {
        v26 = *(v6 + 80);
        v52 = v21;
        v47 = (v26 + 32) & ~v26;
        v27 = v21 + v47;
        v28 = *(v6 + 72);
        v29 = *(v6 + 16);
        v50 = v28 * v20;
        v29(v24, &v27[v28 * v20], v25);
        v30 = v53;
        v31 = v46(v24);
        v53 = v30;
        if (v30)
        {
          return (*v45)(v24, v25);
        }

        v32 = v31;
        result = (*v45)(v24, v25);
        if (v32)
        {
          v6 = v44;
          v24 = v49;
          v21 = v52;
        }

        else
        {
          v33 = v51;
          if (v20 == v51)
          {
            v6 = v44;
            v24 = v49;
            v21 = v52;
          }

          else
          {
            if ((v51 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v34 = *v23;
            if (v51 >= v34)
            {
              goto LABEL_27;
            }

            v35 = v28 * v51;
            result = (v29)(v42, &v27[v35], v25);
            if (v20 >= v34)
            {
              goto LABEL_28;
            }

            v36 = v41;
            v29(v41, &v27[v50], v25);
            v21 = v52;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v21 = sub_1000BF59C(v21);
            }

            v37 = v21 + v47;
            v38 = *v39;
            result = (*v39)(v21 + v47 + v35, v36, v25);
            v6 = v44;
            if (v20 >= v21[2])
            {
              goto LABEL_29;
            }

            result = v38(&v37[v50], v42, v25);
            *v40 = v21;
            v33 = v51;
            v24 = v49;
          }

          v51 = v33 + 1;
        }

        ++v20;
        v23 = v21 + 2;
        v22 = v21[2];
        if (v20 == v22)
        {
          return v51;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1004AF9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for FMIPSafeLocation() - 8);
  v9 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (FMIPSafeLocation.identifier.getter() != a2 || v11 != a3)
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      return v7;
    }

    ++v7;
    v9 += v10;
    if (v3 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void sub_1004AFB10()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_scrollView;
  *(v1 + v2) = [objc_allocWithZone(UIScrollView) init];
  v3 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_contentStackView;
  *(v1 + v3) = [objc_allocWithZone(UIStackView) init];
  *(v1 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindImageView;
  sub_10000905C(0, &qword_1006BC2B0);
  v5 = sub_1003DE3DC(0xD00000000000001ALL, 0x8000000100586BE0, 6778480, 0xE300000000000000);
  v6 = [objc_allocWithZone(UIImageView) initWithImage:v5];

  *(v1 + v4) = v6;
  v7 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindDescription;
  *(v1 + v7) = [objc_allocWithZone(UILabel) init];
  v8 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_trustedLocationsDescription;
  *(v1 + v8) = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindSwitchSection;
  *(v1 + v9) = [objc_allocWithZone(type metadata accessor for FMSectionPlatterGroupView()) init];
  v10 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindSwitch;
  *(v1 + v10) = [objc_allocWithZone(type metadata accessor for FMSettingSwitchView()) init];
  v11 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_nonMeDescriptionPadView;
  *(v1 + v11) = [objc_allocWithZone(UIView) init];
  *(v1 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_assignedSafeLocations) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_suggestedSafeLocations) = _swiftEmptyArrayStorage;
  v12 = (v1 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_beaconUUID);
  *v12 = 0;
  v12[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1004AFD20()
{
  v1 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_scrollView;
  [*&v0[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_scrollView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_contentStackView;
  [*&v0[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_contentStackView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindImageView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindDescription] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindSwitchSection] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_trustedLocationsSection] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_suggestionsSection] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_trustedLocationsDescription] setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  v5 = [v3 bottomAnchor];

  sub_10007EBC0(&qword_1006AFC30);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1005521F0;
  v7 = *&v0[v1];
  v44 = v5;
  v8 = [v7 leadingAnchor];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v9;
  v11 = [v9 leadingAnchor];

  v12 = [v8 constraintEqualToAnchor:v11];
  *(v6 + 32) = v12;
  v13 = [*&v0[v1] trailingAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  v16 = [v14 trailingAnchor];

  v17 = [v13 constraintEqualToAnchor:v16];
  *(v6 + 40) = v17;
  v18 = [*&v0[v1] topAnchor];
  v19 = [v0 view];
  if (!v19)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v20 = v19;
  v43 = objc_opt_self();
  v21 = [v20 safeAreaLayoutGuide];

  v22 = [v21 topAnchor];
  v23 = [v18 constraintEqualToAnchor:v22];

  *(v6 + 48) = v23;
  v24 = [*&v0[v1] bottomAnchor];
  v25 = [v24 constraintEqualToAnchor:v44 constant:0.0];

  *(v6 + 56) = v25;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v43 activateConstraints:isa];

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1005521F0;
  v28 = [*&v0[v2] topAnchor];
  v29 = [*&v0[v1] topAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  *(v27 + 32) = v30;
  v31 = [*&v0[v2] bottomAnchor];
  v32 = [*&v0[v1] bottomAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v27 + 40) = v33;
  v34 = [*&v0[v2] leadingAnchor];
  v35 = [*&v0[v1] layoutMarginsGuide];
  v36 = [v35 leadingAnchor];

  v37 = [v34 constraintEqualToAnchor:v36];
  *(v27 + 48) = v37;
  v38 = [*&v0[v2] trailingAnchor];
  v39 = [*&v0[v1] layoutMarginsGuide];
  v40 = [v39 trailingAnchor];

  v41 = [v38 constraintEqualToAnchor:v40];
  *(v27 + 56) = v41;
  v42 = Array._bridgeToObjectiveC()().super.isa;

  [v43 activateConstraints:v42];
}

uint64_t sub_1004B035C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMIPSafeLocation();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v40 - v12;
  __chkstk_darwin(v11);
  v15 = &v40 - v14;
  v16 = *a1;
  v17 = v54;
  result = sub_1004AF9E4(*a1, a2, a3);
  if (v17)
  {
    return result;
  }

  v53 = v15;
  v50 = a2;
  v44 = 0;
  if (v19)
  {
    return v16[2];
  }

  v45 = v13;
  v46 = result;
  v42 = a1;
  v43 = v10;
  v20 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_32;
  }

  v22 = v16 + 2;
  v21 = v16[2];
  v23 = v53;
  if (v20 == v21)
  {
    return v46;
  }

  v51 = v7 + 16;
  v47 = v7;
  v48 = (v7 + 8);
  v41 = (v7 + 40);
  while (v20 < v21)
  {
    v24 = *(v7 + 80);
    v54 = v16;
    v49 = (v24 + 32) & ~v24;
    v25 = v16 + v49;
    v26 = *(v7 + 72);
    v27 = *(v7 + 16);
    v52 = v26 * v20;
    v27(v23, &v25[v26 * v20], v6);
    if (FMIPSafeLocation.identifier.getter() == v50 && v28 == a3)
    {

      v23 = v53;
      result = (*v48)(v53, v6);
      v7 = v47;
LABEL_10:
      v16 = v54;
      goto LABEL_11;
    }

    v29 = a3;
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = (*v48)(v53, v6);
    if (v30)
    {
      a3 = v29;
      v7 = v47;
      v23 = v53;
      goto LABEL_10;
    }

    v31 = v46;
    if (v20 == v46)
    {
      a3 = v29;
      v7 = v47;
      v16 = v54;
    }

    else
    {
      if ((v46 & 0x8000000000000000) != 0)
      {
        goto LABEL_28;
      }

      v32 = *v22;
      if (v46 >= v32)
      {
        goto LABEL_29;
      }

      a3 = v29;
      v33 = v26 * v46;
      result = (v27)(v45, &v25[v33], v6);
      if (v20 >= v32)
      {
        goto LABEL_30;
      }

      v34 = &v25[v52];
      v35 = v43;
      v27(v43, v34, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_1000BF59C(v54);
      }

      v36 = v45;
      v37 = v54 + v49;
      v38 = *v41;
      v39 = v54 + v49 + v33;
      v16 = v54;
      result = (*v41)(v39, v35, v6);
      if (v20 >= v16[2])
      {
        goto LABEL_31;
      }

      result = v38(&v37[v52], v36, v6);
      *v42 = v16;
      v31 = v46;
      v7 = v47;
    }

    v46 = v31 + 1;
    v23 = v53;
LABEL_11:
    ++v20;
    v22 = v16 + 2;
    v21 = v16[2];
    if (v20 == v21)
    {
      return v46;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1004B0730(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for FMIPSafeLocation() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

void sub_1004B08A8()
{
  [v0 setDismissalType:3];
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v28._object = 0x80000001005797A0;
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x800000010059BD80;
  v4.value._object = 0x8000000100579780;
  v28._countAndFlagsBits = 0xD000000000000015;
  v4.value._countAndFlagsBits = 0xD000000000000010;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v28);

  v6 = String._bridgeToObjectiveC()();

  [v0 setTitle:v6];

  v7 = [v1 mainBundle];
  v29._object = 0x80000001005797A0;
  v8._countAndFlagsBits = 0xD000000000000022;
  v8._object = 0x800000010059BDA0;
  v9.value._object = 0x8000000100579780;
  v29._countAndFlagsBits = 0xD000000000000015;
  v9.value._countAndFlagsBits = 0xD000000000000010;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v29);

  v11 = String._bridgeToObjectiveC()();

  [v0 setSubtitle:v11];

  v12 = [objc_opt_self() configurationWithPointSize:80.0];
  v13 = *&v0[OBJC_IVAR____TtC6FindMy30FMAccessoryDiscoveryAttachCard_imageView];
  v14 = v12;
  v15 = String._bridgeToObjectiveC()();
  v16 = [objc_opt_self() systemImageNamed:v15 withConfiguration:v14];

  [v13 setImage:v16];
  [v13 setContentMode:4];
  v17 = [v1 mainBundle];
  v30._object = 0x80000001005797A0;
  v18._countAndFlagsBits = 0xD000000000000020;
  v18._object = 0x800000010059BDD0;
  v19.value._object = 0x8000000100579780;
  v30._countAndFlagsBits = 0xD000000000000015;
  v19.value._countAndFlagsBits = 0xD000000000000010;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v30);

  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v22 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1004B11B0;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017328;
  aBlock[3] = &unk_100641CD0;
  v23 = _Block_copy(aBlock);
  v24 = objc_opt_self();

  v25 = [v24 actionWithTitle:v22 style:0 handler:v23];

  _Block_release(v23);

  v26 = [v0 addAction:v25];
}

void sub_1004B0CAC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_allocObject();
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    aBlock[4] = sub_1000822F4;
    aBlock[5] = v2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100641D20;
    v3 = _Block_copy(aBlock);

    [v1 dismissViewControllerAnimated:1 completion:v3];
    _Block_release(v3);
  }
}

void sub_1004B0DA0()
{
  v1 = v0;
  v24 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1005521F0;
  v3 = *&v1[OBJC_IVAR____TtC6FindMy30FMAccessoryDiscoveryAttachCard_imageView];
  v4 = [v3 centerXAnchor];
  v5 = [v1 contentView];
  v6 = [v5 mainContentGuide];

  v7 = [v6 centerXAnchor];
  v8 = [v4 constraintEqualToAnchor:v7];

  *(v2 + 32) = v8;
  v9 = [v3 topAnchor];
  v10 = [v1 contentView];
  v11 = [v10 mainContentGuide];

  v12 = [v11 topAnchor];
  v13 = [v9 constraintGreaterThanOrEqualToAnchor:v12];

  *(v2 + 40) = v13;
  v14 = [v3 bottomAnchor];
  v15 = [v1 contentView];
  v16 = [v15 mainContentGuide];

  v17 = [v16 bottomAnchor];
  v18 = [v14 constraintLessThanOrEqualToAnchor:v17];

  *(v2 + 48) = v18;
  v19 = [v3 centerYAnchor];
  v20 = [v1 contentView];
  v21 = [v20 mainContentGuide];

  v22 = [v21 centerYAnchor];
  v23 = [v19 constraintEqualToAnchor:v22];

  *(v2 + 56) = v23;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v24 activateConstraints:isa];
}

id sub_1004B10FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMAccessoryDiscoveryAttachCard();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1004B11C0()
{
  if (!*(v0 + OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_displayAddress + 24))
  {
    v9 = *(v0 + OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_locationLabel);
    v10 = String._bridgeToObjectiveC()();
    [v9 setText:v10];

    v11 = [objc_opt_self() secondaryLabelColor];
    [v9 setTextColor:v11];

    *(v9 + OBJC_IVAR____TtC6FindMy15FMCopyableLabel_isCopyToPasteboardEnabled) = 0;
    result = *(v0 + OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_locationLabelBottomConstraint);
    if (!result)
    {
      return result;
    }

    v8 = 0.0;
    goto LABEL_8;
  }

  v1 = *(v0 + OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_displayAddress + 32);
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_locationLabel);

  v3 = String._bridgeToObjectiveC()();

  [v2 setText:v3];

  v4 = objc_opt_self();
  v5 = &selRef_secondaryLabelColor;
  if (((v1 | ((v1 & 0x100) >> 8)) & 1) == 0)
  {
    v5 = &selRef_redColor;
  }

  v6 = [v4 *v5];
  [v2 setTextColor:v6];

  *(v2 + OBJC_IVAR____TtC6FindMy15FMCopyableLabel_isCopyToPasteboardEnabled) = v1 & 1;
  result = *(v0 + OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_locationLabelBottomConstraint);
  if (result)
  {
    v8 = -26.0;
LABEL_8:

    return [result setConstant:v8];
  }

  return result;
}

id sub_1004B1390(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for UIListContentConfiguration();
  __chkstk_darwin(v6 - 8);
  v7 = OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_locationLabel;
  type metadata accessor for FMCopyableLabel();
  *&v2[v7] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v2[OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_locationLabelBottomConstraint] = 0;
  v8 = OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_contentViewWrapper;
  sub_10000905C(0, &unk_1006C1FE0);
  static UIListContentConfiguration.header()();
  *&v2[v8] = UIListContentView.init(configuration:)();
  v9 = &v2[OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_displayAddress];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 16) = 0;
  v10 = &v2[OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_headerTitle];
  *v10 = 0;
  *(v10 + 1) = 0;
  if (a2)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v15.receiver = v3;
  v15.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v15, "initWithReuseIdentifier:", v11);

  v13 = v12;
  sub_1004B151C();
  sub_1004B16BC();

  return v13;
}

void sub_1004B151C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_locationLabel];
  [v2 setNumberOfLines:0];
  v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleHeadline];
  sub_10007EBC0(&qword_1006BA720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552220;
  *(inited + 32) = UIFontWeightTrait;
  *(inited + 40) = UIFontWeightRegular;
  v5 = UIFontWeightTrait;
  v6 = sub_10002AB84(inited);
  swift_setDeallocating();
  sub_10002AC74(inited + 32);
  v7 = sub_10002ACDC(v6);

  [v2 setFont:v7];

  v8 = [v1 contentView];
  [v8 addSubview:v2];

  v9 = *&v1[OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_contentViewWrapper];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [v1 contentView];
  [v10 addSubview:v9];
}

void sub_1004B16BC()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_locationLabel];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v1 bottomAnchor];
  v3 = *&v0[OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_contentViewWrapper];
  v4 = [v3 layoutMarginsGuide];
  v5 = [v4 topAnchor];

  v6 = [v2 constraintEqualToAnchor:v5 constant:-26.0];
  v7 = *&v0[OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_locationLabelBottomConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_locationLabelBottomConstraint] = v6;
  v8 = v6;

  v35 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100555120;
  v10 = [v1 topAnchor];
  v11 = [v0 contentView];
  v12 = [v11 topAnchor];

  v13 = [v10 constraintEqualToAnchor:v12 constant:19.0];
  *(v9 + 32) = v13;
  v14 = [v1 leadingAnchor];
  v15 = [v3 layoutMarginsGuide];
  v16 = [v15 leadingAnchor];

  v17 = [v14 constraintEqualToAnchor:v16];
  *(v9 + 40) = v17;
  v18 = [v1 trailingAnchor];
  v19 = [v3 layoutMarginsGuide];
  v20 = [v19 trailingAnchor];

  v21 = [v18 constraintEqualToAnchor:v20];
  *(v9 + 48) = v21;
  *(v9 + 56) = v8;
  v22 = v8;
  v23 = [v3 bottomAnchor];
  v24 = [v0 contentView];
  v25 = [v24 bottomAnchor];

  v26 = [v23 constraintEqualToAnchor:v25];
  *(v9 + 64) = v26;
  v27 = [v3 leadingAnchor];
  v28 = [v0 contentView];
  v29 = [v28 leadingAnchor];

  v30 = [v27 constraintEqualToAnchor:v29];
  *(v9 + 72) = v30;
  v31 = [v3 trailingAnchor];
  v32 = [v0 contentView];
  v33 = [v32 trailingAnchor];

  v34 = [v31 constraintEqualToAnchor:v33];
  *(v9 + 80) = v34;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v35 activateConstraints:isa];
}

void sub_1004B1C4C()
{
  v1 = type metadata accessor for UIListContentConfiguration();
  __chkstk_darwin(v1 - 8);
  v2 = OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_locationLabel;
  type metadata accessor for FMCopyableLabel();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_locationLabelBottomConstraint) = 0;
  v3 = OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_contentViewWrapper;
  sub_10000905C(0, &unk_1006C1FE0);
  static UIListContentConfiguration.header()();
  *(v0 + v3) = UIListContentView.init(configuration:)();
  v4 = v0 + OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_displayAddress;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  v5 = (v0 + OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_headerTitle);
  *v5 = 0;
  v5[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t (*sub_1004B1D94(uint64_t **a1, uint64_t a2))()
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
  v4[4] = sub_1004CFD48(v4, a2);
  return sub_1004B1E0C;
}

uint64_t (*sub_1004B1E10(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1004CFDF0(v6, a2, a3);
  return sub_1004D2048;
}

uint64_t (*sub_1004B1E98(uint64_t **a1, uint64_t a2))()
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
  v4[4] = sub_1004CFE9C(v4, a2);
  return sub_1004D2048;
}

uint64_t (*sub_1004B1F10(uint64_t **a1, uint64_t a2, int64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1004CFF40(v6, a2, a3);
  return sub_1004D2048;
}

void sub_1004B1F98(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1004B1FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v20 = a2;
  v5 = sub_10007EBC0(&unk_1006C2430);
  v6 = v5 - 8;
  v7 = __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(*(v12 - 8) + 16);
  v13(v11, a1, v12);
  v14 = *(v6 + 56);
  v15 = type metadata accessor for UUID();
  v16 = *(*(v15 - 8) + 16);
  v19 = v14;
  v16(&v11[v14], v20, v15);
  v13(v9, v21, v12);
  v16(&v9[*(v6 + 56)], v22, v15);
  sub_10000A738(&qword_1006C1DC0, &type metadata accessor for Date);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    sub_10000A738(&qword_1006C3960, &type metadata accessor for UUID);
  }

  else
  {
    sub_10000A738(&unk_1006C2440, &type metadata accessor for Date);
  }

  v17 = dispatch thunk of static Comparable.< infix(_:_:)();
  sub_100012DF0(v9, &unk_1006C2430);
  sub_100012DF0(v11, &unk_1006C2430);
  return v17 & 1;
}

uint64_t sub_1004B2280(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for FMIPSafeLocation() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void sub_1004B236C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v9 = v8;
    v13 = v8;
    v10 = a1(&v13);

    if (v3 || (v10 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_1004B2480(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v88 = a1;
  v5 = type metadata accessor for FMIPDevice();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v9);
  v89 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v85 - v12;
  __chkstk_darwin(v14);
  v16 = &v85 - v15;
  v92 = 0;
  v93 = 0xE000000000000000;
  v90 = v17;
  v91 = a2;
  _print_unlocked<A, B>(_:_:)();
  v19 = v92;
  v18 = v93;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100005B14(v20, qword_1006D4630);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v87 = v5;
    v24 = v23;
    v25 = swift_slowAlloc();
    v86 = v8;
    v26 = v6;
    v27 = v13;
    v28 = v3;
    v29 = v25;
    v92 = v25;
    *v24 = 136315138;
    v30 = sub_100005B4C(v19, v18, &v92);

    *(v24 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v21, v22, "FMMapViewDataSource: didUpdate selectedSection %s", v24, 0xCu);
    sub_100006060(v29);
    v3 = v28;
    v13 = v27;
    v6 = v26;
    v8 = v86;

    v5 = v87;
  }

  else
  {
  }

  swift_storeEnumTagMultiPayload();
  v31 = v91;
  v32 = sub_10005F7D0(v91, v16);
  result = sub_10002A100(v16, type metadata accessor for FMSelectedSection);
  if ((v32 & 1) == 0)
  {
    sub_1004CB330();
    sub_100027BE0(v31, v13, type metadata accessor for FMSelectedSection);
    result = swift_getEnumCaseMultiPayload();
    switch(result)
    {
      case 1:
        sub_10002A100(v13, type metadata accessor for FMSelectedSection);
        goto LABEL_21;
      case 2:
        *(v3 + 56) = 1;
        v55 = *(*(v3 + 16) + 48);
        type metadata accessor for FMPeopleSubscription();
        v56 = swift_allocObject();
        *(v56 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = 0;
        swift_unknownObjectWeakInit();

        UUID.init()();
        *(v56 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = &off_100641E68;
        swift_unknownObjectWeakAssign();
        v57 = *(v55 + 32);

        os_unfair_lock_lock((v57 + 24));
        sub_10000E7C0((v57 + 16));
        os_unfair_lock_unlock((v57 + 24));

        *(v3 + 72) = v56;

        v58 = dispatch thunk of FMFManager.friends.getter();

        if (*(v3 + 56) - 1 >= 2)
        {
          *(v3 + 57) = 0;
          sub_100012488(v58);
        }

        else
        {
          sub_1004BD720(v58);
        }

        goto LABEL_53;
      case 3:
      case 4:
        sub_10002A100(v13, type metadata accessor for FMSelectedSection);
        *(v3 + 56) = 1;
        v34 = v3;
        v35 = *(*(v3 + 16) + 24);
        type metadata accessor for FMDevicesSubscription();
        v36 = swift_allocObject();
        *(v36 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
        swift_unknownObjectWeakInit();

        UUID.init()();
        *(v36 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100641ED0;
        swift_unknownObjectWeakAssign();
        v37 = *(v35 + 16);

        os_unfair_lock_lock((v37 + 24));
        sub_100012470((v37 + 16));
        goto LABEL_31;
      case 5:
        sub_10002A100(v13, type metadata accessor for FMSelectedSection);
        *(v3 + 56) = 3;
        v34 = v3;
        v64 = *(*(v3 + 16) + 24);
        type metadata accessor for FMDevicesSubscription();
        v36 = swift_allocObject();
        *(v36 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
        swift_unknownObjectWeakInit();

        UUID.init()();
        *(v36 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100641ED0;
        swift_unknownObjectWeakAssign();
        v37 = *(v64 + 16);

        os_unfair_lock_lock((v37 + 24));
        sub_100012470((v37 + 16));
        goto LABEL_31;
      case 6:
        sub_10002A100(v13, type metadata accessor for FMSelectedSection);
        *(v3 + 56) = 3;
        v44 = v3;
        v45 = *(*(v3 + 16) + 24);
        type metadata accessor for FMDevicesSubscription();
        v46 = swift_allocObject();
        *(v46 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
        swift_unknownObjectWeakInit();

        UUID.init()();
        *(v46 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100641ED0;
        swift_unknownObjectWeakAssign();
        v47 = *(v45 + 16);

        os_unfair_lock_lock((v47 + 24));
        sub_100012470((v47 + 16));
        goto LABEL_39;
      case 7:
        *(v3 + 56) = 4;
        v65 = *(*(v3 + 16) + 24);
        type metadata accessor for FMDevicesSubscription();
        v66 = swift_allocObject();
        *(v66 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
        swift_unknownObjectWeakInit();

        UUID.init()();
        *(v66 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100641ED0;
        swift_unknownObjectWeakAssign();
        v67 = *(v65 + 16);

        os_unfair_lock_lock((v67 + 24));
        sub_10000E7C0((v67 + 16));
        os_unfair_lock_unlock((v67 + 24));

        *(v3 + 64) = v66;

        v68 = FMIPManager.devices.getter();

        v69 = *(v3 + 56);
        if (v69 <= 2)
        {
          if (v69 - 1 < 2)
          {
            sub_1004B8C00(v68);
            goto LABEL_53;
          }

          goto LABEL_51;
        }

        if (v69 == 3)
        {
LABEL_51:
          sub_1004B5834(v68);
          goto LABEL_53;
        }

        sub_1004B7458(v68);
LABEL_53:

        v54 = v13;
        return sub_10002A100(v54, type metadata accessor for FMSelectedSection);
      case 8:
        *(v3 + 56) = 2;
        v48 = *(*(v3 + 16) + 24);
        type metadata accessor for FMDevicesSubscription();
        v49 = swift_allocObject();
        *(v49 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
        swift_unknownObjectWeakInit();

        UUID.init()();
        *(v49 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100641ED0;
        swift_unknownObjectWeakAssign();
        v50 = *(v48 + 16);

        os_unfair_lock_lock((v50 + 24));
        sub_100012470((v50 + 16));
        os_unfair_lock_unlock((v50 + 24));

        *(v3 + 64) = v49;

        v51 = FMIPManager.unknownItems.getter();

        if (*(v3 + 56) - 1 >= 2)
        {
          sub_1004C5110(v51);
        }

        else
        {
          sub_1004C7204(v51);
        }

        goto LABEL_53;
      case 9:
        *(v3 + 56) = 0;
        v70 = *(*(v3 + 16) + 24);
        type metadata accessor for FMDevicesSubscription();
        v71 = swift_allocObject();
        *(v71 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
        swift_unknownObjectWeakInit();

        UUID.init()();
        *(v71 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100641ED0;
        swift_unknownObjectWeakAssign();
        v72 = *(v70 + 16);

        os_unfair_lock_lock((v72 + 24));
        sub_100012470((v72 + 16));
        os_unfair_lock_unlock((v72 + 24));

        *(v3 + 64) = v71;

        v73 = FMIPManager.unknownItems.getter();

        if (*(v3 + 56) - 1 >= 2)
        {
          sub_1004C5110(v73);
        }

        else
        {
          sub_1004C7204(v73);
        }

        goto LABEL_49;
      case 10:
        v41 = *(sub_10007EBC0(&qword_1006B6BD0) + 48);
        v42 = type metadata accessor for UUID();
        (*(*(v42 - 8) + 8))(&v13[v41], v42);
        v43 = type metadata accessor for URL();
        return (*(*(v43 - 8) + 8))(v13, v43);
      case 11:
      case 18:
        return result;
      case 12:
        *(v3 + 56) = 0;
        v44 = v3;
        v59 = *(*(v3 + 16) + 24);
        type metadata accessor for FMDevicesSubscription();
        v46 = swift_allocObject();
        *(v46 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
        swift_unknownObjectWeakInit();

        UUID.init()();
        *(v46 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100641ED0;
        swift_unknownObjectWeakAssign();
        v47 = *(v59 + 16);

        os_unfair_lock_lock((v47 + 24));
        sub_100012470((v47 + 16));
        goto LABEL_39;
      case 13:
      case 14:
        *(v3 + 56) = 1;
        v38 = *(*(v3 + 16) + 48);
        type metadata accessor for FMPeopleSubscription();
        v39 = swift_allocObject();
        *(v39 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = 0;
        swift_unknownObjectWeakInit();

        UUID.init()();
        *(v39 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = &off_100641E68;
        swift_unknownObjectWeakAssign();
        v40 = *(v38 + 32);

        os_unfair_lock_lock((v40 + 24));
        sub_100012470((v40 + 16));
        os_unfair_lock_unlock((v40 + 24));

        *(v3 + 72) = v39;

        v94 = sub_10007EBC0(&qword_1006C24D8);
        v92 = _swiftEmptyArrayStorage;
        sub_1004CAF58();
        return sub_100012DF0(&v92, &unk_1006B8740);
      case 15:
        *(v3 + 56) = 0;
        v76 = *(*(v3 + 16) + 48);
        type metadata accessor for FMPeopleSubscription();
        v77 = swift_allocObject();
        *(v77 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = 0;
        swift_unknownObjectWeakInit();

        UUID.init()();
        *(v77 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = &off_100641E68;
        swift_unknownObjectWeakAssign();
        v78 = *(v76 + 32);

        os_unfair_lock_lock((v78 + 24));
        sub_100012470((v78 + 16));
        os_unfair_lock_unlock((v78 + 24));

        *(v3 + 72) = v77;

        v79 = dispatch thunk of FMFManager.friends.getter();

        if (*(v3 + 56) - 1 >= 2)
        {
          *(v3 + 57) = 0;
          sub_100012488(v79);
        }

        else
        {
          sub_1004BD720(v79);
        }

        goto LABEL_49;
      case 16:
        v52 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
        v53 = v88;
        swift_beginAccess();
        sub_100027BE0(v53 + v52, v16, type metadata accessor for FMSelectedSection);
        sub_1004B2480(v53, v16);
        v54 = v16;
        return sub_10002A100(v54, type metadata accessor for FMSelectedSection);
      case 17:
        *(v3 + 56) = 0;
        v34 = v3;
        v60 = *(*(v3 + 16) + 24);
        type metadata accessor for FMDevicesSubscription();
        v36 = swift_allocObject();
        *(v36 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
        swift_unknownObjectWeakInit();

        UUID.init()();
        *(v36 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100641ED0;
        swift_unknownObjectWeakAssign();
        v37 = *(v60 + 16);

        os_unfair_lock_lock((v37 + 24));
        sub_100012470((v37 + 16));
        goto LABEL_31;
      case 19:
        *(v3 + 56) = 1;
        v34 = v3;
        v74 = *(*(v3 + 16) + 24);
        type metadata accessor for FMDevicesSubscription();
        v36 = swift_allocObject();
        *(v36 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
        swift_unknownObjectWeakInit();

        UUID.init()();
        *(v36 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100641ED0;
        swift_unknownObjectWeakAssign();
        v37 = *(v74 + 16);

        os_unfair_lock_lock((v37 + 24));
        sub_100012470((v37 + 16));
LABEL_31:
        os_unfair_lock_unlock((v37 + 24));

        *(v34 + 64) = v36;

        v75 = FMIPManager.items.getter();

        if (*(v34 + 56) - 1 >= 2)
        {
          sub_1004BF4C8(v75);
        }

        else
        {
          sub_1004C138C(v75);
        }

        goto LABEL_49;
      default:
        v61 = sub_10007EBC0(&qword_1006BEEE0);
        sub_100012DF0(&v13[*(v61 + 48)], &qword_1006B07D0);
        (*(v6 + 8))(v13, v5);
LABEL_21:
        v62 = v89;
        sub_100027BE0(v31, v89, type metadata accessor for FMSelectedSection);
        if (swift_getEnumCaseMultiPayload())
        {
          sub_10002A100(v62, type metadata accessor for FMSelectedSection);
LABEL_23:
          v63 = 1;
          goto LABEL_38;
        }

        v80 = *(sub_10007EBC0(&qword_1006BEEE0) + 48);
        (*(v6 + 32))(v8, v62, v5);
        sub_100012DF0(v62 + v80, &qword_1006B07D0);
        v81 = FMIPDevice.historicalLocations.getter();
        (*(v6 + 8))(v8, v5);
        if (!v81)
        {
          goto LABEL_23;
        }

        v63 = 2;
LABEL_38:
        *(v3 + 56) = v63;
        *(v3 + 57) = 0;
        v44 = v3;
        v82 = *(*(v3 + 16) + 24);
        type metadata accessor for FMDevicesSubscription();
        v46 = swift_allocObject();
        *(v46 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
        swift_unknownObjectWeakInit();

        UUID.init()();
        *(v46 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100641ED0;
        swift_unknownObjectWeakAssign();
        v47 = *(v82 + 16);

        os_unfair_lock_lock((v47 + 24));
        sub_100012470((v47 + 16));
LABEL_39:
        os_unfair_lock_unlock((v47 + 24));

        *(v44 + 64) = v46;

        v83 = FMIPManager.devices.getter();

        v84 = *(v44 + 56);
        if (v84 <= 2)
        {
          if (v84 - 1 < 2)
          {
            sub_1004B8C00(v83);
            goto LABEL_49;
          }

          goto LABEL_43;
        }

        if (v84 == 3)
        {
LABEL_43:
          sub_1004B5834(v83);
          goto LABEL_49;
        }

        sub_1004B7458(v83);
LABEL_49:

        break;
    }
  }

  return result;
}