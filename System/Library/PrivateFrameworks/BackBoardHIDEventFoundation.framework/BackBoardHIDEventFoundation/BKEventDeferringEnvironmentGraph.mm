@interface BKEventDeferringEnvironmentGraph
- (BOOL)isEqual:(id)a3;
- (__CFString)_matchSubnode:(void *)a1 toSupernode:(void *)a2;
- (id)allSelectionPathIdentifiers;
- (id)constraintsForNode:(uint64_t)a3 pathIdentifier:;
- (id)describeDeliveryChain:(id)a3 identifier:(id)a4;
- (id)graphDescriptionWithLabel:(id)a3;
- (id)modalitiesForNode:(uint64_t)a3 pathIdentifier:;
- (uint64_t)topLevelInEachProcess;
- (void)_changeSelectionPath:(void *)a3 toNode:(int)a4 requestingPID:(void *)a5 basis:(char)a6 ignoreModality:;
- (void)_chooseSubnodeOfNode:(void *)a1 forSelectionPath:(void *)a2 appendToPath:(void *)a3;
- (void)_forEachSelectionPath:(void *)a3 block:;
- (void)_updateConstraintMap;
- (void)_updateModalityMap;
- (void)dealloc;
- (void)setRules:(int)a3 forPID:;
@end

@implementation BKEventDeferringEnvironmentGraph

void __69__BKEventDeferringEnvironmentGraph__updateTopLevelNodesInEachProcess__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (a3)
  {
    v5 = *(a3 + 32);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 count];

  if (!v7)
  {
    [*(*(a1 + 32) + 8) removeObjectForKey:v8];
  }
}

- (void)_updateModalityMap
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = *(a1 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__BKEventDeferringEnvironmentGraph__updateModalityMap__block_invoke;
  v6[3] = &unk_2784F7168;
  v6[4] = a1;
  v7 = v2;
  v4 = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__BKEventDeferringEnvironmentGraph__updateModalityMap__block_invoke_3;
  v5[3] = &unk_2784F7190;
  v5[4] = a1;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
}

- (void)_updateConstraintMap
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = *(a1 + 64);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__BKEventDeferringEnvironmentGraph__updateConstraintMap__block_invoke;
  v8[3] = &unk_2784F7168;
  v8[4] = a1;
  v4 = v2;
  v9 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__BKEventDeferringEnvironmentGraph__updateConstraintMap__block_invoke_3;
  v6[3] = &unk_2784F71B8;
  v6[4] = a1;
  v7 = v4;
  v5 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v6];
}

- (id)graphDescriptionWithLabel:(id)a3
{
  v4 = sub_223CEACF0();
  v6 = v5;
  v7 = self;
  MEMORY[0x223DF72C0](v4, v6);
  MEMORY[0x223DF72C0](41, 0xE100000000000000);
  sub_223CC3B00(40, 0xE100000000000000, 0);

  sub_223CC4028(&v7->super.isa);

  v8 = sub_223CEACE0();

  return v8;
}

- (id)describeDeliveryChain:(id)a3 identifier:(id)a4
{
  v6 = sub_223CEACF0();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_223CC4424(v9, v6, v8, &v10->super.isa);

  v11 = sub_223CEACE0();

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSMutableOrderedSet *)self->_allNodes isEqual:v4->_allNodes];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(NSMutableOrderedSet *)self->_allNodes count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = self->_allNodes;
    v4 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(BKEventDeferringNode *)*(*(&v10 + 1) + 8 * v7++) disconnectFromGraph];
        }

        while (v5 != v7);
        v5 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }

  v9.receiver = self;
  v9.super_class = BKEventDeferringEnvironmentGraph;
  [(BKEventDeferringEnvironmentGraph *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setRules:(int)a3 forPID:
{
  v167 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a1)
  {
    v5 = BKLogEventDelivery();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 16);
      v7 = [MEMORY[0x277CF0C08] descriptionForRootObject:v4];
      *buf = 138544130;
      *&buf[4] = v6;
      *&buf[12] = 2048;
      *&buf[14] = a1;
      *&buf[22] = 1024;
      LODWORD(v166) = a3;
      WORD2(v166) = 2114;
      *(&v166 + 6) = v7;
      _os_log_impl(&dword_223CBE000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@ %p] setRules:forPID(%d): %{public}@", buf, 0x26u);
    }

    v8 = *(a1 + 24);
    v129[0] = MEMORY[0x277D85DD0];
    v129[1] = 3221225472;
    v129[2] = __52__BKEventDeferringEnvironmentGraph_setRules_forPID___block_invoke;
    v129[3] = &__block_descriptor_36_e30__16__0__BKEventDeferringNode_8l;
    v130 = a3;
    v104 = [v8 bs_compactMap:v129];
    v110 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v101 = v4;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v125 objects:v148 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v126;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v126 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v125 + 1) + 8 * i) identity];
          [v110 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v125 objects:v148 count:16];
      }

      while (v11);
    }

    v15 = [v110 mutableCopy];
    [v15 minusOrderedSet:v104];
    v16 = [v104 mutableCopy];
    [v16 minusOrderedSet:v110];
    v122[0] = MEMORY[0x277D85DD0];
    v122[1] = 3221225472;
    v122[2] = __52__BKEventDeferringEnvironmentGraph_setRules_forPID___block_invoke_2;
    v122[3] = &unk_2784F7060;
    v105 = v15;
    v123 = v105;
    v124 = a3;
    v102 = [v9 bs_compactMap:v122];
    v103 = v16;
    v113 = a1;
    if ([v16 count])
    {
      v17 = BKLogEventDelivery();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v99 = *(a1 + 16);
        *buf = 138543618;
        *&buf[4] = v99;
        *&buf[12] = 2114;
        *&buf[14] = v16;
        _os_log_debug_impl(&dword_223CBE000, v17, OS_LOG_TYPE_DEBUG, "removing rules from %{public}@: %{public}@", buf, 0x16u);
      }

      v18 = v16;
      v161 = 0u;
      v162 = 0u;
      v163 = 0u;
      v164 = 0u;
      obj = v18;
      v19 = [v18 countByEnumeratingWithState:&v161 objects:buf count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v162;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v162 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v23 = [*(a1 + 32) objectForKey:*(*(&v161 + 1) + 8 * j)];
            v24 = v23;
            if (v23)
            {
              v25 = *(a1 + 48);
              *&v157 = MEMORY[0x277D85DD0];
              *(&v157 + 1) = 3221225472;
              *&v158 = __67__BKEventDeferringEnvironmentGraph__removeNodesWithIdentities_pid___block_invoke;
              *(&v158 + 1) = &unk_2784F7208;
              v26 = v23;
              *&v159 = v26;
              [v25 enumerateKeysAndObjectsUsingBlock:&v157];
              [(BKEventDeferringNode *)v26 disconnectFromGraph];
              v27 = v26[2];
              v28 = [v27 target];
              if (v28)
              {
                [*(a1 + 40) removeObjectForKey:v28];
              }

              v29 = *(a1 + 32);
              v30 = [v27 identity];
              [v29 removeObjectForKey:v30];

              a1 = v113;
              [*(v113 + 24) removeObject:v26];
            }
          }

          v20 = [obj countByEnumeratingWithState:&v161 objects:buf count:16];
        }

        while (v20);
      }
    }

    if ([v105 count])
    {
      v31 = BKLogEventDelivery();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v100 = *(a1 + 16);
        *buf = 138543618;
        *&buf[4] = v100;
        *&buf[12] = 2114;
        *&buf[14] = v105;
        _os_log_debug_impl(&dword_223CBE000, v31, OS_LOG_TYPE_DEBUG, "adding rules to %{public}@: %{public}@", buf, 0x16u);
      }

      v32 = v102;
      [*(a1 + 24) addObjectsFromArray:v32];
      v145 = 0u;
      v146 = 0u;
      v143 = 0;
      v144 = 0u;
      v107 = v32;
      v33 = [v107 countByEnumeratingWithState:&v143 objects:buf count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v144;
        do
        {
          v36 = 0;
          do
          {
            if (*v144 != v35)
            {
              objc_enumerationMutation(v107);
            }

            v37 = *(v143.super_class + v36);
            if (v37)
            {
              v38 = *(v37 + 16);
            }

            else
            {
              v38 = 0;
            }

            v39 = v38;
            v40 = *(a1 + 32);
            v41 = [v39 identity];
            [v40 setObject:v37 forKey:v41];

            v42 = [v39 target];
            if (v42)
            {
              [*(a1 + 40) setObject:v37 forKey:v42];
            }

            ++v36;
          }

          while (v34 != v36);
          v43 = [v107 countByEnumeratingWithState:&v143 objects:buf count:16];
          v34 = v43;
        }

        while (v43);
      }

      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v44 = *(a1 + 24);
      v45 = [v44 countByEnumeratingWithState:&v139 objects:&v161 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v140;
        do
        {
          for (k = 0; k != v46; ++k)
          {
            if (*v140 != v47)
            {
              objc_enumerationMutation(v44);
            }

            [(BKEventDeferringNode *)*(*(&v139 + 1) + 8 * k) disconnectFromGraph];
          }

          v46 = [v44 countByEnumeratingWithState:&v139 objects:&v161 count:16];
        }

        while (v46);
      }

      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v106 = *(a1 + 24);
      v109 = [v106 countByEnumeratingWithState:&v135 objects:&v157 count:16];
      if (v109)
      {
        v108 = *v136;
        do
        {
          v49 = 0;
          do
          {
            if (*v136 != v108)
            {
              objc_enumerationMutation(v106);
            }

            v112 = v49;
            v50 = *(*(&v135 + 1) + 8 * v49);
            v51 = BKLogEventDelivery();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              if (v50)
              {
                v64 = v50[2];
              }

              else
              {
                v64 = 0;
              }

              v65 = v64;
              v66 = [v65 identity];
              *v149 = 138543362;
              v150 = v66;
              _os_log_debug_impl(&dword_223CBE000, v51, OS_LOG_TYPE_DEBUG, "match supernode %{public}@", v149, 0xCu);
            }

            v133 = 0u;
            v134 = 0u;
            v131 = 0u;
            v132 = 0u;
            v52 = *(a1 + 24);
            v53 = [v52 countByEnumeratingWithState:&v131 objects:&v153 count:16];
            if (v53)
            {
              v54 = v53;
              v55 = *v132;
              do
              {
                v56 = 0;
                do
                {
                  if (*v132 != v55)
                  {
                    objc_enumerationMutation(v52);
                  }

                  v57 = *(*(&v131 + 1) + 8 * v56);
                  if (v50 != v57)
                  {
                    v58 = [BKEventDeferringEnvironmentGraph _matchSubnode:v50 toSupernode:?];
                    if (v58 != @"process doesn't match")
                    {
                      v59 = BKLogEventDelivery();
                      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
                      {
                        if (v57)
                        {
                          v60 = v57[2];
                        }

                        else
                        {
                          v60 = 0;
                        }

                        v61 = v60;
                        v62 = [v61 identity];
                        *v149 = 138543618;
                        v150 = v62;
                        v151 = 2114;
                        v152 = v58;
                        _os_log_debug_impl(&dword_223CBE000, v59, OS_LOG_TYPE_DEBUG, "   -> %{public}@: %{public}@", v149, 0x16u);
                      }

                      if (v58 == @"connected")
                      {
                        [(BKEventDeferringNode *)v50 connectSubnode:v57];
                      }
                    }
                  }

                  ++v56;
                }

                while (v54 != v56);
                v63 = [v52 countByEnumeratingWithState:&v131 objects:&v153 count:16];
                v54 = v63;
              }

              while (v63);
            }

            a1 = v113;
            v49 = v112 + 1;
          }

          while (v112 + 1 != v109);
          v67 = [v106 countByEnumeratingWithState:&v135 objects:&v157 count:16];
          v109 = v67;
        }

        while (v67);
      }
    }

    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    obja = *(a1 + 24);
    v68 = [obja countByEnumeratingWithState:&v153 objects:&v161 count:16];
    if (v68)
    {
      v69 = v68;
      v70 = *v154;
      do
      {
        v71 = 0;
        do
        {
          if (*v154 != v70)
          {
            objc_enumerationMutation(obja);
          }

          v72 = *(*(&v153 + 1) + 8 * v71);
          v73 = v72;
          if (v72)
          {
            v74 = *(v72 + 2);
          }

          else
          {
            v74 = 0;
          }

          v75 = [MEMORY[0x277CCABB0] numberWithInt:v74];
          v157 = 0u;
          v158 = 0u;
          v159 = 0u;
          v160 = 0u;
          if (v73)
          {
            v76 = v73[3];
          }

          else
          {
            v76 = 0;
          }

          v77 = v76;
          v78 = [v77 countByEnumeratingWithState:&v157 objects:buf count:16];
          if (v78)
          {
            v79 = v78;
            v80 = *v158;
LABEL_92:
            v81 = 0;
            while (1)
            {
              if (*v158 != v80)
              {
                objc_enumerationMutation(v77);
              }

              v82 = *(*(&v157 + 1) + 8 * v81);
              if (v82)
              {
                LODWORD(v82) = *(v82 + 8);
              }

              if (v74 != v82)
              {
                break;
              }

              if (v79 == ++v81)
              {
                v79 = [v77 countByEnumeratingWithState:&v157 objects:buf count:16];
                if (v79)
                {
                  goto LABEL_92;
                }

                a1 = v113;
                goto LABEL_107;
              }
            }
          }

          a1 = v113;
          v77 = [*(v113 + 8) objectForKey:v75];
          if (!v77)
          {
            v83 = [BKEventDeferringNode alloc];
            if (v83)
            {
              v143.receiver = v83;
              v143.super_class = BKEventDeferringNode;
              v84 = objc_msgSendSuper2(&v143, sel_init);
              v77 = v84;
              if (v84)
              {
                *(v84 + 2) = v74;
                v85 = objc_alloc_init(MEMORY[0x277CBEB40]);
                v86 = v77[4];
                v77[4] = v85;

                v87 = objc_alloc_init(MEMORY[0x277CBEB40]);
                v88 = v77[3];
                v77[3] = v87;
              }
            }

            else
            {
              v77 = 0;
            }

            [*(v113 + 8) setObject:v77 forKey:v75];
          }

          [(BKEventDeferringNode *)v77 connectSubnode:v73];
LABEL_107:

          ++v71;
        }

        while (v71 != v69);
        v89 = [obja countByEnumeratingWithState:&v153 objects:&v161 count:16];
        v69 = v89;
      }

      while (v89);
    }

    v90 = [*(a1 + 8) copy];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __69__BKEventDeferringEnvironmentGraph__updateTopLevelNodesInEachProcess__block_invoke;
    *&v166 = &unk_2784F71E0;
    *(&v166 + 1) = a1;
    [v90 enumerateKeysAndObjectsUsingBlock:buf];

    [(BKEventDeferringEnvironmentGraph *)a1 _updateModalityMap];
    [(BKEventDeferringEnvironmentGraph *)a1 _updateConstraintMap];
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v91 = v102;
    v92 = [v91 countByEnumeratingWithState:&v118 objects:v147 count:16];
    if (v92)
    {
      v93 = v92;
      v94 = *v119;
      do
      {
        for (m = 0; m != v93; ++m)
        {
          if (*v119 != v94)
          {
            objc_enumerationMutation(v91);
          }

          v96 = *(*(&v118 + 1) + 8 * m);
          v97 = [MEMORY[0x277CF0648] everySelectionPath];
          v116[0] = MEMORY[0x277D85DD0];
          v116[1] = 3221225472;
          v116[2] = __52__BKEventDeferringEnvironmentGraph_setRules_forPID___block_invoke_10;
          v116[3] = &unk_2784F7088;
          v116[4] = v96;
          v116[5] = v113;
          v117 = a3;
          [(BKEventDeferringEnvironmentGraph *)v113 _forEachSelectionPath:v97 block:v116];
        }

        v93 = [v91 countByEnumeratingWithState:&v118 objects:v147 count:16];
      }

      while (v93);
    }

    v4 = v101;
  }

  v98 = *MEMORY[0x277D85DE8];
}

id __52__BKEventDeferringEnvironmentGraph_setRules_forPID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (*(v3 + 2) == *(a1 + 32))
    {
      v5 = *(v3 + 2);
LABEL_4:
      v6 = v5;
      v7 = [v6 identity];

      goto LABEL_6;
    }

    v7 = 0;
  }

  else
  {
    v5 = 0;
    v9 = a1;
    v7 = 0;
    if (!*(v9 + 32))
    {
      goto LABEL_4;
    }
  }

LABEL_6:

  return v7;
}

BKEventDeferringNode *__52__BKEventDeferringEnvironmentGraph_setRules_forPID___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = [v4 identity];
  LODWORD(v5) = [v5 containsObject:v6];

  if (v5)
  {
    v7 = [BKEventDeferringNode alloc];
    v8 = *(a1 + 40);
    v9 = v4;
    if (v7)
    {
      v16.receiver = v7;
      v16.super_class = BKEventDeferringNode;
      v10 = objc_msgSendSuper2(&v16, sel_init);
      v7 = v10;
      if (v10)
      {
        v10->_pid = v8;
        objc_storeStrong(&v10->_rule, a2);
        v11 = objc_alloc_init(MEMORY[0x277CBEB40]);
        subnodes = v7->_subnodes;
        v7->_subnodes = v11;

        v13 = objc_alloc_init(MEMORY[0x277CBEB40]);
        supernodes = v7->_supernodes;
        v7->_supernodes = v13;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __52__BKEventDeferringEnvironmentGraph_setRules_forPID___block_invoke_10(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v32 = a2;
  v3 = *(a1 + 32);
  if (v32)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v30 = v3;
    if (v3)
    {
      v4 = v3[3];
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    v6 = [v5 firstObject];
    v7 = v6;
    v29 = a1;
    if (v6)
    {
      v8 = *(v6 + 32);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    obj = v9;
    v10 = [v9 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v38;
      v14 = -1.0;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v38 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v37 + 1) + 8 * i);
          v17 = [v32[4] objectForKey:{v16, v29, v30}];
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v18 = [v17 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v34;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v34 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                [*(*(&v33 + 1) + 8 * j) timestamp];
                if (v22 > v14)
                {
                  v23 = v22;
                  v24 = v16;

                  v14 = v23;
                  v12 = v24;
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v33 objects:v41 count:16];
            }

            while (v19);
          }
        }

        v11 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    if (v12 && ([(BKEventDeferringSelectionPathContainer *)v32 containsNode:v12]& 1) == 0)
    {
      v25 = *(v29 + 40);
      v26 = *(v29 + 48);
      v27 = [MEMORY[0x277CF0618] constraintBasis];
      [(BKEventDeferringEnvironmentGraph *)v25 _changeSelectionPath:v32 toNode:v12 requestingPID:v26 basis:v27 ignoreModality:1];
    }
  }

  else
  {

    v12 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_forEachSelectionPath:(void *)a3 block:
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [MEMORY[0x277CF0648] everySelectionPath];

    if (v7 == v5)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v10 = [*(a1 + 48) allValues];
      v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v17;
        do
        {
          v14 = 0;
          do
          {
            if (*v17 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v6[2](v6, *(*(&v16 + 1) + 8 * v14++));
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v12);
      }
    }

    else
    {
      v8 = v5;
      v9 = [*(a1 + 48) objectForKey:v8];
      if (!v9)
      {
        v9 = [[BKEventDeferringSelectionPathContainer alloc] initWithPathIdentifier:v8];
        [*(a1 + 48) setObject:v9 forKey:v8];
      }

      (v6)[2](v6, v9);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_changeSelectionPath:(void *)a3 toNode:(int)a4 requestingPID:(void *)a5 basis:(char)a6 ignoreModality:
{
  v125 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a5;
  if (a1)
  {
    if (!v12)
    {
      v87 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"targetNode != ((void*)0)"];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v88 = NSStringFromSelector(sel__changeSelectionPath_toNode_requestingPID_basis_ignoreModality_);
        v89 = objc_opt_class();
        v90 = NSStringFromClass(v89);
        *buf = 138544642;
        v110 = v88;
        v111 = 2114;
        v112 = v90;
        v113 = 2048;
        v114 = a1;
        v115 = 2114;
        *v116 = @"BKEventDeferringEnvironmentGraph.m";
        *&v116[8] = 1024;
        *&v116[10] = 403;
        v117 = 2114;
        v118 = v87;
        _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v87 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x223CE8F40);
    }

    v14 = BKLogEventDelivery();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = a1[2];
      *buf = 138544386;
      v110 = v15;
      v111 = 2048;
      v112 = a1;
      v113 = 2114;
      v114 = v11;
      v115 = 1024;
      *v116 = a4;
      *&v116[4] = 2114;
      *&v116[6] = v12;
      _os_log_impl(&dword_223CBE000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@ %p] changeSelectionPath:%{public}@ requestingPID:(%d) toNode:%{public}@", buf, 0x30u);
    }

    v16 = [v13 eventProvenance];

    if (!v16)
    {
      if (*(v12 + 2) != a4)
      {
        v36 = BKLogEventDelivery();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v47 = a1[2];
          *buf = 138544386;
          v110 = v47;
          v111 = 2048;
          v112 = a1;
          v113 = 2114;
          v114 = v11;
          v115 = 1024;
          *v116 = a4;
          *&v116[4] = 2114;
          *&v116[6] = v12;
          _os_log_impl(&dword_223CBE000, v36, OS_LOG_TYPE_DEFAULT, "[%{public}@ %p] changeSelectionPath:%{public}@ rejecting hostOverride: not hosted by pid(%d) -- %{public}@", buf, 0x30u);
        }

        goto LABEL_28;
      }

      v41 = *(v12 + 3);
      v36 = [v41 firstObject];

      if (([(BKEventDeferringSelectionPathContainer *)v11 containsNode:v36]& 1) == 0)
      {
        v42 = v36 ? v36[3].isa : 0;
        v43 = v42;
        v44 = [(objc_class *)v43 count];

        if (v44)
        {
          v45 = BKLogEventDelivery();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v46 = a1[2];
            *buf = 138544130;
            v110 = v46;
            v111 = 2048;
            v112 = a1;
            v113 = 2114;
            v114 = v11;
            v115 = 2114;
            *v116 = v12;
            _os_log_impl(&dword_223CBE000, v45, OS_LOG_TYPE_DEFAULT, "[%{public}@ %p] changeSelectionPath:%{public}@ rejecting: parent not in selection path -- %{public}@", buf, 0x2Au);
          }

          goto LABEL_28;
        }
      }
    }

    v93 = a6;
    v95 = a1;
    v97 = v13;
    v98 = v12;
    v17 = v12;
    v18 = 0;
    v96 = v17;
    v99 = v11;
    do
    {
      v19 = v17;
      v20 = v11;
      v21 = [(BKEventDeferringSelectionPathContainer *)v20 constraintsForNode:v19];
      v22 = [v21 count];

      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v23 = v19[3];
      v24 = [v23 firstObject];
      v25 = v24;
      if (v24)
      {
        v26 = *(v24 + 32);
      }

      else
      {
        v26 = 0;
      }

      v27 = v26;

      v28 = [v27 countByEnumeratingWithState:&v104 objects:buf count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v105;
        while (2)
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v105 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v104 + 1) + 8 * i);
            if (v32 != v19)
            {
              v33 = [(BKEventDeferringSelectionPathContainer *)v20 constraintsForNode:v32];
              v34 = [v33 count];

              if (v34 && v22 == 0)
              {

                v38 = BKLogEventDelivery();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                {
                  v39 = v95[2];
                  *buf = 138544130;
                  v110 = v39;
                  v111 = 2048;
                  v112 = v95;
                  v113 = 2114;
                  v114 = v20;
                  v115 = 2114;
                  *v116 = v96;
                  _os_log_impl(&dword_223CBE000, v38, OS_LOG_TYPE_DEFAULT, "[%{public}@ %p] changeSelectionPath:%{public}@ rejecting because target is not reachable due to constraints -- %{public}@", buf, 0x2Au);
                }

                v36 = v18;
                v11 = v99;
LABEL_27:
                v13 = v97;
                v12 = v98;

                goto LABEL_28;
              }
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v104 objects:buf count:16];
          if (v29)
          {
            continue;
          }

          break;
        }
      }

      v36 = v19;
      v37 = v19[3];
      v17 = [v37 firstObject];

      v18 = v36;
      v11 = v99;
    }

    while (v17);
    if ((v93 & 1) == 0)
    {
      v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v48 = [(BKEventDeferringSelectionPathContainer *)v20 modalitiesForNode:v96];
      v49 = [MEMORY[0x277CF0630] activeInputModality];
      v50 = [v48 containsObject:v49];

      [BKEventDeferringEnvironmentGraph _chooseSubnodeOfNode:v36 forSelectionPath:v20 appendToPath:v19];
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v38 = [v19 reverseObjectEnumerator];
      v94 = [v38 countByEnumeratingWithState:&v100 objects:v108 count:16];
      if (v94)
      {
        v91 = *v101;
        v51 = 1;
        v92 = v50;
        while (2)
        {
          for (j = 0; j != v94; ++j)
          {
            if (*v101 != v91)
            {
              objc_enumerationMutation(v38);
            }

            v53 = [(BKEventDeferringSelectionPathContainer *)v20 modalitiesForNode:?];
            v54 = [MEMORY[0x277CF0630] activeInputModality];
            v55 = [v53 containsObject:v54];

            if (!(v92 & 1 | ((v55 & 1) == 0)))
            {
              v56 = BKLogEventDelivery();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
              {
                v57 = v95[2];
                *buf = 138544130;
                v110 = v57;
                v111 = 2048;
                v112 = v95;
                v113 = 2114;
                v114 = v20;
                v115 = 2114;
                *v116 = v96;
                _os_log_impl(&dword_223CBE000, v56, OS_LOG_TYPE_DEFAULT, "[%{public}@ %p] changeSelectionPath:%{public}@ rejecting because we can't switch from activeInput to not-activeInput -- %{public}@", buf, 0x2Au);
              }

              goto LABEL_27;
            }

            if (v55)
            {
              v51 = v92;
            }
          }

          v94 = [v38 countByEnumeratingWithState:&v100 objects:v108 count:16];
          if (v94)
          {
            continue;
          }

          break;
        }

        if ((v51 & 1) == 0)
        {
          goto LABEL_53;
        }
      }

      else
      {
      }
    }

    v58 = v96;
    do
    {
      v59 = v58;
      v60 = v59;
      if (v20)
      {
        v61 = v59[3];
        v62 = [v61 firstObject];
        v63 = v62;
        if (v62)
        {
          v64 = *(v62 + 32);
        }

        else
        {
          v64 = 0;
        }

        v65 = v64;

        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v66 = v65;
        v67 = [v66 countByEnumeratingWithState:&v104 objects:buf count:16];
        if (v67)
        {
          v68 = v67;
          v69 = *v105;
          do
          {
            for (k = 0; k != v68; ++k)
            {
              if (*v105 != v69)
              {
                objc_enumerationMutation(v66);
              }

              if (*(*(&v104 + 1) + 8 * k) != v60)
              {
                [v20 _removeNode:?];
              }
            }

            v68 = [v66 countByEnumeratingWithState:&v104 objects:buf count:16];
          }

          while (v68);
        }

        v71 = v60;
        v72 = v71[2];
        v73 = [v72 identity];

        if (v73)
        {
          v74 = v20[2];
          if (!v74)
          {
            v75 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v76 = v20[2];
            v20[2] = v75;

            v74 = v20[2];
          }

          [v74 addObject:v73];
          v77 = v60[3];
          v78 = [v77 firstObject];
          v79 = [v20 _keyForNode:v78];

          v80 = v20[3];
          if (!v80)
          {
            v81 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v82 = v20[3];
            v20[3] = v81;

            v80 = v20[3];
          }

          [v80 bs_addObject:v71 toCollectionClass:objc_opt_class() forKey:v79];
          v83 = BKLogEventDelivery();
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
          {
            v85 = v20[1];
            v86 = [MEMORY[0x277CF0C08] descriptionForRootObject:v20[3]];
            *v119 = 138543874;
            v120 = v85;
            v121 = 2114;
            v122 = v79;
            v123 = 2114;
            v124 = v86;
            _os_log_debug_impl(&dword_223CBE000, v83, OS_LOG_TYPE_DEBUG, "selection history %{public}@ (add %{public}@): %{public}@", v119, 0x20u);
          }
        }
      }

      v84 = v60[3];
      v58 = [v84 firstObject];

      v11 = v99;
    }

    while (v58);
LABEL_53:
    v13 = v97;
    v12 = v98;
LABEL_28:
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)_chooseSubnodeOfNode:(void *)a1 forSelectionPath:(void *)a2 appendToPath:(void *)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  [v7 addObject:v5];
  if (v5)
  {
    v8 = v5[4];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = v9;
  v45 = v7;
  obj = v9;
  if (v6)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v11 = [v9 countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = v5;
      v14 = 0;
      v15 = 0;
      v16 = *v53;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v53 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v52 + 1) + 8 * i);
          if ([(BKEventDeferringSelectionPathContainer *)v6 containsNode:v18])
          {
            v19 = v18;

            v14 = @"selected";
            v15 = v19;
          }
        }

        v12 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v12);
      v5 = v13;
      if (v15)
      {
        goto LABEL_40;
      }
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v20 = obj;
    v21 = [v20 countByEnumeratingWithState:&v48 objects:v60 count:16];
    if (v21)
    {
      v22 = v21;
      v46 = v20;
      v44 = v5;
      v15 = 0;
      v23 = 0;
      v24 = *v49;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v49 != v24)
          {
            objc_enumerationMutation(v46);
          }

          v26 = *(*(&v48 + 1) + 8 * j);
          v27 = [(BKEventDeferringSelectionPathContainer *)v6 modalitiesForNode:v26];
          v28 = [v27 count];

          if (v28)
          {
            v29 = 10;
          }

          else
          {
            v29 = 0;
          }

          v30 = [(BKEventDeferringSelectionPathContainer *)v6 constraintsForNode:v26];
          v31 = [v30 count];

          if (v31)
          {
            v32 = v29 | 0x64;
          }

          else
          {
            v32 = v29;
          }

          if (v32 > v23)
          {
            v33 = v26;

            v15 = v33;
            v23 = v32;
          }
        }

        v22 = [v46 countByEnumeratingWithState:&v48 objects:v60 count:16];
      }

      while (v22);

      v5 = v44;
      if (v15)
      {
        v14 = @"priority";
LABEL_40:
        v40 = BKLogEventDelivery();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543618;
          v57 = v14;
          v58 = 2114;
          v59 = v15;
          _os_log_debug_impl(&dword_223CBE000, v40, OS_LOG_TYPE_DEBUG, "CHOOSE %{public}@ subnode:%{public}@", buf, 0x16u);
        }

        v7 = v45;
        [BKEventDeferringEnvironmentGraph _chooseSubnodeOfNode:v15 forSelectionPath:v6 appendToPath:v45];
        v10 = obj;
        goto LABEL_46;
      }
    }

    else
    {
    }

    if (v5)
    {
      v34 = v5[4];
    }

    else
    {
      v34 = 0;
    }

    v35 = v34;
    v36 = v6[3];
    v37 = [v6 _keyForNode:v5];
    v38 = [v36 objectForKey:v37];
    v15 = [v38 lastObject];

    if (v15 && ([v35 containsObject:v15] & 1) != 0)
    {

      v14 = @"previous";
      goto LABEL_40;
    }

    v7 = v45;
    v10 = obj;
  }

  v39 = [v10 firstObject];
  if (v39)
  {
    v15 = v39;
    v14 = @"first";
    goto LABEL_40;
  }

  v41 = BKLogEventDelivery();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    v43 = [(BKEventDeferringNode *)v5 succinctDescription];
    *buf = 138543362;
    v57 = v43;
    _os_log_debug_impl(&dword_223CBE000, v41, OS_LOG_TYPE_DEBUG, "CHOOSE %{public}@ done", buf, 0xCu);
  }

  v15 = 0;
LABEL_46:

  v42 = *MEMORY[0x277D85DE8];
}

void __56__BKEventDeferringEnvironmentGraph__updateConstraintMap__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = *(a1 + 32);
        v10 = [v8 pathIdentifier];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __56__BKEventDeferringEnvironmentGraph__updateConstraintMap__block_invoke_2;
        v13[3] = &unk_2784F7140;
        v14 = *(a1 + 40);
        v15 = v8;
        [(BKEventDeferringEnvironmentGraph *)v9 _forEachSelectionPath:v10 block:v13];
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __56__BKEventDeferringEnvironmentGraph__updateConstraintMap__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v20 = a2;
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = *(*(a1 + 32) + 40);
        v13 = [v11 selectionTarget];
        v14 = [v13 target];
        v15 = [v12 objectForKey:v14];

        if (v15)
        {
          [v6 bs_addObject:v11 toCollectionClass:objc_opt_class() forKey:v15];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v8);
  }

  v16 = v6;
  if (v20)
  {
    objc_storeStrong(v20 + 4, v6);
  }

  v17 = BKLogEventDelivery();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 40);
    *buf = 138543618;
    v27 = v20;
    v28 = 2114;
    v29 = v18;
    _os_log_impl(&dword_223CBE000, v17, OS_LOG_TYPE_DEFAULT, "constraints(%{public}@) now %{public}@", buf, 0x16u);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __56__BKEventDeferringEnvironmentGraph__updateConstraintMap__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 bs_addObject:v3 toCollectionClass:objc_opt_class() forKey:v4];
}

void __54__BKEventDeferringEnvironmentGraph__updateModalityMap__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = *(a1 + 32);
        v10 = [v8 pathIdentifier];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __54__BKEventDeferringEnvironmentGraph__updateModalityMap__block_invoke_2;
        v13[3] = &unk_2784F7140;
        v14 = *(a1 + 40);
        v15 = v8;
        [(BKEventDeferringEnvironmentGraph *)v9 _forEachSelectionPath:v10 block:v13];
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __54__BKEventDeferringEnvironmentGraph__updateModalityMap__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = a2;
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = *(*(a1 + 32) + 40);
        v14 = [v12 selectionTarget];
        v15 = [v14 target];
        v16 = [v13 objectForKey:v15];

        if (v16)
        {
          [v6 bs_addObject:v12 toCollectionClass:objc_opt_class() forKey:v16];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v17 = v6;
  if (v19)
  {
    objc_storeStrong(v19 + 5, v6);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __54__BKEventDeferringEnvironmentGraph__updateModalityMap__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 bs_addObject:v3 toCollectionClass:objc_opt_class() forKey:v4];
}

- (__CFString)_matchSubnode:(void *)a1 toSupernode:(void *)a2
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 != v4)
  {
    if (v4)
    {
      v7 = v4[2];
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = [v8 target];

    v10 = [v9 pid];
    if (v3)
    {
      if (v10 == *(v3 + 2))
      {
        v11 = v3[2];
LABEL_8:
        v12 = v11;
        v13 = [v12 predicate];

        v14 = [v13 token];
        v15 = [v9 token];
        v16 = v15;
        if (v14 || !v15)
        {
          if ((BSEqualObjects() & 1) == 0)
          {
            v6 = @"no token match";
            goto LABEL_22;
          }

          if (![(BKEventDeferringNode *)v5 hasAncestorNode:v3])
          {
            v6 = @"connected";
            goto LABEL_22;
          }
        }

        else
        {
          if (v3)
          {
            v17 = v3[3];
          }

          else
          {
            v17 = 0;
          }

          v18 = v17;
          v19 = [v18 count];

          if (v19)
          {
            v6 = @"partial match, but there's already a supernode";
LABEL_22:

LABEL_31:
            goto LABEL_32;
          }

          if (([(BKEventDeferringNode *)v5 hasAncestorNode:v3]& 1) == 0)
          {
            v6 = @"partial connection";
            goto LABEL_22;
          }
        }

        v20 = BKLogEventDelivery();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          if (v5)
          {
            v21 = v5[2];
          }

          else
          {
            v21 = 0;
          }

          v28 = v21;
          v22 = [v28 identity];
          if (v3)
          {
            v23 = v3[2];
          }

          else
          {
            v23 = 0;
          }

          v24 = v23;
          v25 = [v24 identity];
          *buf = 138543618;
          v30 = v22;
          v31 = 2114;
          v32 = v25;
          _os_log_error_impl(&dword_223CBE000, v20, OS_LOG_TYPE_ERROR, "cycle detected between %{public}@ -> %{public}@", buf, 0x16u);
        }

        v6 = @"cycle detected";
        goto LABEL_22;
      }
    }

    else if (!v10)
    {
      v11 = 0;
      goto LABEL_8;
    }

    v6 = @"process doesn't match";
    goto LABEL_31;
  }

  v6 = 0;
LABEL_32:

  v26 = *MEMORY[0x277D85DE8];
  return v6;
}

void __67__BKEventDeferringEnvironmentGraph__removeNodesWithIdentities_pid___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  if (a3 && [a3 _removeNode:v4])
  {
    if (v4)
    {
      v5 = v4[2];
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = [v6 identity];

    if (v4)
    {
      v8 = v4[3];
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = [v9 firstObject];
    v11 = [a3 _keyForNode:v10];

    [*(a3 + 24) bs_removeObject:v4 fromCollectionForKey:v11];
    [*(a3 + 24) removeObjectForKey:v7];
    v12 = BKLogEventDelivery();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a3 + 8);
      v15 = [MEMORY[0x277CF0C08] descriptionForRootObject:*(a3 + 24)];
      v16 = 138543874;
      v17 = v14;
      v18 = 2114;
      v19 = v7;
      v20 = 2114;
      v21 = v15;
      _os_log_debug_impl(&dword_223CBE000, v12, OS_LOG_TYPE_DEBUG, "selection history %{public}@ (remove %{public}@): %{public}@", &v16, 0x20u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __77__BKEventDeferringEnvironmentGraph_setConstraintAssertions_forClientWithPID___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = MEMORY[0x277CF0618];
  v6 = a2;
  v7 = [v5 constraintBasis];
  [(BKEventDeferringEnvironmentGraph *)v2 _changeSelectionPath:v6 toNode:v3 requestingPID:v4 basis:v7 ignoreModality:1];
}

void __75__BKEventDeferringEnvironmentGraph_setModalityAssertions_forClientWithPID___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 48);
  v6 = a2;
  v7 = [v5 basis];
  [(BKEventDeferringEnvironmentGraph *)v2 _changeSelectionPath:v6 toNode:v3 requestingPID:v4 basis:v7 ignoreModality:1];
}

- (id)constraintsForNode:(uint64_t)a3 pathIdentifier:
{
  if (a1)
  {
    v4 = *(a1 + 48);
    v5 = a2;
    v6 = [v4 objectForKey:a3];
    v7 = [(BKEventDeferringSelectionPathContainer *)v6 constraintsForNode:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)modalitiesForNode:(uint64_t)a3 pathIdentifier:
{
  if (a1)
  {
    v4 = *(a1 + 48);
    v5 = a2;
    v6 = [v4 objectForKey:a3];
    v7 = [(BKEventDeferringSelectionPathContainer *)v6 modalitiesForNode:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)allSelectionPathIdentifiers
{
  if (a1)
  {
    a1 = [a1[6] allKeys];
    v1 = vars8;
  }

  return a1;
}

uint64_t __94__BKEventDeferringEnvironmentGraph_logConnectionDescriptionForDeferringRuleIdentity_toTarget___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
  }

  return BSProcessDescriptionForPID();
}

id __94__BKEventDeferringEnvironmentGraph_logConnectionDescriptionForDeferringRuleIdentity_toTarget___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  v4 = [v3 identity];

  return v4;
}

id __94__BKEventDeferringEnvironmentGraph_logConnectionDescriptionForDeferringRuleIdentity_toTarget___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  v4 = [v3 identity];

  return v4;
}

- (uint64_t)topLevelInEachProcess
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

@end