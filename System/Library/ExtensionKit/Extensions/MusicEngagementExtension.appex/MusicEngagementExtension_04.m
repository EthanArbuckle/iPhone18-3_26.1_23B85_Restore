uint64_t static MusicActions.folderActions(folder:library:presentationSource:folderPickerPresenter:onCreateFolder:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v133 = a6;
  v118 = a4;
  v131 = a2;
  v123 = a1;
  v9 = type metadata accessor for Playlist.Folder.Item();
  v119 = *(v9 - 8);
  v120 = v9;
  __chkstk_darwin(v9);
  v121 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Playlist.Folder();
  v129 = *(v11 - 8);
  v130 = v11;
  v12 = __chkstk_darwin(v11);
  v125 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = v13;
  __chkstk_darwin(v12);
  v132 = &v112 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15 - 8);
  v122 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v112 - v19;
  outlined init with copy of TaskPriority?(a1, &v112 - v19, &_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd);
  v126 = a3;
  outlined init with copy of PresentationSource(a3, &v156);
  v21 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v22 = (v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  outlined init with take of URL?(v20, v24 + v21, &_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd);
  *(v24 + v22) = 0;
  v25 = (v24 + v23);
  v127 = a5;
  v26 = v133;
  *v25 = a5;
  v25[1] = v26;
  outlined init with take of PresentationSource(&v156, v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8));
  *&v156 = partial apply for closure #1 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:);
  *(&v156 + 1) = v131;
  *&v157 = &async function pointer to partial apply for closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:);
  *(&v157 + 1) = v24;
  *&v158 = &async function pointer to closure #3 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:);
  *(&v158 + 1) = 0;
  LOBYTE(v159) = 10;
  *(&v159 + 1) = closure #1 in static Actions.RenameFolder.action(context:);
  *&v160 = 0;
  *(&v160 + 1) = 0x4014000000000000;
  *&v161 = &async function pointer to closure #2 in static Actions.CreateFolder.action(context:);
  *(&v161 + 1) = 0;
  *&v162 = &async function pointer to closure #3 in static Actions.CreateFolder.action(context:);
  *(&v162 + 1) = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore10ActionMenuC4ItemVGMd);
  v28 = swift_allocObject();
  v128 = xmmword_1004F2400;
  *(v28 + 16) = xmmword_1004F2400;
  v29 = swift_allocObject();
  v30 = v161;
  v29[5] = v160;
  v29[6] = v30;
  v29[7] = v162;
  v31 = v157;
  v29[1] = v156;
  v29[2] = v31;
  v32 = v159;
  v29[3] = v158;
  v29[4] = v32;
  v33 = swift_allocObject();
  v34 = v161;
  v33[5] = v160;
  v33[6] = v34;
  v33[7] = v162;
  v35 = v157;
  v33[1] = v156;
  v33[2] = v35;
  v36 = v159;
  v33[3] = v158;
  v33[4] = v36;
  v37 = swift_allocObject();
  v38 = v161;
  v37[5] = v160;
  v37[6] = v38;
  v37[7] = v162;
  v39 = v157;
  v37[1] = v156;
  v37[2] = v39;
  v40 = v159;
  v37[3] = v158;
  v37[4] = v40;
  *(v28 + 32) = 10;
  *(v28 + 40) = partial apply for specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v28 + 48) = v29;
  *(v28 + 56) = partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v28 + 64) = v33;
  *(v28 + 72) = &async function pointer to partial apply for specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v28 + 80) = v37;
  v41 = v122;
  outlined init with copy of TaskPriority?(v123, v122, &_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd);
  v42 = v129;
  v43 = v130;
  if ((*(v129 + 48))(v41, 1) == 1)
  {
    outlined init with copy of TaskPriority?(&v156, &v149, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd);

    outlined init with copy of TaskPriority?(&v156, &v149, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd);
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v127);
    outlined destroy of TaskPriority?(v41, &_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd);
    v44 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v45 = *(v42 + 32);
    v46 = v132;
    v124 = v27;
    v45(v132, v41, v43);
    v115 = v45;
    v116 = v42 + 32;
    v47 = *(v42 + 16);
    v122 = v28;
    v123 = v42 + 16;
    v48 = v125;
    v49 = v43;
    v47(v125, v46, v43);
    v113 = v47;
    outlined init with copy of PresentationSource(v126, &v149);
    v50 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v114 = *(v42 + 80);
    v117 += 7;
    v51 = (v117 + v50) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    v53 = v49;
    v54 = v49;
    v28 = v122;
    v45((v52 + v50), v48, v53);
    outlined init with take of PresentationSource(&v149, v52 + v51);
    v55 = v131;
    *&v135 = partial apply for closure #1 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:);
    *(&v135 + 1) = v131;
    *&v136 = &async function pointer to partial apply for closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:);
    *(&v136 + 1) = v52;
    *&v137 = &async function pointer to closure #3 in Actions.RenameFolder.Context.init(folder:library:presentationSource:);
    *(&v137 + 1) = 0;
    LOBYTE(v138) = 19;
    *(&v138 + 1) = closure #1 in static Actions.RenameFolder.action(context:);
    *&v139 = 0;
    *(&v139 + 1) = 0x4014000000000000;
    *&v140 = &async function pointer to closure #2 in static Actions.RenameFolder.action(context:);
    *(&v140 + 1) = 0;
    *&v141 = &async function pointer to closure #3 in static Actions.RenameFolder.action(context:);
    *(&v141 + 1) = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v128;
    v57 = swift_allocObject();
    v58 = v140;
    v57[5] = v139;
    v57[6] = v58;
    v57[7] = v141;
    v59 = v136;
    v57[1] = v135;
    v57[2] = v59;
    v60 = v138;
    v57[3] = v137;
    v57[4] = v60;
    v61 = swift_allocObject();
    v62 = v140;
    v61[5] = v139;
    v61[6] = v62;
    v61[7] = v141;
    v63 = v136;
    v61[1] = v135;
    v61[2] = v63;
    v64 = v138;
    v61[3] = v137;
    v61[4] = v64;
    v65 = swift_allocObject();
    v66 = v140;
    v65[5] = v139;
    v65[6] = v66;
    v65[7] = v141;
    v67 = v136;
    v65[1] = v135;
    v65[2] = v67;
    v68 = v138;
    v65[3] = v137;
    v65[4] = v68;
    *(v56 + 32) = 19;
    *(v56 + 40) = partial apply for specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:);
    *(v56 + 48) = v57;
    *(v56 + 56) = partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:);
    *(v56 + 64) = v61;
    *(v56 + 72) = &async function pointer to partial apply for specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:);
    *(v56 + 80) = v65;
    v69 = v118[3];
    v70 = v118[4];
    v71 = __swift_project_boxed_opaque_existential_0Tm(v118, v69);
    v72 = v121;
    v47(v121, v132, v54);
    v73 = (*(v119 + 104))(v72, enum case for Playlist.Folder.Item.folder(_:), v120);
    __chkstk_darwin(v73);
    v75 = &v112 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v76 + 16))(v75, v71, v69);
    Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:)(v72, v55, v75, v69, v70, &v149);
    v142 = v149;
    v143 = v150;
    v144 = v151;
    LOBYTE(v145) = 20;
    *(&v145 + 1) = closure #1 in static Actions.RenameFolder.action(context:);
    *&v146 = 0;
    *(&v146 + 1) = 0x4014000000000000;
    *&v147 = &async function pointer to closure #2 in static Actions.MoveToFolder.action(context:);
    *(&v147 + 1) = 0;
    *&v148 = &async function pointer to closure #3 in static Actions.MoveToFolder.action(context:);
    *(&v148 + 1) = 0;
    v77 = swift_allocObject();
    *(v77 + 16) = v128;
    v78 = swift_allocObject();
    v79 = v147;
    v78[5] = v146;
    v78[6] = v79;
    v78[7] = v148;
    v80 = v143;
    v78[1] = v142;
    v78[2] = v80;
    v81 = v145;
    v78[3] = v144;
    v78[4] = v81;
    v82 = swift_allocObject();
    v83 = v147;
    v82[5] = v146;
    v82[6] = v83;
    v82[7] = v148;
    v84 = v143;
    v82[1] = v142;
    v82[2] = v84;
    v85 = v145;
    v82[3] = v144;
    v82[4] = v85;
    v86 = swift_allocObject();
    v87 = v147;
    v86[5] = v146;
    v86[6] = v87;
    v86[7] = v148;
    v88 = v143;
    v86[1] = v142;
    v86[2] = v88;
    v89 = v145;
    v86[3] = v144;
    v86[4] = v89;
    *(v77 + 32) = 20;
    *(v77 + 40) = closure #1 in static ActionBuilder.buildExpression<A, B>(_:)specialized partial apply;
    *(v77 + 48) = v78;
    *(v77 + 56) = partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:);
    *(v77 + 64) = v82;
    *(v77 + 72) = &closure #3 in static ActionBuilder.buildExpression<A, B>(_:)specialized partial apply;
    *(v77 + 80) = v86;
    v90 = v125;
    v91 = v130;
    v113(v125, v132, v130);
    outlined init with copy of PresentationSource(v126, &v149);
    v92 = (v114 + 24) & ~v114;
    v93 = (v117 + v92) & 0xFFFFFFFFFFFFFFF8;
    v94 = swift_allocObject();
    *(v94 + 16) = v55;

    v115(v94 + v92, v90, v91);
    outlined init with take of PresentationSource(&v149, v94 + v93);
    *&v149 = partial apply for closure #1 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:);
    *(&v149 + 1) = v55;
    *&v150 = &async function pointer to partial apply for closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:);
    *(&v150 + 1) = v94;
    *&v151 = &async function pointer to closure #3 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:);
    *(&v151 + 1) = 0;
    LOBYTE(v152) = 50;
    *(&v152 + 1) = closure #1 in static Actions.RenameFolder.action(context:);
    *&v153 = 0;
    *(&v153 + 1) = 0x4014000000000000;
    *&v154 = &async function pointer to closure #2 in static Actions.DeleteFolder.action(context:);
    *(&v154 + 1) = 0;
    *&v155 = &async function pointer to closure #3 in static Actions.DeleteFolder.action(context:);
    *(&v155 + 1) = 0;
    v95 = swift_allocObject();
    *(v95 + 16) = v128;
    v96 = swift_allocObject();
    v97 = v154;
    v96[5] = v153;
    v96[6] = v97;
    v96[7] = v155;
    v98 = v150;
    v96[1] = v149;
    v96[2] = v98;
    v99 = v152;
    v96[3] = v151;
    v96[4] = v99;
    v100 = swift_allocObject();
    v101 = v154;
    v100[5] = v153;
    v100[6] = v101;
    v100[7] = v155;
    v102 = v150;
    v100[1] = v149;
    v100[2] = v102;
    v103 = v152;
    v100[3] = v151;
    v100[4] = v103;
    v104 = swift_allocObject();
    v105 = v154;
    v104[5] = v153;
    v104[6] = v105;
    v104[7] = v155;
    v106 = v150;
    v104[1] = v149;
    v104[2] = v106;
    v107 = v152;
    v104[3] = v151;
    v104[4] = v107;
    *(v95 + 32) = 50;
    *(v95 + 40) = partial apply for specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:);
    *(v95 + 48) = v96;
    *(v95 + 56) = partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:);
    *(v95 + 64) = v100;
    *(v95 + 72) = &async function pointer to partial apply for specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:);
    *(v95 + 80) = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay9MusicCore10ActionMenuC4ItemVGGMd);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_1004F2EB0;
    *(v108 + 32) = v56;
    *(v108 + 40) = v77;
    *(v108 + 48) = v95;
    swift_retain_n();
    outlined init with copy of TaskPriority?(&v156, v134, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd);
    outlined init with copy of TaskPriority?(&v135, v134, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd);
    outlined init with copy of TaskPriority?(&v142, v134, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd);
    outlined init with copy of TaskPriority?(&v149, v134, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd);

    outlined init with copy of TaskPriority?(&v156, v134, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd);
    outlined init with copy of TaskPriority?(&v135, v134, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd);
    outlined init with copy of TaskPriority?(&v142, v134, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd);
    outlined init with copy of TaskPriority?(&v149, v134, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd);
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v127);
    v44 = specialized static ActionBuilder.buildBlock(_:)(v108);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MusicCore10ActionMenuC4ItemVGMd);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v129 + 8))(v132, v130);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay9MusicCore10ActionMenuC4ItemVGGMd);
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_1004F2EF0;
  *(v109 + 32) = v28;
  *(v109 + 40) = v44;
  v110 = specialized static ActionBuilder.buildBlock(_:)(v109);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MusicCore10ActionMenuC4ItemVGMd);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v110;
}

uint64_t static MusicActions.tasteActions(item:library:alertPresenter:noticePresenting:ratingViewController:presentationSource:metricsReportingContext:onFinish:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v148 = a7;
  v138 = a5;
  v139 = a6;
  v142 = a4;
  v143 = a2;
  v145 = a3;
  v150 = a9;
  v151 = a10;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  __chkstk_darwin(v16 - 8);
  v152 = &v137 - v17;
  v18 = a1;
  v149 = a1;
  v19 = a1[3];
  *&v153 = v18[4];
  v20 = __swift_project_boxed_opaque_existential_0Tm(v18, v19);
  __chkstk_darwin(v20);
  v22 = &v137 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22);
  outlined init with copy of ActionPerforming(a3, &v181);
  outlined init with copy of TaskPriority?(a4, &v174, &_s9MusicCore16NoticePresenting_pSgMd);
  outlined init with copy of PresentationSource(a7, &v188);
  v24 = a8;
  v25 = v152;
  outlined init with copy of TaskPriority?(a8, v152, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(v22, a2, &v181, &v174, &v188, v25, a9, a10, &v167, v19, v153);
  LOBYTE(v170) = 2;
  *(&v170 + 1) = closure #1 in static Actions.RenameFolder.action(context:);
  *&v171 = 0;
  *(&v171 + 1) = 0x4014000000000000;
  *&v172 = &async function pointer to closure #2 in static Actions.Favorite.action(context:);
  *(&v172 + 1) = 0;
  *&v173 = &async function pointer to closure #3 in static Actions.Favorite.action(context:);
  *(&v173 + 1) = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore10ActionMenuC4ItemVGMd);
  v27 = swift_allocObject();
  v153 = xmmword_1004F2400;
  *(v27 + 16) = xmmword_1004F2400;
  v28 = swift_allocObject();
  v29 = v172;
  v28[5] = v171;
  v28[6] = v29;
  v28[7] = v173;
  v30 = v168;
  v28[1] = v167;
  v28[2] = v30;
  v31 = v170;
  v28[3] = v169;
  v28[4] = v31;
  v32 = swift_allocObject();
  v33 = v172;
  v32[5] = v171;
  v32[6] = v33;
  v32[7] = v173;
  v34 = v168;
  v32[1] = v167;
  v32[2] = v34;
  v35 = v170;
  v32[3] = v169;
  v32[4] = v35;
  v36 = swift_allocObject();
  v37 = v172;
  v36[5] = v171;
  v36[6] = v37;
  v36[7] = v173;
  v38 = v168;
  v36[1] = v167;
  v36[2] = v38;
  v39 = v170;
  v36[3] = v169;
  v36[4] = v39;
  *(v27 + 32) = 2;
  *(v27 + 40) = partial apply for specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v27 + 48) = v28;
  *(v27 + 56) = partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v27 + 64) = v32;
  *(v27 + 72) = &async function pointer to partial apply for specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v27 + 80) = v36;
  v146 = v27;
  v40 = v149[3];
  v41 = v149[4];
  v42 = v149;
  v43 = __swift_project_boxed_opaque_existential_0Tm(v149, v40);
  __chkstk_darwin(v43);
  v45 = &v137 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v46 + 16))(v45);
  outlined init with copy of ActionPerforming(v145, &v181);
  v47 = v142;
  outlined init with copy of TaskPriority?(v142, &v155, &_s9MusicCore16NoticePresenting_pSgMd);
  outlined init with copy of PresentationSource(v148, &v188);
  v141 = v24;
  v48 = v152;
  outlined init with copy of TaskPriority?(v24, v152, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v49 = v143;
  Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(v45, v143, &v181, &v155, &v188, v48, v150, v151, &v174, v40, v41);
  LOBYTE(v177) = 3;
  *(&v177 + 1) = closure #1 in static Actions.RenameFolder.action(context:);
  *&v178 = 0;
  *(&v178 + 1) = 0x4014000000000000;
  *&v179 = &async function pointer to closure #2 in static Actions.UndoFavorite.action(context:);
  *(&v179 + 1) = 0;
  *&v180 = &async function pointer to closure #3 in static Actions.UndoFavorite.action(context:);
  *(&v180 + 1) = 0;
  v147 = v26;
  v50 = swift_allocObject();
  *(v50 + 16) = v153;
  v51 = swift_allocObject();
  v52 = v179;
  v51[5] = v178;
  v51[6] = v52;
  v51[7] = v180;
  v53 = v175;
  v51[1] = v174;
  v51[2] = v53;
  v54 = v177;
  v51[3] = v176;
  v51[4] = v54;
  v55 = swift_allocObject();
  v56 = v179;
  v55[5] = v178;
  v55[6] = v56;
  v55[7] = v180;
  v57 = v175;
  v55[1] = v174;
  v55[2] = v57;
  v58 = v177;
  v55[3] = v176;
  v55[4] = v58;
  v59 = swift_allocObject();
  v60 = v179;
  v59[5] = v178;
  v59[6] = v60;
  v59[7] = v180;
  v61 = v175;
  v59[1] = v174;
  v59[2] = v61;
  v62 = v177;
  v59[3] = v176;
  v59[4] = v62;
  *(v50 + 32) = 3;
  *(v50 + 40) = partial apply for specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v50 + 48) = v51;
  *(v50 + 56) = partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v50 + 64) = v55;
  *(v50 + 72) = &async function pointer to partial apply for specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v50 + 80) = v59;
  v145 = v50;
  v63 = v42[3];
  v64 = v42[4];
  v65 = __swift_project_boxed_opaque_existential_0Tm(v42, v63);
  __chkstk_darwin(v65);
  v67 = &v137 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v68 + 16))(v67);
  outlined init with copy of TaskPriority?(v47, &v188, &_s9MusicCore16NoticePresenting_pSgMd);
  v69 = v24;
  v70 = v152;
  outlined init with copy of TaskPriority?(v69, v152, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)(v67, v49, &v188, v70, v63, v64, &v181);
  LOBYTE(v184) = 36;
  *(&v184 + 1) = closure #1 in static Actions.RenameFolder.action(context:);
  *&v185 = 0;
  *(&v185 + 1) = 0x4014000000000000;
  *&v186 = &async function pointer to closure #2 in static Actions.SuggestLess.action(context:);
  *(&v186 + 1) = 0;
  *&v187 = &async function pointer to closure #3 in static Actions.SuggestLess.action(context:);
  *(&v187 + 1) = 0;
  v71 = swift_allocObject();
  *(v71 + 16) = v153;
  v72 = swift_allocObject();
  v73 = v186;
  v72[5] = v185;
  v72[6] = v73;
  v72[7] = v187;
  v74 = v182;
  v72[1] = v181;
  v72[2] = v74;
  v75 = v184;
  v72[3] = v183;
  v72[4] = v75;
  v76 = swift_allocObject();
  v77 = v186;
  v76[5] = v185;
  v76[6] = v77;
  v76[7] = v187;
  v78 = v182;
  v76[1] = v181;
  v76[2] = v78;
  v79 = v184;
  v76[3] = v183;
  v76[4] = v79;
  v80 = swift_allocObject();
  v81 = v186;
  v80[5] = v185;
  v80[6] = v81;
  v80[7] = v187;
  v82 = v182;
  v80[1] = v181;
  v80[2] = v82;
  v83 = v184;
  v80[3] = v183;
  v80[4] = v83;
  *(v71 + 32) = 36;
  *(v71 + 40) = partial apply for specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v71 + 48) = v72;
  *(v71 + 56) = partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v71 + 64) = v76;
  *(v71 + 72) = &async function pointer to partial apply for specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v71 + 80) = v80;
  v144 = v71;
  v84 = v42[3];
  v140 = v42[4];
  v85 = __swift_project_boxed_opaque_existential_0Tm(v42, v84);
  __chkstk_darwin(v85);
  v87 = &v137 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v88 + 16))(v87);
  outlined init with copy of TaskPriority?(v47, &v155, &_s9MusicCore16NoticePresenting_pSgMd);
  outlined init with copy of TaskPriority?(v141, v70, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v89 = v49;
  swift_retain_n();
  v90 = v150;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v150);
  outlined init with copy of TaskPriority?(&v167, &v188, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd);
  outlined init with copy of TaskPriority?(&v174, &v188, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd);
  outlined init with copy of TaskPriority?(&v181, &v188, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd);

  outlined init with copy of TaskPriority?(&v167, &v188, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v90);
  outlined init with copy of TaskPriority?(&v174, &v188, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd);
  outlined init with copy of TaskPriority?(&v181, &v188, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd);
  Actions.UndoSuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)(v87, v49, v152, v84, v140, &v188);
  LOBYTE(v191) = 37;
  *(&v191 + 1) = closure #1 in static Actions.RenameFolder.action(context:);
  *&v192 = 0;
  *(&v192 + 1) = 0x4014000000000000;
  *&v193 = &async function pointer to closure #2 in static Actions.UndoSuggestLess.action(context:);
  *(&v193 + 1) = 0;
  *&v194 = &async function pointer to closure #3 in static Actions.UndoSuggestLess.action(context:);
  *(&v194 + 1) = 0;
  v91 = swift_allocObject();
  *(v91 + 16) = v153;
  v92 = swift_allocObject();
  v93 = v193;
  v92[5] = v192;
  v92[6] = v93;
  v92[7] = v194;
  v94 = v189;
  v92[1] = v188;
  v92[2] = v94;
  v95 = v191;
  v92[3] = v190;
  v92[4] = v95;
  v96 = swift_allocObject();
  v97 = v193;
  v96[5] = v192;
  v96[6] = v97;
  v96[7] = v194;
  v98 = v189;
  v96[1] = v188;
  v96[2] = v98;
  v99 = v191;
  v96[3] = v190;
  v96[4] = v99;
  v100 = swift_allocObject();
  v101 = v193;
  v100[5] = v192;
  v100[6] = v101;
  v100[7] = v194;
  v102 = v189;
  v100[1] = v188;
  v100[2] = v102;
  v103 = v191;
  v100[3] = v190;
  v100[4] = v103;
  *(v91 + 32) = 37;
  *(v91 + 40) = partial apply for specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v91 + 48) = v92;
  *(v91 + 56) = partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v91 + 64) = v96;
  *(v91 + 72) = &async function pointer to partial apply for specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v91 + 80) = v100;
  outlined init with copy of ActionPerforming(v149, &v162);
  outlined init with copy of TaskPriority?(&v188, &v155, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd);
  outlined init with copy of TaskPriority?(&v188, &v155, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal011FavoritableA4Item_pMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal0A17LibraryActionable_AA0A11UserRatablepMd);
  if (swift_dynamicCast())
  {
    _s8MusicKit0A15PlaylistAddable_0aB8Internal0A17LibraryActionablepWOb_0(v161, &v163);
    v104 = v164;
    v105 = v165;
    v106 = v166;
    v107 = __swift_project_boxed_opaque_existential_0Tm(&v163, v164);
    __chkstk_darwin(v107);
    v109 = &v137 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v110 + 16))(v109);
    outlined init with copy of PresentationSource(v148, &v155);
    v111 = swift_allocObject();
    v111[2] = v104;
    v111[3] = v105;
    v112 = v138;
    v113 = v139;
    v111[4] = v106;
    v111[5] = v112;
    v111[6] = v113;
    *&v155 = Actions.RateSong.Context.init<A>(item:library:ratingViewController:presentationSource:)(v109, v89, partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed MusicUserRatable) -> (@owned RatingViewController), v111, &v155, v104, v105, v106);
    *(&v155 + 1) = v114;
    *&v156 = v115;
    *(&v156 + 1) = v116;
    LOBYTE(v157) = 38;
    *(&v157 + 1) = closure #1 in static Actions.AddToLibrary.action(context:);
    *&v158 = 0;
    *(&v158 + 1) = 0x4014000000000000;
    *&v159 = &async function pointer to closure #2 in static Actions.RateSong.action(context:);
    *(&v159 + 1) = 0;
    *&v160 = &async function pointer to closure #3 in static Actions.RateSong.action(context:);
    *(&v160 + 1) = 0;
    v117 = swift_allocObject();
    *(v117 + 16) = v153;
    v118 = swift_allocObject();
    v119 = v158;
    v118[3] = v157;
    v118[4] = v119;
    v120 = v160;
    v118[5] = v159;
    v118[6] = v120;
    v121 = v156;
    v118[1] = v155;
    v118[2] = v121;
    v122 = swift_allocObject();
    v123 = v158;
    v122[3] = v157;
    v122[4] = v123;
    v124 = v160;
    v122[5] = v159;
    v122[6] = v124;
    v125 = v156;
    v122[1] = v155;
    v122[2] = v125;
    v126 = swift_allocObject();
    v127 = v158;
    v126[3] = v157;
    v126[4] = v127;
    v128 = v160;
    v126[5] = v159;
    v126[6] = v128;
    v129 = v156;
    v126[1] = v155;
    v126[2] = v129;
    *(v117 + 32) = 38;
    *(v117 + 40) = partial apply for specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:);
    *(v117 + 48) = v118;
    *(v117 + 56) = partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:);
    *(v117 + 64) = v122;
    *(v117 + 72) = &async function pointer to partial apply for specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:);
    *(v117 + 80) = v126;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay9MusicCore10ActionMenuC4ItemVGGMd);
    v130 = swift_allocObject();
    *(v130 + 16) = v153;
    *(v130 + 32) = v117;
    outlined init with copy of TaskPriority?(&v155, v154, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd);

    outlined init with copy of TaskPriority?(&v155, v154, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd);

    v131 = specialized static ActionBuilder.buildBlock(_:)(v130);
    swift_setDeallocating();
    outlined destroy of TaskPriority?(v130 + 32, &_sSay9MusicCore10ActionMenuC4ItemVGMd);
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_0Tm(&v163);
  }

  else
  {
    memset(v161, 0, sizeof(v161));
    outlined destroy of TaskPriority?(v161, &_s16MusicKitInternal0A17LibraryActionable_AA0A11UserRatablepSgMd);
    v131 = &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay9MusicCore10ActionMenuC4ItemVGGMd);
  v132 = swift_allocObject();
  *(v132 + 16) = xmmword_1004F2F00;
  v133 = v145;
  *(v132 + 32) = v146;
  v134 = v144;
  *(v132 + 40) = v133;
  *(v132 + 48) = v134;
  *(v132 + 56) = v91;
  *(v132 + 64) = v131;
  v135 = specialized static ActionBuilder.buildBlock(_:)(v132);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MusicCore10ActionMenuC4ItemVGMd);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v135;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed MusicUserRatable) -> (@owned RatingViewController)(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[3] = a4;
  v12[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v10 = a2(v12);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  return v10;
}

uint64_t specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 112);
  *(v4 + 112) = *(a4 + 96);
  *(v4 + 128) = v6;
  *(v4 + 144) = *(a4 + 128);
  v7 = *(a4 + 48);
  *(v4 + 48) = *(a4 + 32);
  *(v4 + 64) = v7;
  v8 = *(a4 + 80);
  *(v4 + 80) = *(a4 + 64);
  *(v4 + 96) = v8;
  v9 = *(a4 + 16);
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = swift_task_alloc();
  *(v4 + 152) = v10;
  *v10 = v4;
  v10[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return (specialized Action.execute(checkSupportedStatus:))(a1, 1);
}

uint64_t specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(_OWORD *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  *(v1 + 208) = swift_task_alloc();
  v3 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v3;
  v4 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v4;
  v5 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v5;

  return _swift_task_switch(specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:), 0, 0);
}

uint64_t specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return (specialized Action.execute(checkSupportedStatus:))(a1, 1);
}

{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return (specialized Action.execute(checkSupportedStatus:))(a1, 1);
}

{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return (specialized Action.execute(checkSupportedStatus:))(a1, 1);
}

{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return (specialized Action.execute(checkSupportedStatus:))(a1, 1);
}

{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return (specialized Action.execute(checkSupportedStatus:))(a1, 1);
}

{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return (specialized Action.execute(checkSupportedStatus:))(a1, 1);
}

{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return (specialized Action.execute(checkSupportedStatus:))(a1, 1);
}

{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return (specialized Action.execute(checkSupportedStatus:))(a1, 1);
}

{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return (specialized Action.execute(checkSupportedStatus:))(a1, 1);
}

{
  v6 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v6;
  v7 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v7;
  v8 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v8;
  v9 = swift_task_alloc();
  *(v4 + 112) = v9;
  *v9 = v4;
  v9[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return (specialized Action.execute(checkSupportedStatus:))(a1, 1);
}

{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return (specialized Action.execute(checkSupportedStatus:))(a1, 1);
}

{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return (specialized Action.execute(checkSupportedStatus:))(a1, 1);
}

{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return (specialized Action.execute(checkSupportedStatus:))(a1, 1);
}

{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return (specialized Action.execute(checkSupportedStatus:))(a1, 1);
}

uint64_t specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[3];
  a2[3] = &type metadata for Actions.RateSong.Context;
  a2[4] = &protocol witness table for Actions.RateSong.Context;
  v6 = swift_allocObject();
  *a2 = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = *(a1 + 1);
  *(v6 + 40) = v5;
}

uint64_t specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = a1[5];
  a4[3] = a2;
  a4[4] = a3;
  v8 = swift_allocObject();
  *a4 = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = *(a1 + 1);
  *(v8 + 40) = *(a1 + 3);
  *(v8 + 56) = v7;
}

uint64_t outlined assign with take of PlaybackIntentDescriptor.IntentType?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)@<X0>(uint64_t *a1@<X8>)
{
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)(v1 + 16, a1);
}

{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd) - 8);
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)), type metadata accessor for Actions.Pin.Context, &protocol witness table for Actions.Pin.Context, type metadata accessor for Actions.Pin.Context, a1);
}

{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd) - 8);
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)), type metadata accessor for Actions.Unpin.Context, &protocol witness table for Actions.Unpin.Context, type metadata accessor for Actions.Unpin.Context, a1);
}

{
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)((v1 + 16), &type metadata for Actions.AddToLibrary.Context, &protocol witness table for Actions.AddToLibrary.Context, a1);
}

{
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)((v1 + 16), &type metadata for Actions.MoveToFolder.Context, &protocol witness table for Actions.MoveToFolder.Context, a1);
}

{
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)((v1 + 16), &type metadata for Actions.AddToPlaylist.Context, &protocol witness table for Actions.AddToPlaylist.Context, a1);
}

{
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)((v1 + 16), &type metadata for Actions.DeleteFromLibrary.Context, &protocol witness table for Actions.DeleteFromLibrary.Context, a1);
}

{
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)((v1 + 16), &type metadata for Actions.RemoveDownload.Context, &protocol witness table for Actions.RemoveDownload.Context, a1);
}

{
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)((v1 + 16), &type metadata for Actions.Download.Context, &protocol witness table for Actions.Download.Context, a1);
}

{
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)((v1 + 16), &type metadata for Actions.CreateFolder.Context, &protocol witness table for Actions.CreateFolder.Context, a1);
}

{
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)((v1 + 16), &type metadata for Actions.RenameFolder.Context, &protocol witness table for Actions.RenameFolder.Context, a1);
}

{
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)((v1 + 16), &type metadata for Actions.DeleteFolder.Context, &protocol witness table for Actions.DeleteFolder.Context, a1);
}

{
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)((v1 + 16), &type metadata for Actions.Favorite.Context, &protocol witness table for Actions.Favorite.Context, a1);
}

{
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)((v1 + 16), &type metadata for Actions.UndoFavorite.Context, &protocol witness table for Actions.UndoFavorite.Context, a1);
}

{
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)((v1 + 16), &type metadata for Actions.SuggestLess.Context, &protocol witness table for Actions.SuggestLess.Context, a1);
}

{
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)((v1 + 16), &type metadata for Actions.UndoSuggestLess.Context, &protocol witness table for Actions.UndoSuggestLess.Context, a1);
}

{
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)((v1 + 16), a1);
}

{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)(v4, a1);
}

uint64_t partial apply for specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(v0 + 16);
}

{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(v0 + v3);
}

{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(v0 + v3);
}

{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)((v0 + 16));
}

{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)((v0 + 16));
}

{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)((v0 + 16));
}

{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)((v0 + 16));
}

{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)((v0 + 16));
}

{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)((v0 + 16));
}

{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)((v0 + 16));
}

{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)((v0 + 16));
}

{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)((v0 + 16));
}

{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)((v0 + 16));
}

{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)((v0 + 16));
}

{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)((v0 + 16));
}

{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)((v0 + 16));
}

{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)((v0 + 16));
}

{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(v0 + v3);
}

uint64_t partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:)()
{
  v1 = *(v0 + 64);
  v7[2] = *(v0 + 48);
  v7[3] = v1;
  v7[4] = *(v0 + 80);
  v2 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v2;
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 128);
  v10 = *(v0 + 112);
  v11 = v5;
  v12 = *(v0 + 144);
  v8 = v4;
  v9 = v3;
  return v4(v7);
}

{
  return partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:)(&_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd);
}

{
  return partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:)(&_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd);
}

{
  v1 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v1;
  v7[2] = *(v0 + 48);
  v13 = *(v0 + 120);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v11 = *(v0 + 88);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v12 = v4;
  v8 = v2;
  v9 = v3;
  v10 = v5;
  return v3(v7);
}

{
  v1 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v1;
  v13 = *(v0 + 104);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v11 = *(v0 + 72);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v12 = v4;
  v8 = v2;
  v9 = v3;
  v10 = v5;
  return v3(v7);
}

{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:)(v2);
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 16);
  if (v1 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  return (*(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + *(v2 + 40)))(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
}

uint64_t objectdestroy_48Tm(uint64_t *a1, uint64_t a2, void (*a3)(void))
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = type metadata accessor for MusicPin.Item();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  a3(0);

  return swift_deallocObject();
}

uint64_t outlined init with copy of MusicLibraryAddable & MusicLibraryActionable(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100047FC8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for Playlist.Folder();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;

  if (*(v0 + v3))
  {
  }

  v7 = v0 + v6;
  swift_unknownObjectWeakDestroy();
  v8 = *(v0 + v6 + 48);
  if (v8 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), v8);
  }

  if (*(v7 + 64))
  {
  }

  if (*(v7 + 80))
  {
  }

  return swift_deallocObject();
}

void outlined consume of PresentationSource.Position.Source(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 == 2)
  {
    swift_unknownObjectRelease();
  }

  else if (a6 <= 1u)
  {
  }
}

uint64_t partial apply for closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v5);
  v9 = *(v0 + v5 + 8);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(v0 + v3, v6, v8, v9, v0 + v7);
}

uint64_t sub_1000483F8()
{
  v1 = type metadata accessor for Playlist.Folder();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:)()
{
  v2 = *(type metadata accessor for Playlist.Folder() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:)(v0 + v3, v0 + v4);
}

uint64_t sub_1000486B0()
{
  v1 = type metadata accessor for Playlist.Folder();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:)()
{
  v2 = *(type metadata accessor for Playlist.Folder() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:)(v5, v0 + v3, v0 + v4);
}

uint64_t objectdestroy_68Tm()
{

  return swift_deallocObject();
}

_OWORD *_s8MusicKit0A15PlaylistAddable_0aB8Internal0A17LibraryActionablepWOb_0(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_100048DD4()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_225Tm()
{

  return swift_deallocObject();
}

uint64_t sub_100048FA4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100049074(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for Actions.PlaybackContext()
{
  type metadata accessor for PlaybackController();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PlaybackIntentDescriptor.IntentType?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for MPCPlaybackIntent.PlayActivityInformation?();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Player.CommandIssuer?();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for PlaybackIntentDescriptor.IntentType?()
{
  if (!lazy cache variable for type metadata for PlaybackIntentDescriptor.IntentType?)
  {
    type metadata accessor for PlaybackIntentDescriptor.IntentType(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PlaybackIntentDescriptor.IntentType?);
    }
  }
}

void type metadata accessor for MPCPlaybackIntent.PlayActivityInformation?()
{
  if (!lazy cache variable for type metadata for MPCPlaybackIntent.PlayActivityInformation?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MPCPlaybackIntent.PlayActivityInformation?);
    }
  }
}

void type metadata accessor for Player.CommandIssuer?()
{
  if (!lazy cache variable for type metadata for Player.CommandIssuer?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9MusicCore6PlayerC13CommandIssuer_pMd);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Player.CommandIssuer?);
    }
  }
}

uint64_t sub_1000492F4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  v3 = *(type metadata accessor for Actions.SortPlaylist.Context() + 24);
  v4 = type metadata accessor for Playlist.Variant();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v0 + v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t partial apply for specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1);
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1, v4, v5, (v1 + 32));
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1);
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1, v4, v5, v1 + 32);
}

uint64_t sub_10004957C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000496A0()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_252Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_258Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_369Tm(uint64_t *a1, uint64_t a2, void (*a3)(void))
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  swift_unknownObjectRelease();
  v7 = type metadata accessor for MusicPin.Item();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  a3(0);

  return swift_deallocObject();
}

uint64_t outlined init with copy of PlaybackIntentDescriptor.IntentType(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004A5DC()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 32);
  if (v1 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10004A720()
{
  v1 = *(v0 + 16);
  if (v1 >= 4)
  {
  }

  return swift_deallocObject();
}

id outlined copy of Player.InsertCommand.Location(id result)
{
  if (result >= 4)
  {
    return result;
  }

  return result;
}

uint64_t Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)()@<X8>, uint64_t a10)
{
  v37 = a8;
  v38 = a4;
  v40 = a3;
  v41 = a6;
  v39 = a5;
  v44 = a2;
  v36[0] = a1;
  v42 = a9;
  v12 = *(a7 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(a1);
  v43 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v36 - v15;
  (*(v12 + 16))(v36 - v15);
  v17 = *(v12 + 80);
  v18 = (v17 + 40) & ~v17;
  v36[1] = v17 | 7;
  v19 = v13 + 7;
  v20 = (v13 + 7 + v18) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = a7;
  *(v21 + 3) = a8;
  *(v21 + 4) = a10;
  v22 = *(v12 + 32);
  v22(v21 + v18, v16, a7);
  v23 = v43;
  *(v21 + v20) = v44;
  v22(v23, v36[0], a7);
  v24 = (v17 + 56) & ~v17;
  v25 = (v19 + v24) & 0xFFFFFFFFFFFFFFF8;
  v36[0] = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v27 = (((v25 + 15) & 0xFFFFFFFFFFFFFFF8) + *(v26 + 80) + 96) & ~*(v26 + 80);
  v28 = swift_allocObject();
  v29 = v37;
  v30 = v38;
  *(v28 + 2) = a7;
  *(v28 + 3) = v29;
  *(v28 + 4) = a10;
  *(v28 + 5) = v30;
  v31 = v39;
  *(v28 + 6) = v39;
  v22(v28 + v24, v43, a7);
  *(v28 + v25) = v44;
  outlined init with take of PresentationSource(v40, v28 + v36[0]);
  outlined init with take of URL?(v41, v28 + v27, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v32 + 24) = v31;
  v33 = swift_allocObject();
  *(v33 + 16) = &async function pointer to partial apply for closure #3 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);
  *(v33 + 24) = v32;
  swift_unknownObjectRetain();

  v35 = v42;
  *v42 = partial apply for closure #1 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);
  v35[1] = v21;
  v35[2] = &async function pointer to partial apply for closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);
  v35[3] = v28;
  v35[4] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();
  v35[5] = v33;
  return result;
}

uint64_t static Actions.AddToLibrary.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 0;
  *(a2 + 56) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &async function pointer to closure #2 in static Actions.AddToLibrary.action(context:);
  *(a2 + 88) = 0;
  *(a2 + 96) = &async function pointer to closure #3 in static Actions.AddToLibrary.action(context:);
  *(a2 + 104) = 0;
}

uint64_t closure #2 in static Actions.AddToLibrary.action(context:)(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 16) + **(a2 + 16));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return v5();
}

uint64_t closure #3 in static Actions.AddToLibrary.action(context:)(uint64_t a1)
{
  v4 = (*(a1 + 32) + **(a1 + 32));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return v4();
}

uint64_t protocol witness for static ActionDefinition.action(context:) in conformance Actions.AddToLibrary@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 0;
  *(a2 + 56) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &async function pointer to closure #2 in static Actions.AddToLibrary.action(context:);
  *(a2 + 88) = 0;
  *(a2 + 96) = &async function pointer to closure #3 in static Actions.AddToLibrary.action(context:);
  *(a2 + 104) = 0;
}

uint64_t closure #1 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a5;
  v37 = a2;
  v33 = type metadata accessor for MusicLibrary.AddAction();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMd);
  v31 = *(v9 - 8);
  v32 = v9;
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit5AlbumVSgMd);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v30 - v14;
  v16 = *(a3 - 8);
  __chkstk_darwin(v13);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Album();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v16 + 16);
  v34 = a1;
  v23(v18, a1, a3);
  v24 = swift_dynamicCast();
  v25 = *(v20 + 56);
  if ((v24 & 1) == 0)
  {
    v25(v15, 1, 1, v19);
    outlined destroy of TaskPriority?(v15, &_s8MusicKit5AlbumVSgMd);
    goto LABEL_5;
  }

  v25(v15, 0, 1, v19);
  (*(v20 + 32))(v22, v15, v19);
  v26 = Album.childrenAddStatus(_:)(v37);
  (*(v20 + 8))(v22, v19);
  if (v26 != 1)
  {
LABEL_5:
    static MusicLibraryAction<>.add.getter();
    v28 = v33;
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*(v35 + 8))(v8, v28);
    v27 = MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter();
    (*(v31 + 8))(v11, v32);
    return v27;
  }

  return 0;
}

uint64_t sub_10004B34C()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t Album.childrenAddStatus(_:)(uint64_t a1)
{
  v40 = a1;
  v39 = type metadata accessor for MusicLibrary.AddAction();
  v1 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMd);
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v28 - v4;
  v35 = type metadata accessor for Track();
  v5 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMd);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5TrackOGSgMd);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5TrackOGMd);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v28 - v15;
  Album.tracks.getter();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of TaskPriority?(v12, &_s8MusicKit0A14ItemCollectionVyAA5TrackOGSgMd);
    return 0;
  }

  (*(v14 + 32))(v16, v12, v13);
  lazy protocol witness table accessor for type MusicItemCollection<Track> and conformance MusicItemCollection<A>(&lazy protocol witness table cache variable for type MusicItemCollection<Track> and conformance MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v41[0] == v41[4])
  {
    (*(v14 + 8))(v16, v13);
    return 0;
  }

  v29 = v14;
  (*(v14 + 16))(v9, v16, v13);
  v18 = *(v7 + 36);
  v28 = v16;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*&v9[v18] == v41[0])
  {
LABEL_11:
    outlined destroy of TaskPriority?(v9, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMd);
    (*(v29 + 8))(v28, v13);
    return 2;
  }

  else
  {
    v32 = (v5 + 8);
    v33 = (v5 + 16);
    v30 = (v3 + 8);
    v31 = (v1 + 8);
    v19 = v34;
    while (1)
    {
      v20 = dispatch thunk of Collection.subscript.read();
      v21 = v35;
      (*v33)(v19);
      v20(v41, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v22 = v38;
      static MusicLibraryAction<>.add.getter();
      v23 = v36;
      v24 = v39;
      MusicLibrary.supportedStatus<A, B>(for:action:)();
      (*v32)(v19, v21);
      (*v31)(v22, v24);
      v25 = MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter();
      v27 = v26;
      (*v30)(v23, v37);
      if (v27 == 1)
      {
        break;
      }

      outlined consume of ActionCondition.Result(v25, v27);
      dispatch thunk of Collection.endIndex.getter();
      if (*&v9[v18] == v41[0])
      {
        goto LABEL_11;
      }
    }

    outlined destroy of TaskPriority?(v9, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMd);
    (*(v29 + 8))(v28, v13);
    return 1;
  }
}

uint64_t MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
  v29 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v28 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v28 - v5;
  v7 = type metadata accessor for MusicLibrary.AddAction.UnsupportedReason();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMd);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v28 - v16;
  (*(v15 + 16))(&v28 - v16, v1, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v15 + 96))(v17, v14);
    (*(v8 + 32))(v13, v17, v7);
    (*(v8 + 16))(v11, v13, v7);
    v19 = (*(v8 + 88))(v11, v7);
    if (v19 == enum case for MusicLibrary.AddAction.UnsupportedReason.unaddable(_:))
    {
      (*(v8 + 96))(v11, v7);
      v20 = v29;
      (*(v29 + 32))(v6, v11, v2);
      v21 = v28;
      (*(v20 + 16))(v28, v6, v2);
      v22 = (*(v20 + 88))(v21, v2);
      if (v22 != enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:) && v22 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:) && v22 != enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
      {
        v30 = 0;
        v31 = 0xE000000000000000;
        _StringGuts.grow(_:)(24);

        v30 = 0xD000000000000016;
        v31 = 0x80000001004C5A10;
        lazy protocol witness table accessor for type MusicLibrary.AddStatus.UnaddableReason and conformance MusicLibrary.AddStatus.UnaddableReason(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus.UnaddableReason and conformance MusicLibrary.AddStatus.UnaddableReason);
        v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v23);

        v24 = v30;
        v25 = *(v20 + 8);
        v25(v6, v2);
        (*(v8 + 8))(v13, v7);
        v25(v21, v2);
        return v24;
      }

      (*(v20 + 8))(v6, v2);
      (*(v8 + 8))(v13, v7);
      return 0;
    }

    if (v19 == enum case for MusicLibrary.AddAction.UnsupportedReason.unsupportedType(_:))
    {
      goto LABEL_10;
    }

    if (v19 == enum case for MusicLibrary.AddAction.UnsupportedReason.alreadyAdded(_:))
    {
      (*(v8 + 8))(v13, v7);
      return 0xD000000000000012;
    }

    else
    {
      if (v19 == enum case for MusicLibrary.AddAction.UnsupportedReason.networkRequired(_:))
      {
LABEL_10:
        (*(v8 + 8))(v13, v7);
        return 0xD000000000000010;
      }

      v27 = *(v8 + 8);
      v27(v13, v7);
      v27(v11, v7);
      return 0x206E776F6E6B6E55;
    }
  }

  else
  {
    if (v18 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      return 0;
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for MusicLibrary.RemoveAction.UnsupportedReason();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE12RemoveActionVGMd);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, v1, v9);
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v10 + 96))(v12, v9);
    (*(v3 + 32))(v8, v12, v2);
    (*(v3 + 16))(v6, v8, v2);
    v14 = String.init<A>(describing:)();
    (*(v3 + 8))(v8, v2);
    return v14;
  }

  else if (v13 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  v1 = type metadata accessor for MusicLibrary.DownloadAction.UnsupportedReason();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v37 - v6;
  __chkstk_darwin(v5);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE14DownloadActionVGMd);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v37 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v39 = &v37 - v15;
  __chkstk_darwin(v14);
  v17 = &v37 - v16;
  v18 = *(v11 + 16);
  v40 = v0;
  v18(&v37 - v16, v0, v10);
  v19 = (*(v11 + 88))(v17, v10);
  if (v19 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v11 + 96))(v17, v10);
    (*(v2 + 32))(v9, v17, v1);
    v20 = *(v2 + 16);
    v20(v7, v9, v1);
    if ((*(v2 + 88))(v7, v1) != enum case for MusicLibrary.DownloadAction.UnsupportedReason.cellularDataDisallowed(_:))
    {
      v20(v38, v9, v1);
      v21 = String.init<A>(describing:)();
      v22 = *(v2 + 8);
      v22(v9, v1);
      v22(v7, v1);
      return v21;
    }

    (*(v2 + 8))(v9, v1);
    return 0;
  }

  if (v19 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.actions);
  v24 = v39;
  v18(v39, v40, v10);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v41[0] = v38;
    *v27 = 136315138;
    v18(v37, v24, v10);
    v28 = String.init<A>(describing:)();
    v29 = v24;
    v31 = v30;
    v32 = *(v11 + 8);
    v32(v29, v10);
    v33 = v32;
    v34 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v28, v31, v41);

    *(v27 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v25, v26, "Unknown status=%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v38);

    v35 = v33;
  }

  else
  {

    v35 = *(v11 + 8);
    v35(v24, v10);
  }

  v41[0] = 0;
  v41[1] = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  v21 = v41[0];
  v35(v17, v10);
  return v21;
}

{
  v1 = type metadata accessor for MusicLibrary.FavoriteAction.UnsupportedReason();
  v28 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v25 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = &v25 - v5;
  __chkstk_darwin(v4);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE14FavoriteActionVGMd);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v26 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v25 - v13;
  v15 = *(v10 + 16);
  v27 = v0;
  v15(&v25 - v13, v0, v9);
  v16 = (*(v10 + 88))(v14, v9);
  if (v16 != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    if (v16 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      *&v37[0] = 0;
      *(&v37[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      *&v37[0] = 0xD000000000000019;
      *(&v37[0] + 1) = 0x80000001004C6D20;
      v15(v26, v27, v9);
      v21._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v21);

      v20 = *&v37[0];
      (*(v10 + 8))(v14, v9);
      return v20;
    }

    return 0;
  }

  (*(v10 + 96))(v14, v9);
  v17 = v28;
  (*(v28 + 32))(v8, v14, v1);
  v18 = *(v17 + 16);
  v18(v6, v8, v1);
  v19 = (*(v17 + 88))(v6, v1);
  if (v19 != enum case for MusicLibrary.FavoriteAction.UnsupportedReason.unsupportedType(_:))
  {
    if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.alreadyFavorited(_:))
    {
      (*(v17 + 8))(v8, v1);
      return 0xD000000000000011;
    }

    if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.cannotFavoriteWhenDisliked(_:))
    {
      (*(v17 + 8))(v8, v1);
      return 0xD00000000000001DLL;
    }

    if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.subscriptionRequired(_:))
    {
      (*(v17 + 8))(v8, v1);
      return 0xD000000000000018;
    }

    if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v37[4] = v33;
      v37[5] = v34;
      v37[6] = v35;
      v37[7] = v36;
      v37[0] = v29;
      v37[1] = v30;
      v37[2] = v31;
      v37[3] = v32;
      outlined destroy of ApplicationCapabilities(v37);
      if ((WORD4(v37[0]) & 0x100) != 0)
      {
        v20 = 0;
      }

      else
      {
        v20 = 0xD000000000000016;
      }

      goto LABEL_35;
    }

    if (v19 != enum case for MusicLibrary.FavoriteAction.UnsupportedReason.explicitContentRestricted(_:))
    {
      if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.sharedLibrary(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0x6C20646572616853;
      }

      if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.cloudLibraryInitialImport(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0xD00000000000001CLL;
      }

      if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.libraryAddIneligibleContent(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0xD000000000000013;
      }

      if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.invalidContentType(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0xD000000000000014;
      }

      if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.networkRequired(_:))
      {
        v20 = 0xD000000000000010;
      }

      else
      {
        if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.subscriptionAccountLinkingRequired(_:))
        {
          (*(v17 + 8))(v8, v1);
          return 0xD000000000000025;
        }

        v20 = 0x206E776F6E6B6E55;
        if (v19 != enum case for MusicLibrary.FavoriteAction.UnsupportedReason.unknown(_:))
        {
          *&v37[0] = 0;
          *(&v37[0] + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(17);

          *&v37[0] = 0x206E776F6E6B6E55;
          *(&v37[0] + 1) = 0xEF206E6F73616572;
          v18(v25, v8, v1);
          v23._countAndFlagsBits = String.init<A>(describing:)();
          String.append(_:)(v23);

          v20 = *&v37[0];
          v24 = *(v17 + 8);
          v24(v8, v1);
          v24(v6, v1);
          return v20;
        }
      }

LABEL_35:
      (*(v17 + 8))(v8, v1);
      return v20;
    }

    (*(v17 + 8))(v8, v1);
    return 0;
  }

  v20 = 0xD000000000000010;
  (*(v17 + 8))(v8, v1);
  return v20;
}

{
  v1 = type metadata accessor for MusicLibrary.UndoFavoriteAction.UnsupportedReason();
  v29 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v26 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = &v26 - v5;
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE18UndoFavoriteActionVGMd);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v27 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  v15 = *(v10 + 16);
  v28 = v0;
  v15(&v26 - v13, v0, v9);
  v16 = (*(v10 + 88))(v14, v9);
  if (v16 != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    if (v16 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      *&v38[0] = 0;
      *(&v38[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      *&v38[0] = 0xD000000000000019;
      *(&v38[0] + 1) = 0x80000001004C6D20;
      v15(v27, v28, v9);
      v22._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v22);

      v21 = *&v38[0];
      (*(v10 + 8))(v14, v9);
      return v21;
    }

    return 0;
  }

  (*(v10 + 96))(v14, v9);
  v17 = v29;
  (*(v29 + 32))(v8, v14, v1);
  v18 = *(v17 + 16);
  v18(v6, v8, v1);
  v19 = (*(v17 + 88))(v6, v1);
  v20 = v8;
  if (v19 != enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.unsupportedType(_:))
  {
    if (v19 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.notFavorited(_:))
    {
      (*(v17 + 8))(v8, v1);
      return 0x6F76614620746F4ELL;
    }

    if (v19 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.subscriptionRequired(_:))
    {
      (*(v17 + 8))(v8, v1);
      return 0xD000000000000018;
    }

    if (v19 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v38[4] = v34;
      v38[5] = v35;
      v38[6] = v36;
      v38[7] = v37;
      v38[0] = v30;
      v38[1] = v31;
      v38[2] = v32;
      v38[3] = v33;
      outlined destroy of ApplicationCapabilities(v38);
      if ((WORD4(v38[0]) & 0x100) != 0)
      {
        v21 = 0;
      }

      else
      {
        v21 = 0xD000000000000016;
      }

      goto LABEL_31;
    }

    if (v19 != enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.explicitContentRestricted(_:))
    {
      if (v19 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.sharedLibrary(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0x6C20646572616853;
      }

      if (v19 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.cloudLibraryInitialImport(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0xD00000000000001CLL;
      }

      if (v19 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.libraryAddIneligibleContent(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0xD000000000000013;
      }

      if (v19 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.invalidContentType(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0xD000000000000014;
      }

      if (v19 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.subscriptionAccountLinkingRequired(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0xD000000000000025;
      }

      v21 = 0x206E776F6E6B6E55;
      if (v19 != enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.unknown(_:))
      {
        *&v38[0] = 0;
        *(&v38[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(17);

        *&v38[0] = 0x206E776F6E6B6E55;
        *(&v38[0] + 1) = 0xEF206E6F73616572;
        v18(v26, v20, v1);
        v24._countAndFlagsBits = String.init<A>(describing:)();
        String.append(_:)(v24);

        v21 = *&v38[0];
        v25 = *(v17 + 8);
        v25(v20, v1);
        v25(v6, v1);
        return v21;
      }

LABEL_31:
      (*(v17 + 8))(v20, v1);
      return v21;
    }

    (*(v17 + 8))(v8, v1);
    return 0;
  }

  v21 = 0xD000000000000010;
  (*(v17 + 8))(v20, v1);
  return v21;
}

{
  v1 = v0;
  v2 = type metadata accessor for MusicLibrary.DislikeAction.UnsupportedReason();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE13DislikeActionVGMd);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  v13 = *(v7 + 16);
  v13(&v18 - v11, v1, v6);
  v14 = (*(v7 + 88))(v12, v6);
  if (v14 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v7 + 96))(v12, v6);
    (*(v3 + 32))(v5, v12, v2);
    v15 = closure #1 in MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter(v5);
    (*(v3 + 8))(v5, v2);
  }

  else if (v14 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  else
  {
    v18 = 0;
    v19 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v18 = 0xD000000000000019;
    v19 = 0x80000001004C6D20;
    v13(v10, v1, v6);
    v16._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v16);

    v15 = v18;
    (*(v7 + 8))(v12, v6);
  }

  return v15;
}

{
  v1 = type metadata accessor for MusicLibrary.UndoDislikeAction.UnsupportedReason();
  v21 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE17UndoDislikeActionVGMd);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  v14 = *(v8 + 16);
  v20 = v0;
  v14(&v20 - v12, v0, v7);
  v15 = (*(v8 + 88))(v13, v7);
  if (v15 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v8 + 96))(v13, v7);
    v16 = v21;
    (*(v21 + 32))(v6, v13, v1);
    (*(v16 + 16))(v4, v6, v1);
    v17 = String.init<A>(describing:)();
    (*(v16 + 8))(v6, v1);
  }

  else if (v15 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  else
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v22 = 0xD000000000000019;
    v23 = 0x80000001004C6D20;
    v14(v11, v20, v7);
    v18._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v18);

    v17 = v22;
    (*(v8 + 8))(v13, v7);
  }

  return v17;
}

{
  v1 = type metadata accessor for MusicLibrary.PinAction.UnsupportedReason();
  v29 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v26 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = &v26 - v5;
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9PinActionVGMd);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v27 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  v15 = *(v10 + 16);
  v28 = v0;
  v15(&v26 - v13, v0, v9);
  v16 = (*(v10 + 88))(v14, v9);
  if (v16 != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    if (v16 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      *&v38[0] = 0;
      *(&v38[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      *&v38[0] = 0xD000000000000019;
      *(&v38[0] + 1) = 0x80000001004C6D20;
      v15(v27, v28, v9);
      v22._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v22);

      v21 = *&v38[0];
      (*(v10 + 8))(v14, v9);
      return v21;
    }

    return 0;
  }

  (*(v10 + 96))(v14, v9);
  v17 = v29;
  (*(v29 + 32))(v8, v14, v1);
  v18 = *(v17 + 16);
  v18(v6, v8, v1);
  v19 = (*(v17 + 88))(v6, v1);
  v20 = v8;
  if (v19 != enum case for MusicLibrary.PinAction.UnsupportedReason.unsupportedType(_:))
  {
    if (v19 == enum case for MusicLibrary.PinAction.UnsupportedReason.alreadyPinned(_:))
    {
      (*(v17 + 8))(v8, v1);
      return 0x2079646165726C41;
    }

    if (v19 != enum case for MusicLibrary.PinAction.UnsupportedReason.allExplicitContentRestricted(_:))
    {
      if (v19 == enum case for MusicLibrary.PinAction.UnsupportedReason.cloudLibraryRequired(_:))
      {
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v38[4] = v34;
        v38[5] = v35;
        v38[6] = v36;
        v38[7] = v37;
        v38[0] = v30;
        v38[1] = v31;
        v38[2] = v32;
        v38[3] = v33;
        outlined destroy of ApplicationCapabilities(v38);
        if ((WORD4(v38[0]) & 0x100) != 0)
        {
          v21 = 0;
        }

        else
        {
          v21 = 0xD000000000000016;
        }
      }

      else
      {
        if (v19 == enum case for MusicLibrary.PinAction.UnsupportedReason.cloudLibraryInitialImport(_:))
        {
          (*(v17 + 8))(v8, v1);
          return 0xD00000000000001CLL;
        }

        if (v19 == enum case for MusicLibrary.PinAction.UnsupportedReason.cloudLibraryIneligible(_:))
        {
          (*(v17 + 8))(v8, v1);
          return 0xD000000000000018;
        }

        if (v19 == enum case for MusicLibrary.PinAction.UnsupportedReason.sharedLibrary(_:))
        {
          (*(v17 + 8))(v8, v1);
          return 0x6C20646572616853;
        }

        if (v19 == enum case for MusicLibrary.PinAction.UnsupportedReason.notInLibrary(_:))
        {
          (*(v17 + 8))(v8, v1);
          return 0x4C206E6920746F4ELL;
        }

        v21 = 0x206E776F6E6B6E55;
        if (v19 != enum case for MusicLibrary.PinAction.UnsupportedReason.unknown(_:))
        {
          *&v38[0] = 0;
          *(&v38[0] + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(17);

          *&v38[0] = 0x206E776F6E6B6E55;
          *(&v38[0] + 1) = 0xEF206E6F73616572;
          v18(v26, v20, v1);
          v24._countAndFlagsBits = String.init<A>(describing:)();
          String.append(_:)(v24);

          v21 = *&v38[0];
          v25 = *(v17 + 8);
          v25(v20, v1);
          v25(v6, v1);
          return v21;
        }
      }

      (*(v17 + 8))(v20, v1);
      return v21;
    }

    (*(v17 + 8))(v8, v1);
    return 0;
  }

  v21 = 0xD000000000000010;
  (*(v17 + 8))(v20, v1);
  return v21;
}

{
  v1 = type metadata accessor for MusicLibrary.UnpinAction.UnsupportedReason();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v29 = &v26 - v6;
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE11UnpinActionVGMd);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v16 = *(v10 + 16);
  v28 = v0;
  v16(&v26 - v14, v0, v9);
  v17 = (*(v10 + 88))(v15, v9);
  if (v17 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v10 + 96))(v15, v9);
    (*(v2 + 32))(v8, v15, v1);
    v18 = *(v2 + 16);
    v19 = v29;
    v18(v29, v8, v1);
    v20 = (*(v2 + 88))(v19, v1);
    if (v20 == enum case for MusicLibrary.UnpinAction.UnsupportedReason.notPinned(_:))
    {
      (*(v2 + 8))(v8, v1);
      return 0x6E6E695020746F4ELL;
    }

    else if (v20 == enum case for MusicLibrary.UnpinAction.UnsupportedReason.sharedLibrary(_:))
    {
      (*(v2 + 8))(v8, v1);
      return 0x6C20646572616853;
    }

    else if (v20 == enum case for MusicLibrary.UnpinAction.UnsupportedReason.unknown(_:))
    {
      v21 = 0x206E776F6E6B6E55;
      (*(v2 + 8))(v8, v1);
    }

    else if (v20 == enum case for MusicLibrary.UnpinAction.UnsupportedReason.unsupportedType(_:))
    {
      v21 = 0xD000000000000010;
      (*(v2 + 8))(v8, v1);
    }

    else
    {
      v30 = 0;
      v31 = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      v30 = 0x206E776F6E6B6E55;
      v31 = 0xEF206E6F73616572;
      v18(v27, v8, v1);
      v24._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v24);

      v21 = v30;
      v25 = *(v2 + 8);
      v25(v8, v1);
      v25(v29, v1);
    }
  }

  else if (v17 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  else
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v30 = 0xD000000000000019;
    v31 = 0x80000001004C6D20;
    v16(v13, v28, v9);
    v22._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v22);

    v21 = v30;
    (*(v10 + 8))(v15, v9);
  }

  return v21;
}

{
  updated = type metadata accessor for MusicLibrary.UpdatePinAction.UnsupportedReason();
  v2 = *(updated - 8);
  v3 = __chkstk_darwin(updated);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v33 = &v30 - v6;
  __chkstk_darwin(v5);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE15UpdatePinActionVGMd);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v30 - v14;
  v16 = *(v10 + 16);
  v32 = v0;
  v16(&v30 - v14, v0, v9);
  v17 = (*(v10 + 88))(v15, v9);
  if (v17 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v10 + 96))(v15, v9);
    (*(v2 + 32))(v8, v15, updated);
    v18 = *(v2 + 16);
    v19 = v33;
    v18(v33, v8, updated);
    v20 = (*(v2 + 88))(v19, updated);
    v21 = updated;
    v22 = v2;
    if (v20 == enum case for MusicLibrary.UpdatePinAction.UnsupportedReason.notPinned(_:))
    {
      (*(v2 + 8))(v8, v21);
      return 0x6E6E695020746F4ELL;
    }

    else if (v20 == enum case for MusicLibrary.UpdatePinAction.UnsupportedReason.sharedLibrary(_:))
    {
      (*(v2 + 8))(v8, v21);
      return 0x6C20646572616853;
    }

    else if (v20 == enum case for MusicLibrary.UpdatePinAction.UnsupportedReason.unsupportedAction(_:))
    {
      (*(v2 + 8))(v8, v21);
      return 0xD000000000000012;
    }

    else if (v20 == enum case for MusicLibrary.UpdatePinAction.UnsupportedReason.unsupportedType(_:))
    {
      (*(v2 + 8))(v8, v21);
      return 0xD000000000000010;
    }

    else if (v20 == enum case for MusicLibrary.UpdatePinAction.UnsupportedReason.unknown(_:))
    {
      (*(v2 + 8))(v8, v21);
      return 0x206E776F6E6B6E55;
    }

    else
    {
      v34 = 0;
      v35 = 0xE000000000000000;
      v26 = v21;
      _StringGuts.grow(_:)(17);

      v34 = 0x206E776F6E6B6E55;
      v35 = 0xEF206E6F73616572;
      v18(v31, v8, v26);
      v27._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v27);

      v28 = v34;
      v29 = *(v22 + 8);
      v29(v8, v26);
      v29(v33, v26);
      return v28;
    }
  }

  else if (v17 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  else
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v34 = 0xD000000000000019;
    v35 = 0x80000001004C6D20;
    v16(v13, v32, v9);
    v24._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v24);

    v25 = v34;
    (*(v10 + 8))(v15, v9);
    return v25;
  }
}

uint64_t closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[86] = v18;
  v8[85] = a8;
  v8[84] = a7;
  v8[83] = a6;
  v8[82] = a5;
  v8[81] = a4;
  v8[80] = a3;
  v8[79] = a2;
  v8[78] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd);
  v8[87] = swift_task_alloc();
  v8[88] = swift_task_alloc();
  v8[89] = swift_task_alloc();
  v8[90] = swift_task_alloc();
  v8[91] = swift_task_alloc();
  v8[92] = swift_task_alloc();
  v8[93] = swift_task_alloc();
  v8[94] = swift_task_alloc();
  v8[95] = type metadata accessor for MetricsEvent.Click(0);
  v8[96] = swift_task_alloc();
  v8[97] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v8[98] = swift_task_alloc();
  v8[99] = swift_task_alloc();
  v8[100] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v8[101] = swift_task_alloc();
  v10 = type metadata accessor for Actions.MetricsReportingContext();
  v8[102] = v10;
  v8[103] = *(v10 - 8);
  v8[104] = swift_task_alloc();
  v8[105] = type metadata accessor for Notice.Variant(0);
  v8[106] = swift_task_alloc();
  v11 = type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
  v8[107] = v11;
  v8[108] = *(v11 - 8);
  v8[109] = swift_task_alloc();
  v8[110] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSg_AItMd);
  v8[111] = swift_task_alloc();
  v8[112] = swift_task_alloc();
  v12 = type metadata accessor for MusicLibrary.AddAction();
  v8[113] = v12;
  v8[114] = *(v12 - 8);
  v8[115] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMd);
  v8[116] = v13;
  v8[117] = *(v13 - 8);
  v8[118] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5TrackOGSgMd);
  v8[119] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5TrackOGMd);
  v8[120] = v14;
  v8[121] = *(v14 - 8);
  v8[122] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit5AlbumVSgMd);
  v8[123] = swift_task_alloc();
  v8[124] = *(a7 - 8);
  v8[125] = swift_task_alloc();
  v15 = type metadata accessor for Album();
  v8[126] = v15;
  v8[127] = *(v15 - 8);
  v8[128] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
  v8[129] = swift_task_alloc();
  v8[130] = swift_task_alloc();
  v8[131] = swift_task_alloc();
  v8[132] = swift_task_alloc();
  v8[133] = swift_task_alloc();
  v8[134] = swift_task_alloc();
  v8[135] = swift_task_alloc();

  return _swift_task_switch(closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:), 0, 0);
}

uint64_t closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)()
{
  v101 = v0;
  if (*(v0 + 624))
  {
    v1 = *(v0 + 632);
    *(v0 + 1088) = swift_getObjectType();
    *(v0 + 1096) = *(v1 + 8);
    *(v0 + 1104) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0xE86A000000000000;
    type metadata accessor for MainActor();
    *(v0 + 1112) = static MainActor.shared.getter();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
    v5 = closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);
LABEL_3:
    v6 = v5;
    v7 = v2;
    v8 = v4;
LABEL_4:

    return _swift_task_switch(v6, v7, v8);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v9;
  v10 = *(v0 + 256);
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 128) = v10;
  v11 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v11;
  v12 = *(v0 + 192);
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v12;
  outlined destroy of ApplicationCapabilities(v0 + 16);
  if ((*(v0 + 25) & 2) != 0)
  {
    v14 = *(v0 + 1016);
    v15 = *(v0 + 1000);
    v16 = *(v0 + 992);
    v17 = *(v0 + 672);
    v18 = *(v0 + 640);
    v99 = *(*(v0 + 864) + 56);
    v99(*(v0 + 1080), 1, 1, *(v0 + 856));
    v19 = *(v16 + 16);
    *(v0 + 1120) = v19;
    *(v0 + 1128) = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v19(v15, v18, v17);
    v20 = swift_dynamicCast();
    v21 = *(v14 + 56);
    if (v20)
    {
      v22 = *(v0 + 1024);
      v23 = *(v0 + 1016);
      v24 = *(v0 + 1008);
      v25 = *(v0 + 984);
      v26 = *(v0 + 648);
      v21(v25, 0, 1, v24);
      (*(v23 + 32))(v22, v25, v24);
      if (Album.childrenAddStatus(_:)(v26) != 1)
      {
        (*(*(v0 + 1016) + 8))(*(v0 + 1024), *(v0 + 1008));
        goto LABEL_20;
      }

      v27 = *(v0 + 968);
      v28 = *(v0 + 960);
      v29 = *(v0 + 952);
      Album.tracks.getter();
      if ((*(v27 + 48))(v29, 1, v28) != 1)
      {
        v78 = *(v0 + 976);
        v79 = *(v0 + 648);
        (*(*(v0 + 968) + 32))(v78, *(v0 + 952), *(v0 + 960));
        v100[0] = &_swiftEmptyArrayStorage;

        LOBYTE(v78) = specialized Sequence.contains(where:)(v78, v79, v100);

        if (v78)
        {
          v80 = *(v0 + 1024);
          v81 = *(v0 + 1016);
          v82 = *(v0 + 1008);
          (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
          (*(v81 + 8))(v80, v82);
        }

        else
        {
          if (*(v100[0] + 16))
          {
            (*(*(v0 + 864) + 16))(*(v0 + 1072), v100[0] + ((*(*(v0 + 864) + 80) + 32) & ~*(*(v0 + 864) + 80)), *(v0 + 856));
            v83 = 0;
          }

          else
          {
            v83 = 1;
          }

          v84 = *(v0 + 1080);
          v85 = *(v0 + 1072);
          v86 = *(v0 + 1024);
          v87 = *(v0 + 1016);
          v88 = *(v0 + 1008);
          v89 = *(v0 + 856);
          (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
          (*(v87 + 8))(v86, v88);
          outlined destroy of TaskPriority?(v84, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
          v99(v85, v83, 1, v89);
          outlined init with take of URL?(v85, v84, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
        }

LABEL_21:
        v37 = *(v0 + 1080);
        v38 = *(v0 + 1056);
        v39 = *(v0 + 896);
        v40 = *(v0 + 880);
        v41 = *(v0 + 864);
        v42 = *(v0 + 856);
        v96 = *(v41 + 104);
        v96(v38, enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:), v42);
        v99(v38, 0, 1, v42);
        v98 = v40;
        v43 = *(v40 + 48);
        outlined init with copy of TaskPriority?(v37, v39, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
        outlined init with copy of TaskPriority?(v38, v39 + v43, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
        v44 = *(v41 + 48);
        if (v44(v39, 1, v42) == 1)
        {
          v45 = *(v0 + 856);
          outlined destroy of TaskPriority?(*(v0 + 1056), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
          if (v44(v39 + v43, 1, v45) == 1)
          {
            outlined destroy of TaskPriority?(*(v0 + 896), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
LABEL_35:
            *(v0 + 1136) = type metadata accessor for MainActor();
            *(v0 + 1144) = static MainActor.shared.getter();
            v69 = dispatch thunk of Actor.unownedExecutor.getter();
            v8 = v70;
            *(v0 + 1152) = v69;
            *(v0 + 1160) = v70;
            v6 = closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);
            v7 = v69;
            goto LABEL_4;
          }
        }

        else
        {
          v46 = *(v0 + 856);
          outlined init with copy of TaskPriority?(*(v0 + 896), *(v0 + 1048), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
          v47 = v44(v39 + v43, 1, v46);
          v48 = *(v0 + 1056);
          v49 = *(v0 + 1048);
          if (v47 != 1)
          {
            v94 = v44;
            v92 = *(v0 + 896);
            v65 = *(v0 + 872);
            v66 = *(v0 + 864);
            v67 = *(v0 + 856);
            (*(v66 + 32))(v65, v39 + v43, v67);
            lazy protocol witness table accessor for type MusicLibrary.AddStatus.UnaddableReason and conformance MusicLibrary.AddStatus.UnaddableReason(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus.UnaddableReason and conformance MusicLibrary.AddStatus.UnaddableReason);
            v91 = dispatch thunk of static Equatable.== infix(_:_:)();
            v68 = *(v66 + 8);
            v68(v65, v67);
            outlined destroy of TaskPriority?(v48, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
            v68(v49, v67);
            outlined destroy of TaskPriority?(v92, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
            if (v91)
            {
              goto LABEL_35;
            }

LABEL_27:
            v52 = *(v0 + 1080);
            v53 = *(v0 + 1040);
            v54 = *(v0 + 888);
            v55 = *(v0 + 856);
            v96(v53, enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:), v55);
            v99(v53, 0, 1, v55);
            v56 = *(v98 + 48);
            outlined init with copy of TaskPriority?(v52, v54, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
            outlined init with copy of TaskPriority?(v53, v54 + v56, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
            if (v94(v54, 1, v55) == 1)
            {
              v57 = *(v0 + 856);
              outlined destroy of TaskPriority?(*(v0 + 1040), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
              if (v94(v54 + v56, 1, v57) == 1)
              {
                outlined destroy of TaskPriority?(*(v0 + 888), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
LABEL_37:
                *(v0 + 1192) = type metadata accessor for MainActor();
                *(v0 + 1200) = static MainActor.shared.getter();
                v2 = dispatch thunk of Actor.unownedExecutor.getter();
                v4 = v77;
                v5 = closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);
                goto LABEL_3;
              }
            }

            else
            {
              v58 = *(v0 + 856);
              outlined init with copy of TaskPriority?(*(v0 + 888), *(v0 + 1032), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
              v59 = v94(v54 + v56, 1, v58);
              v60 = *(v0 + 1040);
              v61 = *(v0 + 1032);
              if (v59 != 1)
              {
                v71 = *(v0 + 888);
                v72 = *(v0 + 872);
                v73 = *(v0 + 864);
                v74 = *(v0 + 856);
                (*(v73 + 32))(v72, v54 + v56, v74);
                lazy protocol witness table accessor for type MusicLibrary.AddStatus.UnaddableReason and conformance MusicLibrary.AddStatus.UnaddableReason(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus.UnaddableReason and conformance MusicLibrary.AddStatus.UnaddableReason);
                v75 = dispatch thunk of static Equatable.== infix(_:_:)();
                v76 = *(v73 + 8);
                v76(v72, v74);
                outlined destroy of TaskPriority?(v60, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
                v76(v61, v74);
                outlined destroy of TaskPriority?(v71, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
                if (v75)
                {
                  goto LABEL_37;
                }

LABEL_33:
                swift_storeEnumTagMultiPayload();
                *(v0 + 1216) = type metadata accessor for MainActor();
                *(v0 + 1224) = static MainActor.shared.getter();
                v2 = dispatch thunk of Actor.unownedExecutor.getter();
                v4 = v64;
                v5 = closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);
                goto LABEL_3;
              }

              v62 = *(v0 + 864);
              v63 = *(v0 + 856);
              outlined destroy of TaskPriority?(*(v0 + 1040), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
              (*(v62 + 8))(v61, v63);
            }

            outlined destroy of TaskPriority?(*(v0 + 888), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSg_AItMd);
            goto LABEL_33;
          }

          v50 = *(v0 + 864);
          v51 = *(v0 + 856);
          outlined destroy of TaskPriority?(*(v0 + 1056), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
          (*(v50 + 8))(v49, v51);
        }

        v94 = v44;
        outlined destroy of TaskPriority?(*(v0 + 896), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSg_AItMd);
        goto LABEL_27;
      }

      v30 = *(v0 + 952);
      (*(*(v0 + 1016) + 8))(*(v0 + 1024), *(v0 + 1008));
      v31 = &_s8MusicKit0A14ItemCollectionVyAA5TrackOGSgMd;
    }

    else
    {
      v30 = *(v0 + 984);
      v21(v30, 1, 1, *(v0 + 1008));
      v31 = &_s8MusicKit5AlbumVSgMd;
    }

    outlined destroy of TaskPriority?(v30, v31);
LABEL_20:
    v93 = *(v0 + 1064);
    v32 = *(v0 + 944);
    v33 = *(v0 + 936);
    v95 = *(v0 + 928);
    v97 = *(v0 + 1080);
    v34 = *(v0 + 920);
    v35 = *(v0 + 912);
    v36 = *(v0 + 904);
    static MusicLibraryAction<>.add.getter();
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*(v35 + 8))(v34, v36);
    MusicLibrary.SupportedStatus<>.unaddableReason.getter(v93);
    (*(v33 + 8))(v32, v95);
    outlined destroy of TaskPriority?(v97, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
    outlined init with take of URL?(v93, v97, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
    goto LABEL_21;
  }

  *(v0 + 600) = 0;
  *(v0 + 568) = 0u;
  *(v0 + 584) = 0u;
  *(v0 + 608) = -1;
  specialized static SubscriptionUpsellPresenter.present(for:)(v0 + 568);
  outlined destroy of SubscriptionUpsellPresenter.Placement(v0 + 568);

  v13 = *(v0 + 8);

  return v13();
}

{
  v1 = v0[137];
  v2 = v0[136];
  v3 = v0[79];

  v1(0, v2, v3);

  return _swift_task_switch(closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:), 0, 0);
}

{
  v99 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v1;
  v2 = *(v0 + 256);
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 128) = v2;
  v3 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v3;
  v4 = *(v0 + 192);
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v4;
  outlined destroy of ApplicationCapabilities(v0 + 16);
  if ((*(v0 + 25) & 2) == 0)
  {
    *(v0 + 600) = 0;
    *(v0 + 568) = 0u;
    *(v0 + 584) = 0u;
    *(v0 + 608) = -1;
    specialized static SubscriptionUpsellPresenter.present(for:)(v0 + 568);
    outlined destroy of SubscriptionUpsellPresenter.Placement(v0 + 568);

    v5 = *(v0 + 8);

    return v5();
  }

  v7 = *(v0 + 1016);
  v8 = *(v0 + 1000);
  v9 = *(v0 + 992);
  v10 = *(v0 + 672);
  v11 = *(v0 + 640);
  v97 = *(*(v0 + 864) + 56);
  v97(*(v0 + 1080), 1, 1, *(v0 + 856));
  v12 = *(v9 + 16);
  *(v0 + 1120) = v12;
  *(v0 + 1128) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v8, v11, v10);
  v13 = swift_dynamicCast();
  v14 = *(v7 + 56);
  if ((v13 & 1) == 0)
  {
    v23 = *(v0 + 984);
    v14(v23, 1, 1, *(v0 + 1008));
    v24 = &_s8MusicKit5AlbumVSgMd;
    goto LABEL_12;
  }

  v15 = *(v0 + 1024);
  v16 = *(v0 + 1016);
  v17 = *(v0 + 1008);
  v18 = *(v0 + 984);
  v19 = *(v0 + 648);
  v14(v18, 0, 1, v17);
  (*(v16 + 32))(v15, v18, v17);
  if (Album.childrenAddStatus(_:)(v19) != 1)
  {
    (*(*(v0 + 1016) + 8))(*(v0 + 1024), *(v0 + 1008));
    goto LABEL_14;
  }

  v20 = *(v0 + 968);
  v21 = *(v0 + 960);
  v22 = *(v0 + 952);
  Album.tracks.getter();
  if ((*(v20 + 48))(v22, 1, v21) == 1)
  {
    v23 = *(v0 + 952);
    (*(*(v0 + 1016) + 8))(*(v0 + 1024), *(v0 + 1008));
    v24 = &_s8MusicKit0A14ItemCollectionVyAA5TrackOGSgMd;
LABEL_12:
    outlined destroy of TaskPriority?(v23, v24);
LABEL_14:
    v91 = *(v0 + 1064);
    v25 = *(v0 + 944);
    v26 = *(v0 + 936);
    v93 = *(v0 + 928);
    v95 = *(v0 + 1080);
    v27 = *(v0 + 920);
    v28 = *(v0 + 912);
    v29 = *(v0 + 904);
    static MusicLibraryAction<>.add.getter();
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*(v28 + 8))(v27, v29);
    MusicLibrary.SupportedStatus<>.unaddableReason.getter(v91);
    (*(v26 + 8))(v25, v93);
    outlined destroy of TaskPriority?(v95, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
    outlined init with take of URL?(v91, v95, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
    goto LABEL_15;
  }

  v77 = *(v0 + 976);
  v78 = *(v0 + 648);
  (*(*(v0 + 968) + 32))(v77, *(v0 + 952), *(v0 + 960));
  v98[0] = &_swiftEmptyArrayStorage;

  LOBYTE(v77) = specialized Sequence.contains(where:)(v77, v78, v98);

  if (v77)
  {
    v79 = *(v0 + 1024);
    v80 = *(v0 + 1016);
    v81 = *(v0 + 1008);
    (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
    (*(v80 + 8))(v79, v81);
  }

  else
  {
    if (*(v98[0] + 16))
    {
      (*(*(v0 + 864) + 16))(*(v0 + 1072), v98[0] + ((*(*(v0 + 864) + 80) + 32) & ~*(*(v0 + 864) + 80)), *(v0 + 856));
      v82 = 0;
    }

    else
    {
      v82 = 1;
    }

    v83 = *(v0 + 1080);
    v84 = *(v0 + 1072);
    v85 = *(v0 + 1024);
    v86 = *(v0 + 1016);
    v87 = *(v0 + 1008);
    v88 = *(v0 + 856);
    (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
    (*(v86 + 8))(v85, v87);
    outlined destroy of TaskPriority?(v83, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
    v97(v84, v82, 1, v88);
    outlined init with take of URL?(v84, v83, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
  }

LABEL_15:
  v30 = *(v0 + 1080);
  v31 = *(v0 + 1056);
  v32 = *(v0 + 896);
  v33 = *(v0 + 880);
  v34 = *(v0 + 864);
  v35 = *(v0 + 856);
  v94 = *(v34 + 104);
  v94(v31, enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:), v35);
  v97(v31, 0, 1, v35);
  v96 = v33;
  v36 = *(v33 + 48);
  outlined init with copy of TaskPriority?(v30, v32, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
  outlined init with copy of TaskPriority?(v31, v32 + v36, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
  v37 = *(v34 + 48);
  if (v37(v32, 1, v35) != 1)
  {
    v39 = *(v0 + 856);
    outlined init with copy of TaskPriority?(*(v0 + 896), *(v0 + 1048), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
    v40 = v37(v32 + v36, 1, v39);
    v41 = *(v0 + 1056);
    v42 = *(v0 + 1048);
    if (v40 != 1)
    {
      v92 = v37;
      v90 = *(v0 + 896);
      v61 = *(v0 + 872);
      v62 = *(v0 + 864);
      v63 = *(v0 + 856);
      (*(v62 + 32))(v61, v32 + v36, v63);
      lazy protocol witness table accessor for type MusicLibrary.AddStatus.UnaddableReason and conformance MusicLibrary.AddStatus.UnaddableReason(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus.UnaddableReason and conformance MusicLibrary.AddStatus.UnaddableReason);
      v89 = dispatch thunk of static Equatable.== infix(_:_:)();
      v64 = *(v62 + 8);
      v64(v61, v63);
      outlined destroy of TaskPriority?(v41, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
      v64(v42, v63);
      outlined destroy of TaskPriority?(v90, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
      if (v89)
      {
        goto LABEL_29;
      }

LABEL_21:
      v45 = *(v0 + 1080);
      v46 = *(v0 + 1040);
      v47 = *(v0 + 888);
      v48 = *(v0 + 856);
      v94(v46, enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:), v48);
      v97(v46, 0, 1, v48);
      v49 = *(v96 + 48);
      outlined init with copy of TaskPriority?(v45, v47, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
      outlined init with copy of TaskPriority?(v46, v47 + v49, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
      if (v92(v47, 1, v48) == 1)
      {
        v50 = *(v0 + 856);
        outlined destroy of TaskPriority?(*(v0 + 1040), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
        if (v92(v47 + v49, 1, v50) == 1)
        {
          outlined destroy of TaskPriority?(*(v0 + 888), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
LABEL_31:
          *(v0 + 1192) = type metadata accessor for MainActor();
          *(v0 + 1200) = static MainActor.shared.getter();
          v57 = dispatch thunk of Actor.unownedExecutor.getter();
          v59 = v76;
          v60 = closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);
          goto LABEL_32;
        }
      }

      else
      {
        v51 = *(v0 + 856);
        outlined init with copy of TaskPriority?(*(v0 + 888), *(v0 + 1032), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
        v52 = v92(v47 + v49, 1, v51);
        v53 = *(v0 + 1040);
        v54 = *(v0 + 1032);
        if (v52 != 1)
        {
          v70 = *(v0 + 888);
          v71 = *(v0 + 872);
          v72 = *(v0 + 864);
          v73 = *(v0 + 856);
          (*(v72 + 32))(v71, v47 + v49, v73);
          lazy protocol witness table accessor for type MusicLibrary.AddStatus.UnaddableReason and conformance MusicLibrary.AddStatus.UnaddableReason(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus.UnaddableReason and conformance MusicLibrary.AddStatus.UnaddableReason);
          v74 = dispatch thunk of static Equatable.== infix(_:_:)();
          v75 = *(v72 + 8);
          v75(v71, v73);
          outlined destroy of TaskPriority?(v53, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
          v75(v54, v73);
          outlined destroy of TaskPriority?(v70, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
          if (v74)
          {
            goto LABEL_31;
          }

LABEL_27:
          swift_storeEnumTagMultiPayload();
          *(v0 + 1216) = type metadata accessor for MainActor();
          *(v0 + 1224) = static MainActor.shared.getter();
          v57 = dispatch thunk of Actor.unownedExecutor.getter();
          v59 = v58;
          v60 = closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);
LABEL_32:
          v68 = v60;
          v69 = v57;
          v67 = v59;
          goto LABEL_33;
        }

        v55 = *(v0 + 864);
        v56 = *(v0 + 856);
        outlined destroy of TaskPriority?(*(v0 + 1040), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
        (*(v55 + 8))(v54, v56);
      }

      outlined destroy of TaskPriority?(*(v0 + 888), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSg_AItMd);
      goto LABEL_27;
    }

    v43 = *(v0 + 864);
    v44 = *(v0 + 856);
    outlined destroy of TaskPriority?(*(v0 + 1056), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
    (*(v43 + 8))(v42, v44);
LABEL_20:
    v92 = v37;
    outlined destroy of TaskPriority?(*(v0 + 896), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSg_AItMd);
    goto LABEL_21;
  }

  v38 = *(v0 + 856);
  outlined destroy of TaskPriority?(*(v0 + 1056), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
  if (v37(v32 + v36, 1, v38) != 1)
  {
    goto LABEL_20;
  }

  outlined destroy of TaskPriority?(*(v0 + 896), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
LABEL_29:
  *(v0 + 1136) = type metadata accessor for MainActor();
  *(v0 + 1144) = static MainActor.shared.getter();
  v65 = dispatch thunk of Actor.unownedExecutor.getter();
  v67 = v66;
  *(v0 + 1152) = v65;
  *(v0 + 1160) = v66;
  v68 = closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);
  v69 = v65;
LABEL_33:

  return _swift_task_switch(v68, v69, v67);
}

{
  v1 = v0[82];
  v2 = static MainActor.shared.getter();
  v0[146] = v2;
  v3 = swift_task_alloc();
  v0[147] = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = v1;
  *(v3 + 32) = 0;
  v4 = swift_task_alloc();
  v0[148] = v4;
  *v4 = v0;
  v4[1] = closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 609, v2, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001004C5A70, partial apply for closure #1 in static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:), v3, &type metadata for Bool);
}

{
  v1 = *v0;

  v2 = *(v1 + 1160);
  v3 = *(v1 + 1152);

  return _swift_task_switch(closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:), v3, v2);
}

{

  return _swift_task_switch(closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:), 0, 0);
}

{

  specialized static Alert.explicitRestrictedAlert(traitCollection:)(0, v0 + 448);

  return _swift_task_switch(closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:), 0, 0);
}

{
  *(v0 + 1208) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:), v2, v1);
}

{
  v1 = *(v0 + 656);

  v2 = specialized static UIAlertController.alertController(with:overrideStyle:)(v0 + 448, 0, 1);
  v3 = v2;
  v4 = *(v0 + 480);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = one-time initialization token for logger;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static PresentationSource.logger);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Deferring presentation…", v10, 2u);
    }

    v11 = *(v0 + 656);

    v12 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 552) = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    *(v0 + 560) = 0;
    *(v0 + 520) = _NSConcreteStackBlock;
    *(v0 + 528) = 1107296256;
    *(v0 + 536) = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    *(v0 + 544) = &block_descriptor_0;
    v13 = _Block_copy((v0 + 520));
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    outlined init with copy of PresentationSource(v11, v0 + 272);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    outlined init with take of PresentationSource(v0 + 272, v15 + 24);
    *(v15 + 120) = v3;
    *(v15 + 128) = v4;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v17 = v3;
    v5(v11, v17, partial apply for closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:), v15);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5);

    outlined destroy of Alert(v0 + 448);
    v18 = closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);
  }

  else
  {
    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v2, *(v0 + 480), 1, 0, 0);

    outlined destroy of Alert(v0 + 448);
    v18 = closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);
  }

  return _swift_task_switch(v18, 0, 0);
}

{
  outlined destroy of TaskPriority?(*(v0 + 1080), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 848);

  specialized NoticePresenting.present(_:internalOnly:)(v1, 0);
  outlined destroy of Notice.Variant(v1, type metadata accessor for Notice.Variant);

  return _swift_task_switch(closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:), 0, 0);
}

{
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  outlined init with copy of TaskPriority?(*(v0 + 664), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 808), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
    v4 = *(v0 + 1120);
    v5 = *(v0 + 672);
    v6 = *(v0 + 640);
    getContiguousArrayStorageType<A>(for:)(v5, v5);
    swift_allocObject();
    v7 = static Array._adoptStorage(_:count:)();
    v4(v8, v6, v5);
    v9 = _finalizeUninitializedArray<A>(_:)(v7);
    *(v0 + 1304) = v9;
    *(v0 + 616) = v9;
    v10 = swift_task_alloc();
    *(v0 + 1312) = v10;
    v11 = type metadata accessor for Array();
    WitnessTable = swift_getWitnessTable();
    *v10 = v0;
    v10[1] = closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);
    v13 = *(v0 + 680);
    v14 = *(v0 + 672);

    return MusicLibrary.add<A, B>(_:)(v0 + 616, v11, v14, WitnessTable, v13);
  }

  else
  {
    v15 = *(v0 + 800);
    v16 = *(v0 + 672);
    outlined init with take of Actions.MetricsReportingContext(*(v0 + 808), *(v0 + 832), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 1232) = MusicItem.metricsTargetIdentifier.getter(v16);
    *(v0 + 1240) = v17;
    v18 = type metadata accessor for URL();
    *(v0 + 1248) = v18;
    v19 = *(v18 - 8);
    v20 = *(v19 + 56);
    *(v0 + 1256) = v20;
    *(v0 + 1264) = (v19 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v20(v15, 1, 1, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2EF0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v16);
    *(inited + 40) = v22;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 0;
    *(inited + 72) = 1;
    *(v0 + 1272) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 1280) = v23;
    *(v0 + 1288) = v24;
    *(v0 + 610) = v25;
    swift_setDeallocating();
    swift_arrayDestroy();
    *(v0 + 1296) = static MainActor.shared.getter();
    v27 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:), v27, v26);
  }
}

{
  v80 = *(v0 + 610);
  v73 = *(v0 + 1272);
  v76 = *(v0 + 1240);
  v78 = *(v0 + 1288);
  v74 = *(v0 + 1232);
  v1 = *(v0 + 832);
  v2 = *(v0 + 816);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v5 = *(v0 + 768);
  v6 = *(v0 + 760);
  v7 = *(v0 + 752);
  v72 = *(v0 + 744);

  outlined init with copy of TaskPriority?(v3, v4, &_s10Foundation3URLVSgMd);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  outlined init with copy of TaskPriority?(v1 + v2[5], v7, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v81 = *(v1 + v2[8]);
  *(v5 + v6[19]) = 0;
  v11 = (v5 + v6[20]);
  *v11 = 0;
  v11[1] = 0;
  *v5 = v74;
  *(v5 + 8) = v76;
  *(v5 + 16) = 773;
  outlined init with take of URL?(v4, v5 + v6[7], &_s10Foundation3URLVSgMd);
  *(v5 + v6[8]) = v8;
  v12 = (v5 + v6[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v5 + v6[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  outlined init with copy of TaskPriority?(v7, v72, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 610);
  v17 = *(v0 + 1288);
  v18 = *(v0 + 1280);
  v19 = *(v0 + 1272);
  v20 = *(v0 + 744);
  if (v15 == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v18, v17, v16, SBYTE1(v16));
    outlined destroy of TaskPriority?(v20, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v18, v17, v16, SBYTE1(v16));

    outlined destroy of Notice.Variant(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 752);
  v24 = *(v0 + 736);
  v25 = (*(v0 + 768) + *(*(v0 + 760) + 48));
  *v25 = v21;
  v25[1] = v22;
  outlined init with copy of TaskPriority?(v23, v24, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 736);
  if (v26 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 736), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    outlined destroy of Notice.Variant(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 752);
  v31 = *(v0 + 728);
  v32 = (*(v0 + 768) + *(*(v0 + 760) + 52));
  *v32 = v28;
  v32[1] = v29;
  outlined init with copy of TaskPriority?(v30, v31, &_s9MusicCore12MetricsEventV4PageVSgMd);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 1256);
    v34 = *(v0 + 1248);
    v35 = *(v0 + 784);
    outlined destroy of TaskPriority?(*(v0 + 728), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 728);
    outlined init with copy of TaskPriority?(v36 + v14[6], *(v0 + 784), &_s10Foundation3URLVSgMd);
    outlined destroy of Notice.Variant(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 752);
  v38 = *(v0 + 720);
  outlined init with take of URL?(*(v0 + 784), *(v0 + 768) + *(*(v0 + 760) + 56), &_s10Foundation3URLVSgMd);
  outlined init with copy of TaskPriority?(v37, v38, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 720);
  if (v39 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 720), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    outlined destroy of Notice.Variant(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 752);
  v43 = *(v0 + 712);
  *(*(v0 + 768) + *(*(v0 + 760) + 60)) = v41;
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 712);
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(v45, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    outlined destroy of Notice.Variant(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 752);
  v48 = *(v0 + 704);
  *(*(v0 + 768) + *(*(v0 + 760) + 64)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 704);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 704), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    outlined destroy of Notice.Variant(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 752);
  v55 = *(v0 + 696);
  v56 = (*(v0 + 768) + *(*(v0 + 760) + 72));
  *v56 = v51;
  v56[1] = v52;
  outlined init with take of URL?(v54, v55, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 696);
  if (v57 == 1)
  {
    outlined destroy of TaskPriority?(v58, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    outlined destroy of Notice.Variant(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 776);
  v61 = *(v0 + 768);
  v62 = *(v0 + 760);
  *(v61 + *(v62 + 68)) = v59;
  *(v61 + *(v62 + 44)) = v81;
  outlined init with take of Actions.MetricsReportingContext(v61, v60, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v63 = *(v0 + 1288);
  v64 = *(v0 + 1280);
  v65 = *(v0 + 1272);
  v66 = *(v0 + 832);
  v67 = *(v0 + 816);
  v68 = *(v0 + 800);
  v69 = *(v0 + 776);
  v70 = *(v0 + 610);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v65, v64, v63, v70, SBYTE1(v70));
  outlined destroy of Notice.Variant(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd);

  return _swift_task_switch(closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:), 0, 0);
}

{
  outlined destroy of Notice.Variant(v0[104], type metadata accessor for Actions.MetricsReportingContext);
  v1 = v0[140];
  v2 = v0[84];
  v3 = v0[80];
  getContiguousArrayStorageType<A>(for:)(v2, v2);
  swift_allocObject();
  v4 = static Array._adoptStorage(_:count:)();
  v1(v5, v3, v2);
  v6 = _finalizeUninitializedArray<A>(_:)(v4);
  v0[163] = v6;
  v0[77] = v6;
  v7 = swift_task_alloc();
  v0[164] = v7;
  v8 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  *v7 = v0;
  v7[1] = closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);
  v10 = v0[85];
  v11 = v0[84];

  return MusicLibrary.add<A, B>(_:)(v0 + 77, v8, v11, WitnessTable, v10);
}

{
  *(*v1 + 1320) = v0;

  if (v0)
  {
    v2 = closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);
  }

  else
  {

    v2 = closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  outlined destroy of TaskPriority?(*(v0 + 1080), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004FC24()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8) + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  v6 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v7 = *(v0 + v4 + 48);
  if (v7 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), v7);
  }

  if (*(v6 + 64))
  {
  }

  v8 = (v4 + v5 + 96) & ~v5;
  if (*(v6 + 80))
  {
  }

  v9 = v0 + v8;
  v10 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v10 - 8) + 48))(v0 + v8, 1, v10))
  {
    if (*(v9 + 8) >= 0xDuLL)
    {
    }

    v11 = v9 + *(v10 + 20);
    v12 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {

      v13 = *(v12 + 24);
      v14 = type metadata accessor for URL();
      v15 = *(v14 - 8);
      v19 = v13;
      v16 = v11 + v13;
      v17 = v14;
      if (!(*(v15 + 48))(v16, 1, v14))
      {
        (*(v15 + 8))(v11 + v19, v17);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)()
{
  v2 = v0[2];
  v14 = v0[3];
  v3 = (*(*(v2 - 8) + 80) + 56) & ~*(*(v2 - 8) + 80);
  v4 = (*(*(v2 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v7 = (v5 + *(v6 + 80) + 96) & ~*(v6 + 80);
  v8 = v0[5];
  v9 = v0[6];
  v10 = *(v0 + v4);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)(v8, v9, v0 + v3, v10, v0 + v5, v0 + v7, v2, v14);
}

uint64_t closure #1 in closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)(uint64_t a1, void (*a2)(char *, char *, uint64_t), size_t *a3)
{
  v36 = a3;
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
  __chkstk_darwin(v3 - 8);
  v5 = &v36 - v4;
  v41 = type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
  v6 = *(v41 - 8);
  v7 = __chkstk_darwin(v41);
  v40 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v38 = &v36 - v9;
  v10 = type metadata accessor for MusicLibrary.AddAction();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMd);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v39 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v36 - v18;
  static MusicLibraryAction<>.add.getter();
  type metadata accessor for Track();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v11 + 8))(v13, v10);
  MusicLibrary.SupportedStatus<>.unaddableReason.getter(v5);
  v20 = v41;
  if ((*(v6 + 48))(v5, 1, v41) == 1)
  {
    outlined destroy of TaskPriority?(v5, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
  }

  else
  {
    v21 = v38;
    v37 = *(v6 + 32);
    v37(v38, v5, v20);
    (*(v6 + 16))(v40, v21, v20);
    v22 = v36;
    v23 = *v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v22 = v23;
    if (isUniquelyReferenced_nonNull_native)
    {
      v25 = v22;
    }

    else
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
      v25 = v22;
      *v22 = v23;
    }

    v27 = v23[2];
    v26 = v23[3];
    if (v27 >= v26 >> 1)
    {
      *v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v26 > 1, v27 + 1, 1, v23);
    }

    v28 = v41;
    (*(v6 + 8))(v38, v41);
    v29 = *v25;
    *(v29 + 16) = v27 + 1;
    v37((v29 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v27), v40, v28);
  }

  v30 = v39;
  (*(v15 + 16))(v39, v19, v14);
  v31 = (*(v15 + 88))(v30, v14);
  v32 = v31;
  v33 = enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:);
  if (v31 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    v34 = *(v15 + 8);
    v34(v19, v14);
    v34(v30, v14);
    return v32 != v33;
  }

  if (v31 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    (*(v15 + 8))(v19, v14);
    return v32 != v33;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t MusicLibrary.SupportedStatus<>.unaddableReason.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMd);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  v8 = type metadata accessor for MusicLibrary.AddAction.UnsupportedReason();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v20 - v13;
  (*(v5 + 16))(v7, v2, v4);
  if ((*(v5 + 88))(v7, v4) == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v5 + 96))(v7, v4);
    v15 = *(v9 + 32);
    v15(v14, v7, v8);
    v15(v12, v14, v8);
    if ((*(v9 + 88))(v12, v8) == enum case for MusicLibrary.AddAction.UnsupportedReason.unaddable(_:))
    {
      (*(v9 + 96))(v12, v8);
      v16 = type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
      v17 = *(v16 - 8);
      (*(v17 + 32))(a1, v12, v16);
      return (*(v17 + 56))(a1, 0, 1, v16);
    }

    (*(v9 + 8))(v12, v8);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
  }

  v19 = type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
  return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
}

uint64_t closure #3 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #3 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:), v4, v3);
}

uint64_t closure #3 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)()
{
  v1 = v0[2];

  if (v1)
  {
    v2 = v0[3];
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(0, ObjectType, v2);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_100050A28()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #3 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)(v2, v3);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async () -> ()(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v4();
}

uint64_t sub_100050BE0()
{

  return swift_deallocObject();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return thunk for @escaping @callee_guaranteed @Sendable @async () -> ()(v2);
}

uint64_t Actions.AddToLibrary.Context.menuItemTitle.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t (*Actions.AddToLibrary.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E73756C70;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E73756C70;
  *(v1 + 24) = 0xEB00000000656C63;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t (*Actions.AddToLibrary.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000010;
  *(v0 + 24) = 0x80000001004C59A0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000010;
  *(v1 + 24) = 0x80000001004C59A0;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.AddToLibrary.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E73756C70;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E73756C70;
  *(v1 + 24) = 0xEB00000000656C63;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemCompactStyleImage.getter in conformance Actions.AddToLibrary.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000010;
  *(v0 + 24) = 0x80000001004C59A0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000010;
  *(v1 + 24) = 0x80000001004C59A0;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

Swift::Int MPCPlaybackEngine.Option.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t specialized Actions.AddToLibrary.Context.menuItemCompactStyleTitle.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_10005137C()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type Album.ChildrenAddStatus and conformance Album.ChildrenAddStatus()
{
  result = lazy protocol witness table cache variable for type Album.ChildrenAddStatus and conformance Album.ChildrenAddStatus;
  if (!lazy protocol witness table cache variable for type Album.ChildrenAddStatus and conformance Album.ChildrenAddStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Album.ChildrenAddStatus and conformance Album.ChildrenAddStatus);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Actions.AddToLibrary.Context(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for Actions.AddToLibrary.Context(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for Album.ChildrenAddStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Album.ChildrenAddStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

BOOL specialized Sequence.contains(where:)(uint64_t a1, void (*a2)(char *, char *, uint64_t), size_t *a3)
{
  v29 = a2;
  v30 = a3;
  v28 = type metadata accessor for Track();
  v4 = *(v28 - 8);
  __chkstk_darwin(v28);
  v27 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5TrackOGMd);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMd);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  (*(v7 + 16))(v9, a1, v6);
  lazy protocol witness table accessor for type MusicItemCollection<Track> and conformance MusicItemCollection<A>(&lazy protocol witness table cache variable for type MusicItemCollection<Track> and conformance MusicItemCollection<A>);
  dispatch thunk of Sequence.makeIterator()();
  v14 = *(v11 + 44);
  lazy protocol witness table accessor for type MusicItemCollection<Track> and conformance MusicItemCollection<A>(&lazy protocol witness table cache variable for type MusicItemCollection<Track> and conformance MusicItemCollection<A>);
  v25 = (v4 + 16);
  v26 = (v4 + 8);
  do
  {
    dispatch thunk of Collection.endIndex.getter();
    v15 = v32[0];
    v31 = *&v13[v14];
    if (v31 == v32[0])
    {
      break;
    }

    v16 = dispatch thunk of Collection.subscript.read();
    v17 = v6;
    v18 = v27;
    v19 = v28;
    (*v25)(v27);
    v16(v32, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v20 = v33;
    v21 = closure #1 in closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)(v18, v29, v30);
    v33 = v20;
    if (v20)
    {
      (*v26)(v18, v19);
      break;
    }

    v22 = v21;
    (*v26)(v18, v19);
    v6 = v17;
  }

  while ((v22 & 1) == 0);
  outlined destroy of TaskPriority?(v13, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMd);
  return v31 != v15;
}

uint64_t outlined init with take of Actions.MetricsReportingContext(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *outlined consume of MetricsEvent.Click.ActionDetails(void *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 3 || a5 == 2)
  {
  }

  if (a5 == 1)
  {
    return outlined consume of MetricsEvent.Click.ActionDetails.SearchSource(result);
  }

  return result;
}

void *outlined consume of MetricsEvent.Click.ActionDetails.SearchSource(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined destroy of Notice.Variant(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100051BB8()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t lazy protocol witness table accessor for type MusicLibrary.AddStatus.UnaddableReason and conformance MusicLibrary.AddStatus.UnaddableReason(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MusicItemCollection<Track> and conformance MusicItemCollection<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8MusicKit0A14ItemCollectionVyAA5TrackOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double Actions.AddToPlaylist.Context.init<A, B>(item:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, _OWORD *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v15 = specialized Actions.AddToPlaylist.Context.init<A, B>(item:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)(a1, a2, a3, a4, a5, a6, a7, a9, v18, a10);
  (*(*(a6 - 8) + 8))(a3, a6, v15);

  (*(*(a5 - 8) + 8))(a1, a5);
  v16 = v18[1];
  *a8 = v18[0];
  a8[1] = v16;
  result = *&v19;
  a8[2] = v19;
  return result;
}

uint64_t static Actions.AddToPlaylist.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 11;
  *(a2 + 56) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &async function pointer to closure #2 in static Actions.AddToPlaylist.action(context:);
  *(a2 + 88) = 0;
  *(a2 + 96) = &async function pointer to closure #3 in static Actions.AddToPlaylist.action(context:);
  *(a2 + 104) = 0;
}

uint64_t protocol witness for static ActionDefinition.action(context:) in conformance Actions.AddToPlaylist@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 11;
  *(a2 + 56) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &async function pointer to closure #2 in static Actions.AddToPlaylist.action(context:);
  *(a2 + 88) = 0;
  *(a2 + 96) = &async function pointer to closure #3 in static Actions.AddToPlaylist.action(context:);
  *(a2 + 104) = 0;
}

uint64_t (*Actions.AddToPlaylist.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6461622E74786574;
  *(v0 + 24) = 0xEF73756C702E6567;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6461622E74786574;
  *(v1 + 24) = 0xEF73756C702E6567;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.AddToPlaylist.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6461622E74786574;
  *(v0 + 24) = 0xEF73756C702E6567;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6461622E74786574;
  *(v1 + 24) = 0xEF73756C702E6567;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, unint64_t (**a7)()@<X8>)
{
  v81 = a6;
  v84 = a5;
  v85 = a4;
  v83 = a3;
  v82 = a2;
  v86 = a7;
  v101 = type metadata accessor for MusicLibrary.AddAction();
  v8 = *(v101 - 8);
  __chkstk_darwin(v101);
  v100 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMd);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v88 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v79 = &v77 - v15;
  v16 = __chkstk_darwin(v14);
  v78 = &v77 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v77 - v19;
  v80 = v21;
  __chkstk_darwin(v18);
  v105 = &v77 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGSgMd);
  v24 = __chkstk_darwin(v23 - 8);
  v77 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v77 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v77 - v30;
  __chkstk_darwin(v29);
  v33 = &v77 - v32;
  v87 = v11;
  v97 = *(v11 + 56);
  v98 = v11 + 56;
  v97(&v77 - v32, 1, 1, v10);
  v102 = a1;
  v96 = *(a1 + 16);
  if (v96)
  {
    v34 = 0;
    result = v102 + 32;
    v94 = (v8 + 8);
    v92 = (v87 + 88);
    v93 = (v87 + 16);
    v99 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
    v36 = (v87 + 8);
    v90 = (v87 + 48);
    v89 = (v87 + 32);
    v91 = v31;
    v95 = v33;
    while (v34 < *(v102 + 16))
    {
      v103 = result;
      v104 = v34;
      outlined init with copy of MusicLibraryAddable & MusicLibraryActionable(result, v106);
      __swift_project_boxed_opaque_existential_0Tm(v106, v106[3]);
      v39 = v100;
      static MusicLibraryAction<>.add.getter();
      v40 = v36;
      v41 = v10;
      v42 = v105;
      v43 = v101;
      MusicLibrary.supportedStatus<A, B>(for:action:)();
      __swift_destroy_boxed_opaque_existential_0Tm(v106);
      (*v94)(v39, v43);
      v44 = v42;
      v10 = v41;
      v36 = v40;
      (*v93)(v20, v44, v10);
      v45 = (*v92)(v20, v10);
      v46 = *v40;
      if (v45 == v99)
      {
        v46(v105, v10);

        v46(v20, v10);
        outlined destroy of TaskPriority?(v95, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGSgMd);
        v50 = v87;
        v52 = v10;
        v55 = v78;
        (*(v87 + 104))(v78, v99, v10);
        goto LABEL_15;
      }

      v46(v20, v10);
      v33 = v95;
      outlined init with take of URL?(v95, v28, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGSgMd);
      v47 = *v90;
      if ((*v90)(v28, 1, v10) == 1)
      {
        v37 = v91;
        (*v89)(v91, v105, v10);
        v48 = v47(v28, 1, v10);
        v38 = v104;
        if (v48 != 1)
        {
          outlined destroy of TaskPriority?(v28, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGSgMd);
        }
      }

      else
      {
        v46(v105, v10);
        v37 = v91;
        (*v89)(v91, v28, v10);
        v38 = v104;
      }

      v34 = v38 + 1;
      v97(v37, 0, 1, v10);
      outlined init with take of URL?(v37, v33, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGSgMd);
      result = v103 + 48;
      if (v96 == v34)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v49 = v77;
    outlined init with take of URL?(v33, v77, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGSgMd);
    v50 = v87;
    v51 = *(v87 + 48);
    v52 = v10;
    if (v51(v49, 1, v10) == 1)
    {
      v53 = enum case for MusicLibrary.AddAction.UnsupportedReason.unsupportedType(_:);
      v54 = type metadata accessor for MusicLibrary.AddAction.UnsupportedReason();
      v55 = v78;
      (*(*(v54 - 8) + 104))(v78, v53, v54);
      (*(v50 + 104))(v55, enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:), v10);
      v56 = v51(v49, 1, v10) == 1;
      v57 = v49;
      v58 = v80;
      if (!v56)
      {
        outlined destroy of TaskPriority?(v57, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGSgMd);
      }
    }

    else
    {
      v55 = v78;
      (*(v50 + 32))(v78, v49, v10);
LABEL_15:
      v58 = v80;
    }

    v59 = v79;
    (*(v50 + 16))(v79, v55, v52);
    v60 = *(v50 + 80);
    v105 = swift_allocObject();
    v61 = *(v50 + 32);
    v61(&v105[(v60 + 16) & ~v60], v59, v52);
    v61(v88, v55, v52);
    v62 = (v60 + 32) & ~v60;
    v63 = (v58 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
    v64 = (v63 + 103) & 0xFFFFFFFFFFFFFFF8;
    v65 = v84;
    v66 = *(v84 - 8);
    v67 = (v64 + *(v66 + 80) + 8) & ~*(v66 + 80);
    v68 = swift_allocObject();
    v69 = v81;
    *(v68 + 16) = v65;
    *(v68 + 24) = v69;
    v61((v68 + v62), v88, v52);
    outlined init with take of PresentationSource(v82, v68 + v63);
    v70 = v102;
    *(v68 + v64) = v102;
    (*(v66 + 32))(v68 + v67, v83, v65);
    v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
    v72 = (*(v71 + 80) + 16) & ~*(v71 + 80);
    v73 = (*(v71 + 64) + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
    v74 = swift_allocObject();
    outlined init with take of URL?(v85, v74 + v72, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
    *(v74 + v73) = v70;

    v75 = v86;
    v76 = v105;
    *v86 = partial apply for closure #1 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:);
    v75[1] = v76;
    v75[2] = &async function pointer to partial apply for closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:);
    v75[3] = v68;
    v75[4] = &async function pointer to partial apply for closure #3 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:);
    v75[5] = v74;
  }

  return result;
}

unint64_t closure #1 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)(uint64_t a1)
{
  v2 = type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
  v3 = *(v2 - 8);
  v54 = v2;
  v55 = v3;
  v4 = __chkstk_darwin(v2);
  v56 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v53 = &v50 - v6;
  v7 = type metadata accessor for MusicLibrary.AddAction.UnsupportedReason();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMd);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v50 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v51 = &v50 - v19;
  __chkstk_darwin(v18);
  v21 = &v50 - v20;
  v22 = *(v15 + 16);
  v52 = a1;
  v22(&v50 - v20, a1, v14);
  v23 = (*(v15 + 88))(v21, v14);
  if (v23 != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    if (v23 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      if (one-time initialization token for actions != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Logger.actions);
      v33 = v51;
      v22(v51, v52, v14);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v57 = v56;
        *v36 = 136315138;
        LODWORD(v55) = v35;
        v22(v50, v33, v14);
        v37 = String.init<A>(describing:)();
        v39 = v38;
        v40 = *(v15 + 8);
        v40(v33, v14);
        v41 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v37, v39, &v57);

        *(v36 + 4) = v41;
        _os_log_impl(&_mh_execute_header, v34, v55, "Unknown status=%s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v56);
      }

      else
      {

        v40 = *(v15 + 8);
        v40(v33, v14);
      }

      v31 = 0x206E776F6E6B6E55;
      v40(v21, v14);
      return v31;
    }

    return 0;
  }

  (*(v15 + 96))(v21, v14);
  (*(v8 + 32))(v13, v21, v7);
  (*(v8 + 16))(v11, v13, v7);
  v24 = (*(v8 + 88))(v11, v7);
  if (v24 != enum case for MusicLibrary.AddAction.UnsupportedReason.unaddable(_:))
  {
    if (v24 == enum case for MusicLibrary.AddAction.UnsupportedReason.unsupportedType(_:))
    {
      v31 = 0xD000000000000010;
      (*(v8 + 8))(v13, v7);
      return v31;
    }

    if (v24 == enum case for MusicLibrary.AddAction.UnsupportedReason.alreadyAdded(_:))
    {
      goto LABEL_27;
    }

    v42 = enum case for MusicLibrary.AddAction.UnsupportedReason.networkRequired(_:);
    v43 = *(v8 + 8);
    v44 = v24;
    v43(v13, v7);
    if (v44 != v42)
    {
      v31 = 0x206E776F6E6B6E55;
      v43(v11, v7);
      return v31;
    }

    return 0;
  }

  (*(v8 + 96))(v11, v7);
  v25 = v55;
  v26 = v53;
  v27 = v11;
  v28 = v54;
  (*(v55 + 32))(v53, v27, v54);
  v29 = v56;
  (*(v25 + 16))(v56, v26, v28);
  v30 = (*(v25 + 88))(v29, v28);
  if (v30 == enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:) || v30 == enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:))
  {
    goto LABEL_26;
  }

  if (v30 == enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:))
  {
    (*(v25 + 8))(v26, v28);
    (*(v8 + 8))(v13, v7);
    return 0xD00000000000001CLL;
  }

  if (v30 == enum case for MusicLibrary.AddStatus.UnaddableReason.libraryAddIneligibleContent(_:))
  {
    (*(v25 + 8))(v26, v28);
    (*(v8 + 8))(v13, v7);
    return 0xD00000000000001ELL;
  }

  if (v30 == enum case for MusicLibrary.AddStatus.UnaddableReason.invalidContentType(_:))
  {
    (*(v25 + 8))(v26, v28);
    (*(v8 + 8))(v13, v7);
    return 0xD000000000000014;
  }

  if (v30 == enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionAccountLinkingRequired(_:))
  {
    (*(v25 + 8))(v26, v28);
    (*(v8 + 8))(v13, v7);
    return 0xD000000000000025;
  }

  if (v30 == enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
  {
LABEL_26:
    (*(v25 + 8))(v26, v28);
LABEL_27:
    (*(v8 + 8))(v13, v7);
    return 0;
  }

  if (v30 == enum case for MusicLibrary.AddStatus.UnaddableReason.sharedLibrary(_:))
  {
    (*(v25 + 8))(v26, v28);
    (*(v8 + 8))(v13, v7);
    return 0xD000000000000016;
  }

  else
  {
    v31 = 0x206E776F6E6B6E55;
    v46 = enum case for MusicLibrary.AddStatus.UnaddableReason.unknown(_:);
    v47 = v26;
    v48 = *(v25 + 8);
    v49 = v30;
    v48(v47, v28);
    (*(v8 + 8))(v13, v7);
    if (v49 != v46)
    {
      v48(v56, v28);
    }
  }

  return v31;
}

uint64_t closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[72] = a6;
  v6[71] = a5;
  v6[70] = a4;
  v6[69] = a3;
  v6[68] = a2;
  v6[67] = a1;
  v7 = type metadata accessor for ContentRating();
  v6[73] = v7;
  v6[74] = *(v7 - 8);
  v6[75] = swift_task_alloc();
  v6[76] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit13ContentRatingOSg_ADtMd);
  v6[77] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit13ContentRatingOSgMd);
  v6[78] = swift_task_alloc();
  v6[79] = swift_task_alloc();
  v6[80] = swift_task_alloc();
  v8 = type metadata accessor for Track();
  v6[81] = v8;
  v6[82] = *(v8 - 8);
  v6[83] = swift_task_alloc();
  v6[84] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMd);
  v6[85] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5TrackOGSgMd);
  v6[86] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5TrackOGMd);
  v6[87] = v9;
  v6[88] = *(v9 - 8);
  v6[89] = swift_task_alloc();
  v6[90] = swift_task_alloc();
  v6[91] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
  v6[92] = swift_task_alloc();
  v10 = type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
  v6[93] = v10;
  v6[94] = *(v10 - 8);
  v6[95] = swift_task_alloc();
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();

  return _swift_task_switch(closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:), 0, 0);
}

uint64_t closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)()
{
  v104 = v0;
  v1 = *(v0 + 752);
  v2 = *(v0 + 744);
  v3 = *(v0 + 736);
  MusicLibrary.SupportedStatus<>.unaddableReason.getter(v3);
  if ((*(v1 + 48))(v3, 1, v2) != 1)
  {
    v11 = *(v0 + 776);
    v12 = *(v0 + 768);
    v13 = *(v0 + 752);
    v14 = *(v0 + 744);
    (*(v13 + 32))(v11, *(v0 + 736), v14);
    v15 = *(v13 + 16);
    v15(v12, v11, v14);
    v16 = (*(v13 + 88))(v12, v14);
    if (v16 != enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:))
    {
      if (v16 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:))
      {
        if (v16 == enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
        {
          v35 = *(v0 + 776);
          v36 = *(v0 + 752);
          v37 = *(v0 + 744);
          *(v0 + 448) = 0u;
          *(v0 + 464) = 0u;
          *(v0 + 480) = 0;
          *(v0 + 488) = -2;
          specialized static SubscriptionUpsellPresenter.present(for:)(v0 + 448);
          outlined destroy of SubscriptionUpsellPresenter.Placement(v0 + 448);
          (*(v36 + 8))(v35, v37);
        }

        else
        {
          if (one-time initialization token for actions != -1)
          {
            swift_once();
          }

          v42 = *(v0 + 776);
          v43 = *(v0 + 760);
          v44 = *(v0 + 744);
          v45 = type metadata accessor for Logger();
          __swift_project_value_buffer(v45, static Logger.actions);
          v15(v43, v42, v44);
          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.fault.getter();
          v48 = os_log_type_enabled(v46, v47);
          v49 = *(v0 + 776);
          v50 = *(v0 + 760);
          v51 = *(v0 + 752);
          v52 = *(v0 + 744);
          if (v48)
          {
            v102 = *(v0 + 776);
            v53 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            v103 = v97;
            *v53 = 136315138;
            lazy protocol witness table accessor for type Playlist.Entry.InternalItem and conformance Playlist.Entry.InternalItem(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus.UnaddableReason and conformance MusicLibrary.AddStatus.UnaddableReason, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason);
            v54 = dispatch thunk of CustomStringConvertible.description.getter();
            v56 = v55;
            v57 = *(v51 + 8);
            v57(v50, v52);
            v58 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v54, v56, &v103);

            *(v53 + 4) = v58;
            _os_log_impl(&_mh_execute_header, v46, v47, "Unhandled unaddableReason=%s", v53, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v97);

            v59 = v102;
          }

          else
          {

            v57 = *(v51 + 8);
            v57(v50, v52);
            v59 = v49;
          }

          v57(v59, v52);
          v57(*(v0 + 768), *(v0 + 744));
        }

LABEL_43:

        v83 = *(v0 + 8);

        return v83();
      }

      *(v0 + 816) = type metadata accessor for MainActor();
      *(v0 + 824) = static MainActor.shared.getter();
      v21 = dispatch thunk of Actor.unownedExecutor.getter();
      v23 = v22;
      *(v0 + 832) = v21;
      *(v0 + 840) = v22;
      v24 = closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:);
      v25 = v21;
LABEL_22:

      return _swift_task_switch(v24, v25, v23);
    }

    *(v0 + 792) = type metadata accessor for MainActor();
    *(v0 + 800) = static MainActor.shared.getter();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    v20 = closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:);
LABEL_21:
    v24 = v20;
    v25 = v17;
    v23 = v19;
    goto LABEL_22;
  }

  v4 = *(v0 + 552);
  outlined destroy of TaskPriority?(*(v0 + 736), &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd);
  MusicItemCollection.init(arrayLiteral:)();
  v5 = *(v4 + 16);
  *(v0 + 784) = v5;
  if (v5)
  {
    v6 = *(v0 + 552);
    *(v0 + 872) = 0;
    v7 = *(v6 + 56);
    __swift_project_boxed_opaque_existential_0Tm((v6 + 32), v7);
    v8 = swift_task_alloc();
    *(v0 + 880) = v8;
    *v8 = v0;
    v8[1] = closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:);
    v9 = *(v0 + 688);

    return MusicPlaylistAddable.tracks.getter(v9, v7);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (ExplicitRestrictionsController.explicitContentIsAllowed.getter())
  {
    if (!*(v0 + 784))
    {
      goto LABEL_42;
    }

    goto LABEL_14;
  }

  v38 = *(v0 + 680);
  v39 = *(v0 + 672);
  (*(*(v0 + 704) + 16))(*(v0 + 712), *(v0 + 728), *(v0 + 696));
  lazy protocol witness table accessor for type MusicItemCollection<Track> and conformance MusicItemCollection<A>(&lazy protocol witness table cache variable for type MusicItemCollection<Track> and conformance MusicItemCollection<A>);
  dispatch thunk of Sequence.makeIterator()();
  v40 = *(v39 + 36);
  lazy protocol witness table accessor for type MusicItemCollection<Track> and conformance MusicItemCollection<A>(&lazy protocol witness table cache variable for type MusicItemCollection<Track> and conformance MusicItemCollection<A>);
  dispatch thunk of Collection.endIndex.getter();
  v101 = v40;
  if (*(v38 + v40) == *(v0 + 528))
  {
LABEL_20:
    outlined destroy of TaskPriority?(*(v0 + 680), &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMd);
    *(v0 + 888) = type metadata accessor for MainActor();
    *(v0 + 896) = static MainActor.shared.getter();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v41;
    v20 = closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:);
    goto LABEL_21;
  }

  v60 = *(v0 + 656);
  v94 = *(v0 + 608);
  v93 = (v60 + 16);
  v61 = *(v0 + 592);
  v91 = (v61 + 56);
  v92 = (v61 + 104);
  v84 = (v61 + 32);
  v86 = (v61 + 8);
  v87 = v38;
  v89 = (v60 + 8);
  v90 = (v61 + 48);
  v88 = enum case for ContentRating.clean(_:);
  while (1)
  {
    v66 = *(v0 + 664);
    v98 = *(v0 + 640);
    v67 = *(v0 + 632);
    v95 = *(v0 + 616);
    v68 = *(v0 + 584);
    v69 = dispatch thunk of Collection.subscript.read();
    (*v93)(v66);
    v69(v0 + 496, 0);
    dispatch thunk of Collection.formIndex(after:)();
    Track.contentRating.getter();
    (*v92)(v67, v88, v68);
    (*v91)(v67, 0, 1, v68);
    v70 = *(v94 + 48);
    outlined init with copy of TaskPriority?(v98, v95, &_s8MusicKit13ContentRatingOSgMd);
    outlined init with copy of TaskPriority?(v67, v95 + v70, &_s8MusicKit13ContentRatingOSgMd);
    v71 = *v90;
    if ((*v90)(v95, 1, v68) == 1)
    {
      break;
    }

    v72 = *(v0 + 584);
    outlined init with copy of TaskPriority?(*(v0 + 616), *(v0 + 624), &_s8MusicKit13ContentRatingOSgMd);
    v73 = v71(v95 + v70, 1, v72);
    v74 = *(v0 + 664);
    v75 = *(v0 + 648);
    v76 = *(v0 + 640);
    v77 = *(v0 + 632);
    v78 = *(v0 + 624);
    if (v73 == 1)
    {
      v79 = *(v0 + 584);
      outlined destroy of TaskPriority?(*(v0 + 632), &_s8MusicKit13ContentRatingOSgMd);
      outlined destroy of TaskPriority?(v76, &_s8MusicKit13ContentRatingOSgMd);
      (*v89)(v74, v75);
      (*v86)(v78, v79);
      goto LABEL_31;
    }

    v99 = *(v0 + 616);
    v80 = *(v0 + 600);
    v81 = *(v0 + 584);
    (*v84)(v80, v95 + v70, v81);
    lazy protocol witness table accessor for type Playlist.Entry.InternalItem and conformance Playlist.Entry.InternalItem(&lazy protocol witness table cache variable for type ContentRating and conformance ContentRating, &type metadata accessor for ContentRating);
    v85 = dispatch thunk of static Equatable.== infix(_:_:)();
    v82 = *v86;
    (*v86)(v80, v81);
    outlined destroy of TaskPriority?(v77, &_s8MusicKit13ContentRatingOSgMd);
    outlined destroy of TaskPriority?(v76, &_s8MusicKit13ContentRatingOSgMd);
    (*v89)(v74, v75);
    v82(v78, v81);
    outlined destroy of TaskPriority?(v99, &_s8MusicKit13ContentRatingOSgMd);
    if (v85)
    {
      goto LABEL_41;
    }

LABEL_32:
    dispatch thunk of Collection.endIndex.getter();
    if (*(v87 + v101) == *(v0 + 528))
    {
      goto LABEL_20;
    }
  }

  v62 = *(v0 + 664);
  v63 = *(v0 + 648);
  v64 = *(v0 + 640);
  v65 = *(v0 + 584);
  outlined destroy of TaskPriority?(*(v0 + 632), &_s8MusicKit13ContentRatingOSgMd);
  outlined destroy of TaskPriority?(v64, &_s8MusicKit13ContentRatingOSgMd);
  (*v89)(v62, v63);
  if (v71(v95 + v70, 1, v65) != 1)
  {
LABEL_31:
    outlined destroy of TaskPriority?(*(v0 + 616), &_s8MusicKit13ContentRatingOSg_ADtMd);
    goto LABEL_32;
  }

  outlined destroy of TaskPriority?(*(v0 + 616), &_s8MusicKit13ContentRatingOSgMd);
LABEL_41:
  outlined destroy of TaskPriority?(*(v0 + 680), &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMd);
  if (!*(v0 + 784))
  {
LABEL_42:
    (*(*(v0 + 704) + 8))(*(v0 + 728), *(v0 + 696));
    goto LABEL_43;
  }

LABEL_14:
  v100 = *(v0 + 576);
  v26 = *(v0 + 552);
  v28 = v26[7];
  v27 = v26[8];
  v29 = v26[9];
  v30 = __swift_project_boxed_opaque_existential_0Tm(v26 + 4, v28);
  v96 = (*(v100 + 8) + **(v100 + 8));
  v31 = swift_task_alloc();
  *(v0 + 912) = v31;
  *v31 = v0;
  v31[1] = closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:);
  v32 = *(v0 + 576);
  v33 = *(v0 + 568);
  v34 = *(v0 + 728);

  return v96(v34, v30, v28, v27, v29, v33, v32);
}

{

  specialized static Alert.explicitRestrictedAlert(traitCollection:)(0, v0 + 280);

  return _swift_task_switch(closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:), 0, 0);
}

{
  *(v0 + 808) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:), v2, v1);
}

{
  v1 = *(v0 + 544);

  v2 = specialized static UIAlertController.alertController(with:overrideStyle:)(v0 + 280, 0, 1);
  v3 = v2;
  v4 = *(v0 + 312);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = one-time initialization token for logger;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static PresentationSource.logger);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Deferring presentation…", v10, 2u);
    }

    v11 = *(v0 + 544);

    v12 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 432) = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    *(v0 + 440) = 0;
    *(v0 + 400) = _NSConcreteStackBlock;
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    *(v0 + 424) = &block_descriptor_35;
    v13 = _Block_copy((v0 + 400));
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    outlined init with copy of PresentationSource(v11, v0 + 112);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    outlined init with take of PresentationSource(v0 + 112, v15 + 24);
    *(v15 + 120) = v3;
    *(v15 + 128) = v4;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v17 = v3;
    v5(v11, v17, closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)partial apply, v15);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5);

    outlined destroy of Alert(v0 + 280);
    v18 = closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:);
  }

  else
  {
    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v2, *(v0 + 312), 1, 0, 0);

    outlined destroy of Alert(v0 + 280);
    v18 = closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:);
  }

  return _swift_task_switch(v18, 0, 0);
}

{
  (*(v0[94] + 8))(v0[97], v0[93]);

  v1 = v0[1];

  return v1();
}

{
  v1 = v0[68];
  v2 = static MainActor.shared.getter();
  v0[106] = v2;
  v3 = swift_task_alloc();
  v0[107] = v3;
  *(v3 + 16) = 2;
  *(v3 + 24) = v1;
  *(v3 + 32) = 0;
  v4 = swift_task_alloc();
  v0[108] = v4;
  *v4 = v0;
  v4[1] = closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 489, v2, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001004C5A70, partial apply for closure #1 in static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:), v3, &type metadata for Bool);
}

{
  v1 = *v0;

  v2 = *(v1 + 840);
  v3 = *(v1 + 832);

  return _swift_task_switch(closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:), v3, v2);
}

{

  return _swift_task_switch(closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:), 0, 0);
}

{

  return _swift_task_switch(closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:), 0, 0);
}

{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[86];
  v4 = *(v1 + 48);
  if (v4(v3, 1, v2) == 1)
  {
    MusicItemCollection.init(arrayLiteral:)();
    if (v4(v3, 1, v2) != 1)
    {
      outlined destroy of TaskPriority?(v0[86], &_s8MusicKit0A14ItemCollectionVyAA5TrackOGSgMd);
    }
  }

  else
  {
    (*(v1 + 32))(v0[90], v3, v2);
  }

  v5 = v0[98];
  v6 = v0[90];
  v7 = v0[88];
  v8 = v0[87];
  v9 = v0[109] + 1;
  static MusicItemCollection.+= infix(_:_:)();
  (*(v7 + 8))(v6, v8);
  if (v9 == v5)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (ExplicitRestrictionsController.explicitContentIsAllowed.getter())
    {
      if (!v0[98])
      {
        goto LABEL_31;
      }

      goto LABEL_10;
    }

    v25 = v0[85];
    v26 = v0[84];
    (*(v0[88] + 16))(v0[89], v0[91], v0[87]);
    lazy protocol witness table accessor for type MusicItemCollection<Track> and conformance MusicItemCollection<A>(&lazy protocol witness table cache variable for type MusicItemCollection<Track> and conformance MusicItemCollection<A>);
    dispatch thunk of Sequence.makeIterator()();
    v27 = *(v26 + 36);
    lazy protocol witness table accessor for type MusicItemCollection<Track> and conformance MusicItemCollection<A>(&lazy protocol witness table cache variable for type MusicItemCollection<Track> and conformance MusicItemCollection<A>);
    dispatch thunk of Collection.endIndex.getter();
    v70 = v27;
    if (*(v25 + v27) == v0[66])
    {
LABEL_17:
      outlined destroy of TaskPriority?(v0[85], &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMd);
      v0[111] = type metadata accessor for MainActor();
      v0[112] = static MainActor.shared.getter();
      v29 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:), v29, v28);
    }

    v30 = v0[82];
    v64 = v0[76];
    v63 = (v30 + 16);
    v31 = v0[74];
    v61 = (v31 + 56);
    v62 = (v31 + 104);
    v54 = (v31 + 32);
    v56 = (v31 + 8);
    v57 = v25;
    v59 = (v30 + 8);
    v60 = (v31 + 48);
    v58 = enum case for ContentRating.clean(_:);
    while (1)
    {
      v36 = v0[83];
      v37 = v0[79];
      v65 = v0[77];
      v67 = v0[80];
      v38 = v0[73];
      v39 = dispatch thunk of Collection.subscript.read();
      (*v63)(v36);
      v39(v0 + 62, 0);
      dispatch thunk of Collection.formIndex(after:)();
      Track.contentRating.getter();
      (*v62)(v37, v58, v38);
      (*v61)(v37, 0, 1, v38);
      v40 = *(v64 + 48);
      outlined init with copy of TaskPriority?(v67, v65, &_s8MusicKit13ContentRatingOSgMd);
      outlined init with copy of TaskPriority?(v37, v65 + v40, &_s8MusicKit13ContentRatingOSgMd);
      v41 = *v60;
      if ((*v60)(v65, 1, v38) == 1)
      {
        break;
      }

      v42 = v0[73];
      outlined init with copy of TaskPriority?(v0[77], v0[78], &_s8MusicKit13ContentRatingOSgMd);
      v43 = v41(v65 + v40, 1, v42);
      v44 = v0[83];
      v45 = v0[81];
      v46 = v0[80];
      v47 = v0[79];
      v48 = v0[78];
      if (v43 == 1)
      {
        v49 = v0[73];
        outlined destroy of TaskPriority?(v0[79], &_s8MusicKit13ContentRatingOSgMd);
        outlined destroy of TaskPriority?(v46, &_s8MusicKit13ContentRatingOSgMd);
        (*v59)(v44, v45);
        (*v56)(v48, v49);
LABEL_22:
        outlined destroy of TaskPriority?(v0[77], &_s8MusicKit13ContentRatingOSg_ADtMd);
        goto LABEL_23;
      }

      v68 = v0[77];
      v50 = v0[75];
      v51 = v0[73];
      (*v54)(v50, v65 + v40, v51);
      lazy protocol witness table accessor for type Playlist.Entry.InternalItem and conformance Playlist.Entry.InternalItem(&lazy protocol witness table cache variable for type ContentRating and conformance ContentRating, &type metadata accessor for ContentRating);
      v55 = dispatch thunk of static Equatable.== infix(_:_:)();
      v52 = *v56;
      (*v56)(v50, v51);
      outlined destroy of TaskPriority?(v47, &_s8MusicKit13ContentRatingOSgMd);
      outlined destroy of TaskPriority?(v46, &_s8MusicKit13ContentRatingOSgMd);
      (*v59)(v44, v45);
      v52(v48, v51);
      outlined destroy of TaskPriority?(v68, &_s8MusicKit13ContentRatingOSgMd);
      if (v55)
      {
        goto LABEL_30;
      }

LABEL_23:
      dispatch thunk of Collection.endIndex.getter();
      if (*(v57 + v70) == v0[66])
      {
        goto LABEL_17;
      }
    }

    v32 = v0[83];
    v33 = v0[81];
    v34 = v0[80];
    v35 = v0[73];
    outlined destroy of TaskPriority?(v0[79], &_s8MusicKit13ContentRatingOSgMd);
    outlined destroy of TaskPriority?(v34, &_s8MusicKit13ContentRatingOSgMd);
    (*v59)(v32, v33);
    if (v41(v65 + v40, 1, v35) == 1)
    {
      outlined destroy of TaskPriority?(v0[77], &_s8MusicKit13ContentRatingOSgMd);
LABEL_30:
      outlined destroy of TaskPriority?(v0[85], &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMd);
      if (!v0[98])
      {
LABEL_31:
        (*(v0[88] + 8))(v0[91], v0[87]);

        v53 = v0[1];

        return v53();
      }

LABEL_10:
      v69 = v0[72];
      v10 = v0[69];
      v12 = v10[7];
      v11 = v10[8];
      v13 = v10[9];
      v14 = __swift_project_boxed_opaque_existential_0Tm(v10 + 4, v12);
      v66 = (*(v69 + 8) + **(v69 + 8));
      v15 = swift_task_alloc();
      v0[114] = v15;
      *v15 = v0;
      v15[1] = closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:);
      v16 = v0[72];
      v17 = v0[71];
      v18 = v0[91];

      return v66(v18, v14, v12, v11, v13, v17, v16);
    }

    goto LABEL_22;
  }

  v20 = v0[109];
  v0[109] = v20 + 1;
  v21 = v0[69] + 48 * v20;
  v22 = *(v21 + 104);
  __swift_project_boxed_opaque_existential_0Tm((v21 + 80), v22);
  v23 = swift_task_alloc();
  v0[110] = v23;
  *v23 = v0;
  v23[1] = closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:);
  v24 = v0[86];

  return MusicPlaylistAddable.tracks.getter(v24, v22);
}

{

  specialized static Alert.explicitRestrictedAlert(traitCollection:)(0, v0 + 208);

  return _swift_task_switch(closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:), 0, 0);
}

{
  *(v0 + 904) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:), v2, v1);
}

{
  v1 = *(v0 + 544);

  v2 = specialized static UIAlertController.alertController(with:overrideStyle:)(v0 + 208, 0, 1);
  v3 = v2;
  v4 = *(v0 + 240);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = one-time initialization token for logger;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static PresentationSource.logger);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Deferring presentation…", v10, 2u);
    }

    v11 = *(v0 + 544);

    v12 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 384) = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    *(v0 + 392) = 0;
    *(v0 + 352) = _NSConcreteStackBlock;
    *(v0 + 360) = 1107296256;
    *(v0 + 368) = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    *(v0 + 376) = &block_descriptor_1;
    v13 = _Block_copy((v0 + 352));
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    outlined init with copy of PresentationSource(v11, v0 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    outlined init with take of PresentationSource(v0 + 16, v15 + 24);
    *(v15 + 120) = v3;
    *(v15 + 128) = v4;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v17 = v3;
    v5(v11, v17, _s9MusicCore18PresentationSourceV7present_019wantsAutomaticModalC5Style8animated10completionySo16UIViewControllerC_S2byycSgtFyycfU0_TA_0, v15);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5);

    outlined destroy of Alert(v0 + 208);
    v18 = closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:);
  }

  else
  {
    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v2, *(v0 + 240), 1, 0, 0);

    outlined destroy of Alert(v0 + 208);
    v18 = closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:);
  }

  return _swift_task_switch(v18, 0, 0);
}

{
  (*(v0[88] + 8))(v0[91], v0[87]);

  v1 = v0[1];

  return v1();
}

{

  return _swift_task_switch(closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:), 0, 0);
}

uint64_t MusicPlaylistAddable.tracks.getter(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v5 = type metadata accessor for Playlist.Entry.InternalItem();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV5EntryVSgMd);
  v3[10] = swift_task_alloc();
  v6 = type metadata accessor for Playlist.Entry();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit5TrackOSgMd);
  v3[15] = swift_task_alloc();
  v7 = type metadata accessor for Track();
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A5VideoVSgMd);
  v3[19] = swift_task_alloc();
  v8 = type metadata accessor for MusicVideo();
  v3[20] = v8;
  v3[21] = *(v8 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit4SongVSgMd);
  v3[24] = swift_task_alloc();
  v9 = type metadata accessor for Song();
  v3[25] = v9;
  v3[26] = *(v9 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5TrackOGMd);
  v3[29] = v10;
  v3[30] = *(v10 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5TrackOGSgMd);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistVSgMd);
  v3[36] = swift_task_alloc();
  v11 = type metadata accessor for Playlist();
  v3[37] = v11;
  v3[38] = *(v11 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit5AlbumVSgMd);
  v3[42] = swift_task_alloc();
  v3[43] = *(a2 - 8);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v12 = type metadata accessor for Album();
  v3[52] = v12;
  v3[53] = *(v12 - 8);
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();

  return _swift_task_switch(MusicPlaylistAddable.tracks.getter, 0, 0);
}

uint64_t MusicPlaylistAddable.tracks.getter()
{
  v150 = v0;
  v1 = v0[53];
  v2 = v0[51];
  v3 = v0[43];
  v5 = v0[4];
  v4 = v0[5];
  v6 = *(v3 + 16);
  v0[56] = v6;
  v0[57] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v145 = v6;
  v6(v2, v4, v5);
  v7 = swift_dynamicCast();
  v8 = *(v1 + 56);
  if (v7)
  {
    v9 = v0[55];
    v10 = v0[52];
    v11 = v0[53];
    v12 = v0[42];
    v8(v12, 0, 1, v10);
    (*(v11 + 32))(v9, v12, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v13 = swift_allocObject();
    v0[58] = v13;
    *(v13 + 16) = xmmword_1004F2F10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit07PartialA13AsyncPropertyCyAA5AlbumVGMd);
    *(v13 + 32) = static PartialMusicProperty<A>.tracks.getter();
    v14 = swift_task_alloc();
    v0[59] = v14;
    v15 = lazy protocol witness table accessor for type Playlist.Entry.InternalItem and conformance Playlist.Entry.InternalItem(&lazy protocol witness table cache variable for type Album and conformance Album, &type metadata accessor for Album);
    *v14 = v0;
    v14[1] = MusicPlaylistAddable.tracks.getter;
    v16 = v0[54];
    v17 = v0[52];

    return MusicItem<>.with(_:)(v16, v13, v17, &protocol witness table for Album, &protocol witness table for Album, v15);
  }

  v18 = v0[50];
  v19 = v0[42];
  v20 = v0[38];
  v22 = v0[4];
  v21 = v0[5];
  v8(v19, 1, 1, v0[52]);
  outlined destroy of TaskPriority?(v19, &_s8MusicKit5AlbumVSgMd);
  v145(v18, v21, v22);
  v23 = swift_dynamicCast();
  v24 = *(v20 + 56);
  if (v23)
  {
    v25 = v0[41];
    v26 = v0[37];
    v27 = v0[38];
    v28 = v0[36];
    v24(v28, 0, 1, v26);
    (*(v27 + 32))(v25, v28, v26);
    v0[61] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v29 = swift_allocObject();
    v0[62] = v29;
    *(v29 + 16) = xmmword_1004F2F10;
    v0[63] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit07PartialA13AsyncPropertyCyAA8PlaylistVGMd);
    *(v29 + 32) = static PartialMusicProperty<A>.tracks.getter();
    v30 = swift_task_alloc();
    v0[64] = v30;
    *v30 = v0;
    v30[1] = MusicPlaylistAddable.tracks.getter;
    v31 = v0[40];
    v32 = v0[37];

    return dispatch thunk of MusicPropertyContainer.with(_:)(v31, v29, v32, &protocol witness table for Playlist);
  }

  v33 = v0[49];
  v34 = v0[36];
  v35 = v0[26];
  v37 = v0[4];
  v36 = v0[5];
  v24(v34, 1, 1, v0[37]);
  outlined destroy of TaskPriority?(v34, &_s8MusicKit8PlaylistVSgMd);
  v145(v33, v36, v37);
  v38 = swift_dynamicCast();
  v39 = *(v35 + 56);
  if (v38)
  {
    v40 = v0[30];
    v146 = v0[29];
    v41 = v0[28];
    v42 = v0[25];
    v43 = v0[26];
    v44 = v0[24];
    v46 = v0[16];
    v45 = v0[17];
    v47 = v0[3];
    v39(v44, 0, 1, v42);
    (*(v43 + 32))(v41, v44, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8MusicKit5TrackOGMd);
    v48 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1004F2400;
    (*(v43 + 16))(v49 + v48, v41, v42);
    (*(v45 + 104))(v49 + v48, enum case for Track.song(_:), v46);
    MusicItemCollection.init(arrayLiteral:)();
    (*(v43 + 8))(v41, v42);
LABEL_13:
    (*(v40 + 56))(v47, 0, 1, v146);
    goto LABEL_14;
  }

  v50 = v0[48];
  v51 = v0[24];
  v52 = v0[21];
  v54 = v0[4];
  v53 = v0[5];
  v39(v51, 1, 1, v0[25]);
  outlined destroy of TaskPriority?(v51, &_s8MusicKit4SongVSgMd);
  v145(v50, v53, v54);
  v55 = swift_dynamicCast();
  v56 = *(v52 + 56);
  if (v55)
  {
    v40 = v0[30];
    v146 = v0[29];
    v57 = v0[23];
    v58 = v0[20];
    v59 = v0[21];
    v60 = v0[19];
    v62 = v0[16];
    v61 = v0[17];
    v47 = v0[3];
    v56(v60, 0, 1, v58);
    (*(v59 + 32))(v57, v60, v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8MusicKit5TrackOGMd);
    v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1004F2400;
    (*(v59 + 16))(v64 + v63, v57, v58);
    (*(v61 + 104))(v64 + v63, enum case for Track.musicVideo(_:), v62);
    MusicItemCollection.init(arrayLiteral:)();
    (*(v59 + 8))(v57, v58);
    goto LABEL_13;
  }

  v66 = v0[47];
  v67 = v0[19];
  v68 = v0[17];
  v70 = v0[4];
  v69 = v0[5];
  v56(v67, 1, 1, v0[20]);
  outlined destroy of TaskPriority?(v67, &_s8MusicKit0A5VideoVSgMd);
  v145(v66, v69, v70);
  v71 = swift_dynamicCast();
  v72 = *(v68 + 56);
  if (v71)
  {
    v73 = v0[29];
    v74 = v0[30];
    v76 = v0[17];
    v75 = v0[18];
    v78 = v0[15];
    v77 = v0[16];
    v79 = v0[3];
    v72(v78, 0, 1, v77);
    (*(v76 + 32))(v75, v78, v77);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8MusicKit5TrackOGMd);
    v80 = (*(v76 + 80) + 32) & ~*(v76 + 80);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_1004F2400;
    (*(v76 + 16))(v81 + v80, v75, v77);
    MusicItemCollection.init(arrayLiteral:)();
    (*(v76 + 8))(v75, v77);
    (*(v74 + 56))(v79, 0, 1, v73);
  }

  else
  {
    v82 = v0[46];
    v83 = v0[15];
    v84 = v0[12];
    v86 = v0[4];
    v85 = v0[5];
    v72(v83, 1, 1, v0[16]);
    outlined destroy of TaskPriority?(v83, &_s8MusicKit5TrackOSgMd);
    v145(v82, v85, v86);
    v87 = swift_dynamicCast();
    v88 = *(v84 + 56);
    if (v87)
    {
      v89 = v0[14];
      v90 = v0[11];
      v91 = v0[12];
      v93 = v0[9];
      v92 = v0[10];
      v94 = v0[6];
      v95 = v0[7];
      v88(v92, 0, 1, v90);
      (*(v91 + 32))(v89, v92, v90);
      Playlist.Entry.internalItem.getter();
      v96 = (*(v95 + 88))(v93, v94);
      if (v96 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
      {
        v97 = v0[30];
        v98 = v0[21];
        v99 = v0[22];
        v100 = v0[20];
        v102 = v0[16];
        v101 = v0[17];
        v143 = v0[14];
        v147 = v0[29];
        v103 = v0[12];
        v104 = v0[9];
        v139 = v0[3];
        v141 = v0[11];
        (*(v0[7] + 96))(v104, v0[6]);
        (*(v98 + 32))(v99, v104, v100);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8MusicKit5TrackOGMd);
        v105 = (*(v101 + 80) + 32) & ~*(v101 + 80);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_1004F2400;
        (*(v98 + 16))(v106 + v105, v99, v100);
        v107 = &enum case for Track.musicVideo(_:);
      }

      else
      {
        if (v96 != enum case for Playlist.Entry.InternalItem.song(_:))
        {
          if (one-time initialization token for actions != -1)
          {
            swift_once();
          }

          v113 = v0[13];
          v114 = v0[14];
          v115 = v0[11];
          v116 = v0[12];
          v117 = type metadata accessor for Logger();
          __swift_project_value_buffer(v117, static Logger.actions);
          (*(v116 + 16))(v113, v114, v115);
          v118 = Logger.logObject.getter();
          v119 = static os_log_type_t.fault.getter();
          v120 = os_log_type_enabled(v118, v119);
          v122 = v0[13];
          v121 = v0[14];
          v123 = v0[11];
          v124 = v0[12];
          if (v120)
          {
            v148 = v0[14];
            v125 = v0[7];
            v126 = v0[8];
            v127 = v0[6];
            v140 = swift_slowAlloc();
            v144 = swift_slowAlloc();
            v149 = v144;
            *v140 = 136315138;
            v142 = v119;
            Playlist.Entry.internalItem.getter();
            lazy protocol witness table accessor for type Playlist.Entry.InternalItem and conformance Playlist.Entry.InternalItem(&lazy protocol witness table cache variable for type Playlist.Entry.InternalItem and conformance Playlist.Entry.InternalItem, &type metadata accessor for Playlist.Entry.InternalItem);
            v128 = v127;
            v129 = dispatch thunk of CustomStringConvertible.description.getter();
            v131 = v130;
            (*(v125 + 8))(v126, v128);
            v132 = *(v124 + 8);
            v132(v122, v123);
            v133 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v129, v131, &v149);

            *(v140 + 4) = v133;
            _os_log_impl(&_mh_execute_header, v118, v142, "Unsupported Playlist.Entry.InternalItem=%s", v140, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v144);

            v132(v148, v123);
          }

          else
          {

            v134 = *(v124 + 8);
            v134(v122, v123);
            v134(v121, v123);
          }

          v135 = v0[9];
          v136 = v0[6];
          v137 = v0[7];
          (*(v0[30] + 56))(v0[3], 1, 1, v0[29]);
          (*(v137 + 8))(v135, v136);
          goto LABEL_14;
        }

        v97 = v0[30];
        v98 = v0[26];
        v99 = v0[27];
        v100 = v0[25];
        v102 = v0[16];
        v101 = v0[17];
        v143 = v0[14];
        v147 = v0[29];
        v103 = v0[12];
        v112 = v0[9];
        v139 = v0[3];
        v141 = v0[11];
        (*(v0[7] + 96))(v112, v0[6]);
        (*(v98 + 32))(v99, v112, v100);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8MusicKit5TrackOGMd);
        v105 = (*(v101 + 80) + 32) & ~*(v101 + 80);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_1004F2400;
        (*(v98 + 16))(v106 + v105, v99, v100);
        v107 = &enum case for Track.song(_:);
      }

      (*(v101 + 104))(v106 + v105, *v107, v102);
      MusicItemCollection.init(arrayLiteral:)();
      (*(v98 + 8))(v99, v100);
      (*(v103 + 8))(v143, v141);
      (*(v97 + 56))(v139, 0, 1, v147);
    }

    else
    {
      v108 = v0[29];
      v109 = v0[30];
      v110 = v0[10];
      v111 = v0[3];
      v88(v110, 1, 1, v0[11]);
      outlined destroy of TaskPriority?(v110, &_s8MusicKit8PlaylistV5EntryVSgMd);
      (*(v109 + 56))(v111, 1, 1, v108);
    }
  }

LABEL_14:

  v65 = v0[1];

  return v65();
}

{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = MusicPlaylistAddable.tracks.getter;
  }

  else
  {
    v2 = MusicPlaylistAddable.tracks.getter;
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[52];
  v4 = v0[53];
  Album.tracks.getter();
  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);

  v6 = v0[1];

  return v6();
}

{
  *(*v1 + 520) = v0;

  if (v0)
  {
    v2 = MusicPlaylistAddable.tracks.getter;
  }

  else
  {
    v2 = MusicPlaylistAddable.tracks.getter;
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[35];
  v2 = v0[29];
  v3 = v0[30];
  Playlist.tracks.getter();
  v4 = *(v3 + 48);
  v0[66] = v4;
  v0[67] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v1, 1, v2);
  v6 = v0[35];
  if (v5 == 1)
  {
    outlined destroy of TaskPriority?(v0[35], &_s8MusicKit0A14ItemCollectionVyAA5TrackOGSgMd);
LABEL_7:
    v17 = v0[40];
    v16 = v0[41];
    v18 = v0[37];
    v19 = v0[38];
    Playlist.tracks.getter();
    v20 = *(v19 + 8);
    v20(v17, v18);
    v20(v16, v18);

    v21 = v0[1];

    return v21();
  }

  v7 = v0[29];
  v8 = v0[30];
  v9 = MusicItemCollection.hasNextBatch.getter();
  v10 = *(v8 + 8);
  v0[68] = v10;
  v0[69] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v7);
  if ((v9 & 1) == 0)
  {
    goto LABEL_7;
  }

  v11 = swift_allocObject();
  v0[70] = v11;
  *(v11 + 16) = xmmword_1004F2F10;
  static PartialMusicProperty<A>.tracks.getter();
  v12 = MusicRelationshipProperty.limit(_:)();

  *(v11 + 32) = v12;
  v13 = swift_task_alloc();
  v0[71] = v13;
  *v13 = v0;
  v13[1] = MusicPlaylistAddable.tracks.getter;
  v14 = v0[39];
  v15 = v0[37];

  return dispatch thunk of MusicPropertyContainer.with(_:)(v14, v11, v15, &protocol witness table for Playlist);
}

{
  v29 = v0;
  (*(v0[38] + 8))(v0[41], v0[37]);
  v1 = v0[65];
  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v2 = v0[56];
  v3 = v0[45];
  v5 = v0[4];
  v4 = v0[5];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.actions);
  v2(v3, v4, v5);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[56];
    v11 = v0[44];
    v10 = v0[45];
    v27 = v8;
    v12 = v0[43];
    v13 = v0[4];
    v14 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v14 = 136446466;
    v9(v11, v10, v13);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    (*(v12 + 8))(v10, v13);
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v17, v28);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v19 = String.init<A>(describing:)();
    v21 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v19, v20, v28);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v7, v27, "Failed to load tracks for playlist addable item=%{public}s with error=%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v22 = v0[45];
    v23 = v0[43];
    v24 = v0[4];

    (*(v23 + 8))(v22, v24);
  }

  (*(v0[30] + 56))(v0[3], 1, 1, v0[29]);

  v25 = v0[1];

  return v25();
}

{
  *(*v1 + 576) = v0;

  if (v0)
  {
    v2 = MusicPlaylistAddable.tracks.getter;
  }

  else
  {
    v2 = MusicPlaylistAddable.tracks.getter;
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[66];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[37];
  v5 = v0[34];
  v6 = v0[29];
  Playlist.tracks.getter();
  v7 = *(v3 + 8);
  v0[73] = v7;
  v0[74] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v4);
  v8 = v1(v5, 1, v6);
  v9 = v0[29];
  if (v8 == 1)
  {
    v10 = v0[66];
    v11 = v0[34];
    MusicItemCollection.init(arrayLiteral:)();
    if (v10(v11, 1, v9) != 1)
    {
      outlined destroy of TaskPriority?(v0[34], &_s8MusicKit0A14ItemCollectionVyAA5TrackOGSgMd);
    }
  }

  else
  {
    (*(v0[30] + 32))(v0[32], v0[34], v0[29]);
  }

  if (MusicItemCollection.hasNextBatch.getter())
  {
    v12 = swift_task_alloc();
    v0[75] = v12;
    v13 = lazy protocol witness table accessor for type Playlist.Entry.InternalItem and conformance Playlist.Entry.InternalItem(&lazy protocol witness table cache variable for type Track and conformance Track, &type metadata accessor for Track);
    *v12 = v0;
    v12[1] = MusicPlaylistAddable.tracks.getter;
    v14 = v0[33];
    v15 = v0[29];

    return MusicItemCollection.nextBatch<>(limit:)(v14, 10000, 0, v15, v13);
  }

  else
  {
    v16 = v0[73];
    v17 = v0[41];
    v18 = v0[37];
    v19 = v0[32];
    v20 = v0[29];
    v21 = v0[30];
    v22 = v0[3];
    v16(v0[40], v18);
    v16(v17, v18);
    (*(v21 + 32))(v22, v19, v20);
    (*(v21 + 56))(v22, 0, 1, v20);

    v23 = v0[1];

    return v23();
  }
}

{
  v32 = v0;
  v1 = v0[41];
  v2 = v0[37];
  v3 = *(v0[38] + 8);
  v3(v0[40], v2);
  v3(v1, v2);
  v4 = v0[72];
  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v5 = v0[56];
  v6 = v0[45];
  v8 = v0[4];
  v7 = v0[5];
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.actions);
  v5(v6, v7, v8);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[56];
    v14 = v0[44];
    v13 = v0[45];
    v30 = v11;
    v15 = v0[43];
    v16 = v0[4];
    v17 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v17 = 136446466;
    v12(v14, v13, v16);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    (*(v15 + 8))(v13, v16);
    v21 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v20, v31);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    v0[2] = v4;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v22 = String.init<A>(describing:)();
    v24 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v22, v23, v31);

    *(v17 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v10, v30, "Failed to load tracks for playlist addable item=%{public}s with error=%{public}s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v25 = v0[45];
    v26 = v0[43];
    v27 = v0[4];

    (*(v26 + 8))(v25, v27);
  }

  (*(v0[30] + 56))(v0[3], 1, 1, v0[29]);

  v28 = v0[1];

  return v28();
}

{
  *(*v1 + 608) = v0;

  if (v0)
  {
    v2 = MusicPlaylistAddable.tracks.getter;
  }

  else
  {
    v2 = MusicPlaylistAddable.tracks.getter;
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = *(v0 + 264);
  v2 = *(v0 + 232);
  if ((*(v0 + 528))(v1, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v1, &_s8MusicKit0A14ItemCollectionVyAA5TrackOGSgMd);
  }

  else
  {
    v3 = *(v0 + 544);
    v4 = *(v0 + 248);
    (*(*(v0 + 240) + 32))(v4, v1, v2);
    static MusicItemCollection.+= infix(_:_:)();
    v3(v4, v2);
  }

  if (MusicItemCollection.hasNextBatch.getter())
  {
    v5 = swift_task_alloc();
    *(v0 + 600) = v5;
    v6 = lazy protocol witness table accessor for type Playlist.Entry.InternalItem and conformance Playlist.Entry.InternalItem(&lazy protocol witness table cache variable for type Track and conformance Track, &type metadata accessor for Track);
    *v5 = v0;
    v5[1] = MusicPlaylistAddable.tracks.getter;
    v7 = *(v0 + 264);
    v8 = *(v0 + 232);

    return MusicItemCollection.nextBatch<>(limit:)(v7, 10000, 0, v8, v6);
  }

  else
  {
    v9 = *(v0 + 584);
    v10 = *(v0 + 328);
    v11 = *(v0 + 296);
    v12 = *(v0 + 256);
    v13 = *(v0 + 232);
    v14 = *(v0 + 240);
    v15 = *(v0 + 24);
    v9(*(v0 + 320), v11);
    v9(v10, v11);
    (*(v14 + 32))(v15, v12, v13);
    (*(v14 + 56))(v15, 0, 1, v13);

    v16 = *(v0 + 8);

    return v16();
  }
}

{
  v29 = v0;
  (*(v0[53] + 8))(v0[55], v0[52]);
  v1 = v0[60];
  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v2 = v0[56];
  v3 = v0[45];
  v5 = v0[4];
  v4 = v0[5];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.actions);
  v2(v3, v4, v5);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[56];
    v11 = v0[44];
    v10 = v0[45];
    v27 = v8;
    v12 = v0[43];
    v13 = v0[4];
    v14 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v14 = 136446466;
    v9(v11, v10, v13);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    (*(v12 + 8))(v10, v13);
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v17, v28);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v19 = String.init<A>(describing:)();
    v21 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v19, v20, v28);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v7, v27, "Failed to load tracks for playlist addable item=%{public}s with error=%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v22 = v0[45];
    v23 = v0[43];
    v24 = v0[4];

    (*(v23 + 8))(v22, v24);
  }

  (*(v0[30] + 56))(v0[3], 1, 1, v0[29]);

  v25 = v0[1];

  return v25();
}

{
  v33 = v0;
  v1 = *(v0 + 584);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  v4 = *(v0 + 296);
  (*(v0 + 544))(*(v0 + 256), *(v0 + 232));
  v1(v2, v4);
  v1(v3, v4);
  v5 = *(v0 + 608);
  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 448);
  v7 = *(v0 + 360);
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.actions);
  v6(v7, v8, v9);
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 448);
    v15 = *(v0 + 352);
    v14 = *(v0 + 360);
    v31 = v12;
    v16 = *(v0 + 344);
    v17 = *(v0 + 32);
    v18 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v18 = 136446466;
    v13(v15, v14, v17);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    (*(v16 + 8))(v14, v17);
    v22 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v19, v21, v32);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    *(v0 + 16) = v5;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v23 = String.init<A>(describing:)();
    v25 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v23, v24, v32);

    *(v18 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v11, v31, "Failed to load tracks for playlist addable item=%{public}s with error=%{public}s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v26 = *(v0 + 360);
    v27 = *(v0 + 344);
    v28 = *(v0 + 32);

    (*(v27 + 8))(v26, v28);
  }

  (*(*(v0 + 240) + 56))(*(v0 + 24), 1, 1, *(v0 + 232));

  v29 = *(v0 + 8);

  return v29();
}

uint64_t closure #3 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = type metadata accessor for MetricsEvent.Click(0);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v2[28] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(closure #3 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:), 0, 0);
}

uint64_t closure #3 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  outlined init with copy of TaskPriority?(*(v0 + 96), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 224), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
LABEL_8:

    v20 = *(v0 + 8);

    return v20();
  }

  v4 = *(v0 + 104);
  outlined init with take of Actions.MetricsReportingContext(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
  if (!*(v4 + 16))
  {
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(*(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
    goto LABEL_8;
  }

  v5 = *(v0 + 216);
  v6 = *(v0 + 104);
  v7 = *(v6 + 56);
  __swift_project_boxed_opaque_existential_0Tm((v6 + 32), v7);
  *(v0 + 256) = MusicItem.metricsTargetIdentifier.getter(v7);
  *(v0 + 264) = v8;
  v9 = type metadata accessor for URL();
  *(v0 + 272) = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  *(v0 + 280) = v11;
  *(v0 + 288) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v5, 1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2EF0;
  v13 = *(v6 + 56);
  __swift_project_boxed_opaque_existential_0Tm((v6 + 32), v13);
  *(inited + 32) = MusicItem.metricsContentType.getter(v13);
  *(inited + 40) = v14;
  *(inited + 48) = 0;
  *(inited + 56) = xmmword_1004F2F20;
  *(inited + 72) = 1;
  *(v0 + 296) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
  *(v0 + 304) = v15;
  *(v0 + 312) = v16;
  *(v0 + 328) = v17;
  swift_setDeallocating();
  swift_arrayDestroy();
  type metadata accessor for MainActor();
  *(v0 + 320) = static MainActor.shared.getter();
  v19 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #3 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:), v19, v18);
}

{
  v80 = *(v0 + 328);
  v73 = *(v0 + 296);
  v76 = *(v0 + 264);
  v78 = *(v0 + 312);
  v74 = *(v0 + 256);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v72 = *(v0 + 160);

  outlined init with copy of TaskPriority?(v3, v4, &_s10Foundation3URLVSgMd);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  outlined init with copy of TaskPriority?(v1 + v2[5], v7, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 773;
  outlined init with take of URL?(v4, v6 + v5[7], &_s10Foundation3URLVSgMd);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  outlined init with copy of TaskPriority?(v7, v72, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 328);
  v17 = *(v0 + 304);
  v18 = *(v0 + 312);
  v19 = *(v0 + 296);
  v20 = *(v0 + 160);
  if (v15 == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));
    outlined destroy of TaskPriority?(v20, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 168);
  v24 = *(v0 + 152);
  v25 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v25 = v21;
  v25[1] = v22;
  outlined init with copy of TaskPriority?(v23, v24, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 152);
  if (v26 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 152), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 168);
  v31 = *(v0 + 144);
  v32 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v32 = v28;
  v32[1] = v29;
  outlined init with copy of TaskPriority?(v30, v31, &_s9MusicCore12MetricsEventV4PageVSgMd);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 280);
    v34 = *(v0 + 272);
    v35 = *(v0 + 200);
    outlined destroy of TaskPriority?(*(v0 + 144), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 144);
    outlined init with copy of TaskPriority?(v36 + v14[6], *(v0 + 200), &_s10Foundation3URLVSgMd);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 168);
  v38 = *(v0 + 136);
  outlined init with take of URL?(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &_s10Foundation3URLVSgMd);
  outlined init with copy of TaskPriority?(v37, v38, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 136);
  if (v39 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 136), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 168);
  v43 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v41;
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 128);
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(v45, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 168);
  v48 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 120);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 120), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 168);
  v55 = *(v0 + 112);
  v56 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v56 = v51;
  v56[1] = v52;
  outlined init with take of URL?(v54, v55, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 112);
  if (v57 == 1)
  {
    outlined destroy of TaskPriority?(v58, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 184);
  v61 = *(v0 + 192);
  v62 = *(v0 + 176);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  outlined init with take of Actions.MetricsReportingContext(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 304);
  v63 = *(v0 + 312);
  v65 = *(v0 + 296);
  v66 = *(v0 + 248);
  v67 = *(v0 + 232);
  v68 = *(v0 + 216);
  v69 = *(v0 + 192);
  v70 = *(v0 + 328);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v65, v64, v63, v70, SBYTE1(v70));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd);

  return _swift_task_switch(closure #3 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:), 0, 0);
}

{
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(*(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized Actions.AddToPlaylist.Context.menuItemTitle.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

double specialized Actions.AddToPlaylist.Context.init<A, B>(item:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10)
{
  v31 = a3;
  v32 = a4;
  v30 = a2;
  v33 = a10;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v29 - v18;
  v20 = *(a6 - 8);
  __chkstk_darwin(v17);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8MusicKit0D15PlaylistAddable_0dE8Internal0D17LibraryActionablepGMd);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1004F2400;
  *(v23 + 56) = a5;
  *(v23 + 64) = a7;
  *(v23 + 72) = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v23 + 32));
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  v25 = v30;
  outlined init with copy of PresentationSource(v30, v34);
  (*(v20 + 16))(v22, v31, a6);
  v26 = v32;
  outlined init with copy of TaskPriority?(v32, v19, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)(v23, v34, v22, v19, a6, v33, v35);
  outlined destroy of TaskPriority?(v26, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  outlined destroy of PresentationSource(v25);
  v27 = v35[1];
  *a9 = v35[0];
  a9[1] = v27;
  result = v36[0];
  a9[2] = *v36;
  return result;
}

uint64_t sub_10005AB30()
{

  return swift_deallocObject();
}

uint64_t sub_10005AB68()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMd);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t partial apply for closure #1 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMd) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)(v2);
}

uint64_t sub_10005AC68()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMd);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  (*(v3 + 8))(v0 + v4, v2);
  v8 = v0 + v5;
  swift_unknownObjectWeakDestroy();
  v9 = *(v0 + v5 + 48);
  if (v9 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), v9);
  }

  if (*(v8 + 64))
  {
  }

  if (*(v8 + 80))
  {
  }

  (*(v6 + 8))(v0 + ((v7 + ((v5 + 103) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7), v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMd) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 103) & 0xFFFFFFFFFFFFFFF8;
  v8 = (*(*(v3 - 8) + 80) + v7 + 8) & ~*(*(v3 - 8) + 80);
  v9 = *(v0 + v7);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #2 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)(v0 + v5, v0 + v6, v9, v0 + v8, v3, v2);
}

uint64_t sub_10005AF54()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    if (*(v2 + 8) >= 0xDuLL)
    {
    }

    v4 = v2 + *(v3 + 20);
    v5 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
    {

      v6 = *(v5 + 24);
      v7 = type metadata accessor for URL();
      v8 = *(v7 - 8);
      v12 = v6;
      v9 = v4 + v6;
      v10 = v7;
      if (!(*(v8 + 48))(v9, 1, v7))
      {
        (*(v8 + 8))(v4 + v12, v10);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)(v0 + v3, v4);
}

uint64_t _s9MusicCore12MetricsEventV5ClickVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type Playlist.Entry.InternalItem and conformance Playlist.Entry.InternalItem(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_30Tm()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t Actions.Collaborate.Context.init(playlist:canCollaborateOnPlaylist:collaborate:metricsReportingContext:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a5;
  v29 = a6;
  v12 = type metadata accessor for Playlist();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(a7, a1, v12);
  v16 = type metadata accessor for Actions.Collaborate.Context();
  v17 = (a7 + v16[5]);
  *v17 = a2;
  v17[1] = a3;
  v18 = swift_allocObject();
  v19 = v28;
  *(v18 + 16) = a4;
  *(v18 + 24) = v19;
  v20 = (a7 + v16[6]);
  *v20 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v20[1] = v18;
  v21 = *(v13 + 32);
  v21(v15, a1, v12);
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v23 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v24 = (v23 + *(v22 + 64) + *(v13 + 80)) & ~*(v13 + 80);
  v25 = swift_allocObject();
  outlined init with take of URL?(v29, v25 + v23, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  result = v21(v25 + v24, v15, v12);
  v27 = (a7 + v16[7]);
  *v27 = &async function pointer to partial apply for closure #1 in Actions.Collaborate.Context.init(playlist:canCollaborateOnPlaylist:collaborate:metricsReportingContext:);
  v27[1] = v25;
  return result;
}

uint64_t type metadata accessor for Actions.Collaborate.Context()
{
  result = type metadata singleton initialization cache for Actions.Collaborate.Context;
  if (!type metadata singleton initialization cache for Actions.Collaborate.Context)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(void (*a1)(void))
{
  a1();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_10005B7A4()
{

  return swift_deallocObject();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable () -> ()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return thunk for @escaping @callee_guaranteed @Sendable () -> ()(v2);
}

uint64_t closure #1 in Actions.Collaborate.Context.init(playlist:canCollaborateOnPlaylist:collaborate:metricsReportingContext:)(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = type metadata accessor for MetricsEvent.Click(0);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v2[30] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();

  return _swift_task_switch(closure #1 in Actions.Collaborate.Context.init(playlist:canCollaborateOnPlaylist:collaborate:metricsReportingContext:), 0, 0);
}

uint64_t closure #1 in Actions.Collaborate.Context.init(playlist:canCollaborateOnPlaylist:collaborate:metricsReportingContext:)()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  outlined init with copy of TaskPriority?(*(v0 + 112), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 240), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    outlined init with take of Actions.MetricsReportingContext(*(v0 + 240), *(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);
    v7 = Playlist.catalogID.getter();
    *(v0 + 272) = v8;
    *(v0 + 280) = v7;
    v9 = type metadata accessor for URL();
    *(v0 + 288) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 296) = v11;
    *(v0 + 304) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    *(v0 + 104) = type metadata accessor for Playlist();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistVmMd);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    specialized Collection.prefix(_:)(1);
    v16 = Substring.lowercased()();

    v17 = specialized Collection.dropFirst(_:)(1uLL, v13, v15);
    v19 = v18;
    v21 = v20;
    v23 = v22;

    *(v0 + 72) = v17;
    *(v0 + 80) = v19;
    *(v0 + 88) = v21;
    *(v0 + 96) = v23;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();

    *(inited + 32) = v16;
    *(inited + 48) = 0;
    *(v0 + 312) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 320) = v24;
    *(v0 + 328) = v25;
    *(v0 + 344) = v26;
    swift_setDeallocating();
    outlined destroy of MetricsEvent.Click.ActionDetails.Key(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 336) = static MainActor.shared.getter();
    v28 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #1 in Actions.Collaborate.Context.init(playlist:canCollaborateOnPlaylist:collaborate:metricsReportingContext:), v28, v27);
  }
}

{
  v85 = *(v0 + 344);
  v83 = *(v0 + 328);
  v78 = *(v0 + 312);
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 248);
  v5 = *(v0 + 224);
  v6 = *(v0 + 232);
  v79 = v5;
  v7 = *(v0 + 192);
  v8 = *(v0 + 200);
  v9 = *(v0 + 184);
  v77 = *(v0 + 176);

  v10 = 0xEB000000006D6574;
  if (v2)
  {
    v10 = v2;
  }

  v80 = v10;
  if (!v2)
  {
    v1 = 0x497972617262694CLL;
  }

  outlined init with copy of TaskPriority?(v6, v5, &_s10Foundation3URLVSgMd);
  v11 = *(v3 + v4[7]);
  v13 = *v3;
  v12 = v3[1];
  outlined init with copy of TaskPriority?(v3 + v4[5], v9, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v82 = *(v3 + v4[8]);
  *(v8 + v7[19]) = 0;
  v14 = (v8 + v7[20]);
  *v14 = 0;
  v14[1] = 0;
  *v8 = v1;
  *(v8 + 8) = v80;
  *(v8 + 16) = 2565;
  outlined init with take of URL?(v79, v8 + v7[7], &_s10Foundation3URLVSgMd);
  v81 = v12;
  *(v8 + v7[8]) = v11;
  v15 = (v8 + v7[9]);
  *v15 = v13;
  v15[1] = v12;
  v16 = v8 + v7[10];
  *v16 = v78;
  *(v16 + 16) = v83;
  *(v16 + 24) = v85;
  outlined init with copy of TaskPriority?(v9, v77, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v17 = type metadata accessor for MetricsEvent.Page(0);
  v84 = *(*(v17 - 1) + 48);
  v18 = v84(v77, 1, v17);
  v19 = *(v0 + 344);
  v20 = *(v0 + 320);
  v21 = *(v0 + 328);
  v22 = *(v0 + 312);
  v23 = *(v0 + 176);
  if (v18 == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v13, v81);
    v24 = v82;

    outlined copy of MetricsEvent.Click.ActionDetails(v22, v20, v21, v19, SBYTE1(v19));
    outlined destroy of TaskPriority?(v23, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v25 = *v23;
    v26 = v23[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v13, v81);
    v24 = v82;

    outlined copy of MetricsEvent.Click.ActionDetails(v22, v20, v21, v19, SBYTE1(v19));

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v23, type metadata accessor for MetricsEvent.Page);
  }

  v27 = *(v0 + 184);
  v28 = *(v0 + 168);
  v29 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v29 = v25;
  v29[1] = v26;
  outlined init with copy of TaskPriority?(v27, v28, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v30 = v84(v28, 1, v17);
  v31 = *(v0 + 168);
  if (v30 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 168), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v32 = 0;
    v33 = 0;
  }

  else
  {
    v32 = *(v31 + 16);
    v33 = *(v31 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v31, type metadata accessor for MetricsEvent.Page);
  }

  v34 = *(v0 + 184);
  v35 = *(v0 + 160);
  v36 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v36 = v32;
  v36[1] = v33;
  outlined init with copy of TaskPriority?(v34, v35, &_s9MusicCore12MetricsEventV4PageVSgMd);
  if (v84(v35, 1, v17) == 1)
  {
    v37 = v24;
    v38 = *(v0 + 296);
    v39 = *(v0 + 288);
    v40 = *(v0 + 216);
    outlined destroy of TaskPriority?(*(v0 + 160), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v38(v40, 1, 1, v39);
    v24 = v37;
  }

  else
  {
    v41 = *(v0 + 160);
    outlined init with copy of TaskPriority?(v41 + v17[6], *(v0 + 216), &_s10Foundation3URLVSgMd);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v41, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 152);
  outlined init with take of URL?(*(v0 + 216), *(v0 + 200) + *(*(v0 + 192) + 56), &_s10Foundation3URLVSgMd);
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v44 = v84(v43, 1, v17);
  v45 = *(v0 + 152);
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 152), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v46 = 0;
  }

  else
  {
    v46 = *(v45 + v17[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 184);
  v48 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v49 = v84(v48, 1, v17);
  v50 = *(v0 + 144);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(v50, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v51 = 1;
  }

  else
  {
    v51 = *(v50 + v17[9]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v50, type metadata accessor for MetricsEvent.Page);
  }

  v52 = *(v0 + 184);
  v53 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v51;
  outlined init with copy of TaskPriority?(v52, v53, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v54 = v84(v53, 1, v17);
  v55 = *(v0 + 136);
  if (v54 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 136), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v56 = 0;
    v57 = 0;
  }

  else
  {
    v58 = (v55 + v17[8]);
    v56 = *v58;
    v57 = v58[1];

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v55, type metadata accessor for MetricsEvent.Page);
  }

  v59 = *(v0 + 184);
  v60 = *(v0 + 128);
  v61 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v61 = v56;
  v61[1] = v57;
  outlined init with take of URL?(v59, v60, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v62 = v84(v60, 1, v17);
  v63 = *(v0 + 128);
  if (v62 == 1)
  {
    outlined destroy of TaskPriority?(v63, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v64 = 2;
  }

  else
  {
    v64 = *(v63 + v17[11]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v63, type metadata accessor for MetricsEvent.Page);
  }

  v65 = *(v0 + 200);
  v66 = *(v0 + 208);
  v67 = *(v0 + 192);
  *(v65 + *(v67 + 68)) = v64;
  *(v65 + *(v67 + 44)) = v24;
  outlined init with take of Actions.MetricsReportingContext(v65, v66, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v69 = *(v0 + 320);
  v68 = *(v0 + 328);
  v70 = *(v0 + 312);
  v71 = *(v0 + 264);
  v72 = *(v0 + 248);
  v73 = *(v0 + 232);
  v74 = *(v0 + 208);
  v75 = *(v0 + 344);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v74, *(v71 + *(v72 + 24)), *(v71 + *(v72 + 24) + 8), *(v71 + *(v72 + 36)), *(v71 + *(v72 + 36) + 8), *(v71 + *(v72 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v70, v69, v68, v75, SBYTE1(v75));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v74, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v73, &_s10Foundation3URLVSgMd);

  return _swift_task_switch(closure #1 in Actions.Collaborate.Context.init(playlist:canCollaborateOnPlaylist:collaborate:metricsReportingContext:), 0, 0);
}

{
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(*(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005C758()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for Playlist();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v0 + v2, 1, v8))
  {
    v16 = v3;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v15 = *(v10 + 24);
      v11 = type metadata accessor for URL();
      v13 = *(v11 - 8);
      v14 = v11;
      if (!(*(v13 + 48))(v9 + v15, 1))
      {
        (*(v13 + 8))(v9 + v15, v14);
      }
    }

    v3 = v16;
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in Actions.Collaborate.Context.init(playlist:canCollaborateOnPlaylist:collaborate:metricsReportingContext:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for Playlist() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in Actions.Collaborate.Context.init(playlist:canCollaborateOnPlaylist:collaborate:metricsReportingContext:)(v0 + v3, v0 + v6);
}

int *static Actions.Collaborate.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Actions.Collaborate.Context(a1, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO11CollaborateO7ContextVytGMd);
  *(a2 + result[9]) = 13;
  *(a2 + result[11]) = 0x4014000000000000;
  v4 = (a2 + result[10]);
  *v4 = closure #1 in static Actions.Collaborate.action(context:);
  v4[1] = 0;
  v5 = (a2 + result[12]);
  *v5 = &async function pointer to closure #2 in static Actions.Collaborate.action(context:);
  v5[1] = 0;
  v6 = (a2 + result[13]);
  *v6 = &async function pointer to closure #3 in static Actions.Collaborate.action(context:);
  v6[1] = 0;
  return result;
}

uint64_t closure #2 in static Actions.Collaborate.action(context:)()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Collaborate.Context() + 24));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = closure #2 in static Actions.Collaborate.action(context:);

  return v5();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t closure #3 in static Actions.Collaborate.action(context:)()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Collaborate.Context() + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = closure #3 in static Actions.Collaborate.action(context:);

  return v5();
}

uint64_t outlined init with copy of Actions.Collaborate.Context(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions.Collaborate.Context();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Actions.Collaborate.Context.menuItemTitle.getter()
{
  Playlist.hasActiveCollaboration.getter();

  return specialized static Collaboration.Setup.title(active:)();
}

uint64_t (*Actions.Collaborate.Context.menuItemImage.getter())()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  active = Playlist.hasActiveCollaboration.getter();
  Playlist.collaboration.getter();
  v4 = type metadata accessor for Playlist.Collaboration();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    outlined destroy of TaskPriority?(v2, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd);
    if ((active & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v6 = Playlist.Collaboration.hasPendingCollaborators.getter();
  (*(v5 + 8))(v2, v4);
  if (active)
  {
    if (v6)
    {
      v7 = 0xEE0065676461622ELL;
LABEL_9:
      v8 = 0x322E6E6F73726570;
      goto LABEL_10;
    }

LABEL_8:
    v7 = 0xE800000000000000;
    goto LABEL_9;
  }

LABEL_7:
  v7 = 0x80000001004C5B90;
  v8 = 0xD000000000000011;
LABEL_10:
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v7;

  return partial apply for closure #1 in ActionMenuItemImage.init(internalSystemName:);
}

uint64_t sub_10005D22C()
{

  return swift_deallocObject();
}

uint64_t sub_10005D290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Playlist();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10005D360(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Playlist();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t type metadata completion function for Actions.Collaborate.Context()
{
  result = type metadata accessor for Playlist();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ()();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t NSUserDefaults.ValueTransformer.transform.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Actions.CreatePlaylist.Context.presentCreatePlaylistView.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Actions.CreatePlaylist.Context.init(canCreatePlaylist:presentCreatePlaylistView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  return a1;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> () with global actor constraint MainActor(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(thunk for @escaping @callee_guaranteed @Sendable () -> () with global actor constraint MainActor, v4, v3);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> () with global actor constraint MainActor()
{
  v1 = *(v0 + 16);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10005D700()
{

  return swift_deallocObject();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable () -> () with global actor constraint MainActor()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return thunk for @escaping @callee_guaranteed @Sendable () -> () with global actor constraint MainActor(v2, v3);
}

uint64_t static Actions.CreatePlaylist.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 9;
  *(a5 + 40) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a5 + 48) = 0;
  *(a5 + 56) = 0x4014000000000000;
  *(a5 + 64) = &async function pointer to closure #2 in static Actions.CreatePlaylist.action(context:);
  *(a5 + 72) = 0;
  *(a5 + 80) = &async function pointer to closure #3 in static Actions.CreatePlaylist.action(context:);
  *(a5 + 88) = 0;
}

uint64_t closure #2 in static Actions.CreatePlaylist.action(context:)(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 16) + **(a2 + 16));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v5();
}

uint64_t protocol witness for static ActionDefinition.action(context:) in conformance Actions.CreatePlaylist@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v2;
  *(a2 + 32) = 9;
  *(a2 + 40) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0x4014000000000000;
  *(a2 + 64) = &async function pointer to closure #2 in static Actions.CreatePlaylist.action(context:);
  *(a2 + 72) = 0;
  *(a2 + 80) = &async function pointer to closure #3 in static Actions.CreatePlaylist.action(context:);
  *(a2 + 88) = 0;
}

uint64_t (*Actions.CreatePlaylist.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1937075312;
  *(v0 + 24) = 0xE400000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 1937075312;
  *(v1 + 24) = 0xE400000000000000;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.CreatePlaylist.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1937075312;
  *(v0 + 24) = 0xE400000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 1937075312;
  *(v1 + 24) = 0xE400000000000000;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t specialized Actions.CreatePlaylist.Context.menuItemTitle.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_10005DD3C()
{

  return swift_deallocObject();
}

uint64_t Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (**a8)()@<X8>)
{
  v52 = a7;
  v53 = a6;
  v49 = a4;
  v50 = a8;
  v47 = a3;
  v55 = a2;
  v51 = a1;
  v10 = *(a5 - 8);
  v11 = __chkstk_darwin(a1);
  v45 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v44 = &v42 - v14;
  v16 = v15;
  v46 = v15;
  __chkstk_darwin(v13);
  v18 = &v42 - v17;
  v43 = *(v10 + 16);
  v43(&v42 - v17);
  v19 = *(v10 + 80);
  v20 = (v19 + 40) & ~v19;
  v54 = v19 | 7;
  v16 += 7;
  v21 = (v16 + v20) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v22[2] = a5;
  v22[3] = a6;
  v23 = v52;
  v22[4] = v52;
  v42 = *(v10 + 32);
  v24 = v22 + v20;
  v25 = v22;
  v48 = v22;
  v42(v24, v18, a5);
  *(v25 + v21) = v55;
  v26 = v44;
  (v43)(v44, v51, a5);
  v27 = (v19 + 136) & ~v19;
  v28 = swift_allocObject();
  v29 = v53;
  *(v28 + 2) = a5;
  *(v28 + 3) = v29;
  *(v28 + 4) = v23;
  outlined init with take of PresentationSource(v47, v28 + 40);
  v30 = v26;
  v31 = v42;
  v42(v28 + v27, v30, a5);
  *(v28 + ((v16 + v27) & 0xFFFFFFFFFFFFFFF8)) = v55;
  v32 = v45;
  v31(v45, v51, a5);
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v34 = (*(v33 + 80) + 40) & ~*(v33 + 80);
  v35 = (*(v33 + 64) + v19 + v34) & ~v19;
  v36 = swift_allocObject();
  v37 = v52;
  v38 = v53;
  *(v36 + 2) = a5;
  *(v36 + 3) = v38;
  *(v36 + 4) = v37;
  outlined init with take of URL?(v49, v36 + v34, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v31(v36 + v35, v32, a5);

  v40 = v50;
  v41 = v48;
  *v50 = partial apply for closure #1 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:);
  v40[1] = v41;
  v40[2] = &async function pointer to partial apply for closure #2 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:);
  v40[3] = v28;
  v40[4] = &async function pointer to partial apply for closure #3 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:);
  v40[5] = v36;
  return result;
}

uint64_t static Actions.DeleteFromLibrary.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 49;
  *(a2 + 56) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &async function pointer to closure #2 in static Actions.DeleteFromLibrary.action(context:);
  *(a2 + 88) = 0;
  *(a2 + 96) = &async function pointer to closure #3 in static Actions.DeleteFromLibrary.action(context:);
  *(a2 + 104) = 0;
}

uint64_t static Actions.DeleteFromLibrary.canDelete<A>(item:library:)()
{
  v0 = type metadata accessor for MusicLibrary.RemoveAction();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE12RemoveActionVGMd);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  static MusicLibraryAction<>.remove.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v1 + 8))(v3, v0);
  v8 = MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t protocol witness for static ActionDefinition.action(context:) in conformance Actions.DeleteFromLibrary@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 49;
  *(a2 + 56) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &async function pointer to closure #2 in static Actions.DeleteFromLibrary.action(context:);
  *(a2 + 88) = 0;
  *(a2 + 96) = &async function pointer to closure #3 in static Actions.DeleteFromLibrary.action(context:);
  *(a2 + 104) = 0;
}

uint64_t (*Actions.DeleteFromLibrary.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6873617274;
  *(v0 + 24) = 0xE500000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6873617274;
  *(v1 + 24) = 0xE500000000000000;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.DeleteFromLibrary.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6873617274;
  *(v0 + 24) = 0xE500000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6873617274;
  *(v1 + 24) = 0xE500000000000000;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t sub_10005E7E4()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t closure #2 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  return _swift_task_switch(closure #2 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:), 0, 0);
}

uint64_t closure #2 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
{
  *(v0 + 224) = type metadata accessor for MainActor();
  *(v0 + 232) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:), v2, v1);
}

{
  v1 = v0[26];
  v2 = v0[27];
  v4 = v0[24];
  v3 = v0[25];

  specialized static Alert.confirmDelete(for:library:)(v4, v3, v1, v2, (v0 + 14));

  return _swift_task_switch(closure #2 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:), 0, 0);
}

{
  *(v0 + 240) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:), v2, v1);
}

{
  v1 = *(v0 + 184);

  v2 = specialized static UIAlertController.alertController(with:overrideStyle:)(v0 + 112, 0, 1);
  v3 = v2;
  v4 = *(v0 + 144);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = one-time initialization token for logger;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static PresentationSource.logger);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Deferring presentation…", v10, 2u);
    }

    v11 = *(v0 + 184);

    v12 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 48) = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    *(v0 + 56) = 0;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    *(v0 + 40) = &block_descriptor_2;
    v13 = _Block_copy((v0 + 16));
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    outlined init with copy of PresentationSource(v11, v0 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    outlined init with take of PresentationSource(v0 + 16, v15 + 24);
    *(v15 + 120) = v3;
    *(v15 + 128) = v4;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v3 = v3;
    v5(v11, v3, partial apply for closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:), v15);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5);
  }

  else
  {
    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v2, *(v0 + 144), 1, 0, 0);
  }

  outlined destroy of Alert(v0 + 112);
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10005ED8C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  swift_unknownObjectWeakDestroy();
  v4 = *(v0 + 88);
  if (v4 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), v4);
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 120))
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 136) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = (*(*(v2 - 8) + 80) + 136) & ~*(*(v2 - 8) + 80);
  v5 = *(v0 + ((*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #2 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v0 + 40, v0 + v4, v5, v2, v3);
}

uint64_t closure #3 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = type metadata accessor for MetricsEvent.Click(0);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v4[30] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();

  return _swift_task_switch(closure #3 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:), 0, 0);
}

uint64_t closure #3 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  outlined init with copy of TaskPriority?(*(v0 + 96), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 240), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    v7 = *(v0 + 112);
    outlined init with take of Actions.MetricsReportingContext(*(v0 + 240), *(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 272) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 280) = v8;
    v9 = type metadata accessor for URL();
    *(v0 + 288) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 296) = v11;
    *(v0 + 304) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2EF0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 0;
    *(inited + 72) = 2;
    *(v0 + 312) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 320) = v14;
    *(v0 + 328) = v15;
    *(v0 + 344) = v16;
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for MainActor();
    *(v0 + 336) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #3 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:), v18, v17);
  }
}

{
  v80 = *(v0 + 344);
  v73 = *(v0 + 312);
  v76 = *(v0 + 280);
  v78 = *(v0 + 328);
  v74 = *(v0 + 272);
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);
  v72 = *(v0 + 176);

  outlined init with copy of TaskPriority?(v3, v4, &_s10Foundation3URLVSgMd);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  outlined init with copy of TaskPriority?(v1 + v2[5], v7, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 4101;
  outlined init with take of URL?(v4, v6 + v5[7], &_s10Foundation3URLVSgMd);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  outlined init with copy of TaskPriority?(v7, v72, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 344);
  v17 = *(v0 + 320);
  v18 = *(v0 + 328);
  v19 = *(v0 + 312);
  v20 = *(v0 + 176);
  if (v15 == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));
    outlined destroy of TaskPriority?(v20, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 184);
  v24 = *(v0 + 168);
  v25 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v25 = v21;
  v25[1] = v22;
  outlined init with copy of TaskPriority?(v23, v24, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 168);
  if (v26 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 168), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 184);
  v31 = *(v0 + 160);
  v32 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v32 = v28;
  v32[1] = v29;
  outlined init with copy of TaskPriority?(v30, v31, &_s9MusicCore12MetricsEventV4PageVSgMd);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 296);
    v34 = *(v0 + 288);
    v35 = *(v0 + 216);
    outlined destroy of TaskPriority?(*(v0 + 160), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 160);
    outlined init with copy of TaskPriority?(v36 + v14[6], *(v0 + 216), &_s10Foundation3URLVSgMd);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 184);
  v38 = *(v0 + 152);
  outlined init with take of URL?(*(v0 + 216), *(v0 + 200) + *(*(v0 + 192) + 56), &_s10Foundation3URLVSgMd);
  outlined init with copy of TaskPriority?(v37, v38, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 152);
  if (v39 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 152), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v41;
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 144);
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(v45, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 184);
  v48 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 136);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 136), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 184);
  v55 = *(v0 + 128);
  v56 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v56 = v51;
  v56[1] = v52;
  outlined init with take of URL?(v54, v55, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 128);
  if (v57 == 1)
  {
    outlined destroy of TaskPriority?(v58, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 200);
  v61 = *(v0 + 208);
  v62 = *(v0 + 192);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  outlined init with take of Actions.MetricsReportingContext(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 320);
  v63 = *(v0 + 328);
  v65 = *(v0 + 312);
  v66 = *(v0 + 264);
  v67 = *(v0 + 248);
  v68 = *(v0 + 232);
  v69 = *(v0 + 208);
  v70 = *(v0 + 344);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v65, v64, v63, v70, SBYTE1(v70));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd);

  return _swift_task_switch(closure #1 in Actions.Collaborate.Context.init(playlist:canCollaborateOnPlaylist:collaborate:metricsReportingContext:), 0, 0);
}

uint64_t sub_10005FC88()
{
  v1 = *(v0 + 16);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v4;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v0 + v4, 1, v8))
  {
    v16 = v3;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v15 = *(v10 + 24);
      v11 = type metadata accessor for URL();
      v13 = *(v11 - 8);
      v14 = v11;
      if (!(*(v13 + 48))(v9 + v15, 1))
      {
        (*(v13 + 8))(v9 + v15, v14);
      }
    }

    v3 = v16;
  }

  (*(v5 + 8))(v0 + ((v4 + v3 + v6) & ~v6), v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v0 + v5, v0 + v6, v2, v3);
}

uint64_t specialized Actions.DeleteFromLibrary.Context.menuItemTitle.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_100060278()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000602E8()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOG_AF5AlertV6ActionVs5NeverOTg5(void (*a1)(void *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = &_swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v29 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v5 = &_swiftEmptyArrayStorage;
  v7 = (a3 + 32);
  while (1)
  {
    v8 = *v7++;
    v23 = v8;
    a1(v24, &v23);
    if (v3)
    {
      break;
    }

    v10 = v24[0];
    v9 = v24[1];
    v11 = v25;
    v12 = v26;
    v13 = v27;
    v14 = v28;
    v29 = v5;
    v16 = v5[2];
    v15 = v5[3];
    if (v16 >= v15 >> 1)
    {
      v20 = v25;
      v21 = v28;
      v18 = v27;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
      v13 = v18;
      v11 = v20;
      v14 = v21;
      v5 = v29;
    }

    v5[2] = v16 + 1;
    v17 = &v5[7 * v16];
    v17[4] = v10;
    v17[5] = v9;
    v17[6] = v11;
    v17[7] = v12;
    *(v17 + 64) = v13;
    *(v17 + 9) = v14;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v20 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOs5Error_pGMd);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  outlined init with copy of TaskPriority?(a4, v21, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd);
  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v7 + 80) + 304) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  v16 = v20;
  *(v15 + 4) = v19;
  *(v15 + 5) = v16;
  outlined init with take of URL?(v21, (v15 + 48), &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd);
  (*(v7 + 32))(&v15[v14], v9, v6);

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for specialized closure #1 in closure #1 in closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:), v15);
}

uint64_t specialized closure #1 in closure #1 in closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  *(v7 + 16) = v10;
  *v10 = v7;
  v10[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return v12(a6, a7);
}

uint64_t Actions.DeleteOrRemoveDownload.Choice.buttonTitle.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t Actions.DeleteOrRemoveDownload.Choice.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6F4465766F6D6572;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0x6C65636E6163;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Actions.DeleteOrRemoveDownload.Choice(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000011;
  v4 = 0x80000001004C4650;
  v5 = 0xE600000000000000;
  if (v2 == 1)
  {
    v5 = 0x80000001004C4650;
  }

  else
  {
    v3 = 0x6C65636E6163;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6F4465766F6D6572;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEE0064616F6C6E77;
  }

  v8 = 0xD000000000000011;
  if (*a2 != 1)
  {
    v8 = 0x6C65636E6163;
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F4465766F6D6572;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEE0064616F6C6E77;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}