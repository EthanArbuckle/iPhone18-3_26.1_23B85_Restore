@interface CLSSearchSpecification
- (BOOL)canUsePersonPredicate;
- (BOOL)hasPersonConstraints;
- (BOOL)isClassMemberSearch;
- (BOOL)isGroupMemberSearch;
- (BOOL)isPersonSearch;
- (BOOL)requiresDashboardEntitlement;
- (CLSSearchSpecification)initWithCoder:(id)a3;
- (CLSSearchSpecification)initWithOptions:(unint64_t)a3 behaviors:(unint64_t)a4;
- (CLSSearchSpecification)initWithOptions:(unint64_t)a3 behaviors:(unint64_t)a4 searchString:(id)a5;
- (CLSSearchSpecification)initWithOptions:(unint64_t)a3 behaviors:(unint64_t)a4 searchString:(id)a5 requestor:(id)a6;
- (NSArray)searchTokens;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (id)predicate;
- (id)predicateForClasses;
- (id)predicateForGroups;
- (id)predicateForPersons;
- (id)predicateForPersonsWithObjectIDs:(id)a3;
- (id)predicateForPersonsWithPersonIDs:(id)a3;
- (id)predicateUsingSubPredicateBlock:(id)a3;
- (id)predicateWithLocationIDs:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)prohibitPrivilege:(id)a3 atLocationIDs:(id)a4;
- (void)prohibitPrivilege:(id)a3 onPersonIDs:(id)a4;
- (void)requireClassMemberRole:(unint64_t)a3 forClassIDs:(id)a4;
- (void)requireGroupMemberIDs:(id)a3;
- (void)requirePrivilege:(id)a3 atLocationIDs:(id)a4;
- (void)requirePrivilege:(id)a3 onPersonIDs:(id)a4;
- (void)requireRole:(id)a3 atLocationIDs:(id)a4;
- (void)requireRoleType:(int64_t)a3 atLocationIDs:(id)a4;
- (void)requireRoleType:(int64_t)a3 onPersonIDs:(id)a4;
- (void)restrictToClassesAtLocationIDs:(id)a3;
- (void)restrictToGroupsAtLocationIDs:(id)a3;
- (void)restrictToOrganizationsMatchingEmailDomain:(id)a3;
- (void)sanitizeSpecForABMMAID;
- (void)sanitizeSpecForEDUMAID;
@end

@implementation CLSSearchSpecification

- (CLSSearchSpecification)initWithOptions:(unint64_t)a3 behaviors:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = CLSSearchSpecification;
  result = [(CLSSearchSpecification *)&v7 init];
  if (result)
  {
    result->_options = a3;
    result->_behaviors = a4;
    result->_compareOptions = 393;
    result->_includeUnsearchablePersons = 0;
    result->_requiredRoleType = 0;
    result->_requiredLocationRoleType = 0;
    result->_requiredClassMemberRole = 0;
  }

  return result;
}

- (CLSSearchSpecification)initWithOptions:(unint64_t)a3 behaviors:(unint64_t)a4 searchString:(id)a5
{
  v8 = a5;
  v12 = objc_msgSend_initWithOptions_behaviors_(self, v9, a3, a4);
  if (v12)
  {
    v13 = objc_msgSend_lowercaseString(v8, v10, v11);
    searchString = v12->_searchString;
    v12->_searchString = v13;
  }

  return v12;
}

- (CLSSearchSpecification)initWithOptions:(unint64_t)a3 behaviors:(unint64_t)a4 searchString:(id)a5 requestor:(id)a6
{
  v11 = a6;
  v13 = objc_msgSend_initWithOptions_behaviors_searchString_(self, v12, a3, a4, a5);
  v14 = v13;
  if (v13)
  {
    objc_storeStrong((v13 + 56), a6);
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_options(self, v8, v9);
  v13 = objc_msgSend_behaviors(self, v11, v12);
  v16 = objc_msgSend_searchString(self, v14, v15);
  v19 = objc_msgSend_copy(v16, v17, v18);
  v21 = objc_msgSend_initWithOptions_behaviors_searchString_(v7, v20, v10, v13, v19);

  v24 = objc_msgSend_classLocationIDs(self, v22, v23);
  v27 = objc_msgSend_copy(v24, v25, v26);
  objc_msgSend_setClassLocationIDs_(v21, v28, v27);

  v31 = objc_msgSend_classSortDescriptors(self, v29, v30);
  v34 = objc_msgSend_copy(v31, v32, v33);
  objc_msgSend_setClassSortDescriptors_(v21, v35, v34);

  v38 = objc_msgSend_includeUnsearchablePersons(self, v36, v37);
  objc_msgSend_setIncludeUnsearchablePersons_(v21, v39, v38);
  v42 = objc_msgSend_personSortDescriptors(self, v40, v41);
  v45 = objc_msgSend_copy(v42, v43, v44);
  objc_msgSend_setPersonSortDescriptors_(v21, v46, v45);

  v49 = objc_msgSend_personLocationIDs(self, v47, v48);
  v52 = objc_msgSend_copy(v49, v50, v51);
  objc_msgSend_setPersonLocationIDs_(v21, v53, v52);

  v56 = objc_msgSend_requiredRoleID(self, v54, v55);
  v59 = objc_msgSend_copy(v56, v57, v58);
  objc_msgSend_setRequiredRoleID_(v21, v60, v59);

  v63 = objc_msgSend_requiredRoleType(self, v61, v62);
  objc_msgSend_setRequiredRoleType_(v21, v64, v63);
  v67 = objc_msgSend_requiredPrivilege(self, v65, v66);
  v70 = objc_msgSend_copy(v67, v68, v69);
  objc_msgSend_setRequiredPrivilege_(v21, v71, v70);

  v74 = objc_msgSend_requiredPrivilegeLocationIDs(self, v72, v73);
  v77 = objc_msgSend_copy(v74, v75, v76);
  objc_msgSend_setRequiredPrivilegeLocationIDs_(v21, v78, v77);

  v81 = objc_msgSend_prohibitedPrivilege(self, v79, v80);
  v84 = objc_msgSend_copy(v81, v82, v83);
  objc_msgSend_setProhibitedPrivilege_(v21, v85, v84);

  v88 = objc_msgSend_prohibitedPrivilegeLocationIDs(self, v86, v87);
  v91 = objc_msgSend_copy(v88, v89, v90);
  objc_msgSend_setProhibitedPrivilegeLocationIDs_(v21, v92, v91);

  v95 = objc_msgSend_locationSortDescriptors(self, v93, v94);
  v98 = objc_msgSend_copy(v95, v96, v97);
  objc_msgSend_setLocationSortDescriptors_(v21, v99, v98);

  v102 = objc_msgSend_locationPersonIDs(self, v100, v101);
  v105 = objc_msgSend_copy(v102, v103, v104);
  objc_msgSend_setLocationPersonIDs_(v21, v106, v105);

  v109 = objc_msgSend_requiredLocationRoleType(self, v107, v108);
  objc_msgSend_setRequiredLocationRoleType_(v21, v110, v109);
  v113 = objc_msgSend_requiredLocationPrivilege(self, v111, v112);
  v116 = objc_msgSend_copy(v113, v114, v115);
  objc_msgSend_setRequiredLocationPrivilege_(v21, v117, v116);

  v120 = objc_msgSend_requiredLocationPersonIDs(self, v118, v119);
  v123 = objc_msgSend_copy(v120, v121, v122);
  objc_msgSend_setRequiredLocationPersonIDs_(v21, v124, v123);

  v127 = objc_msgSend_prohibitedLocationPrivilege(self, v125, v126);
  v130 = objc_msgSend_copy(v127, v128, v129);
  objc_msgSend_setProhibitedLocationPrivilege_(v21, v131, v130);

  v134 = objc_msgSend_prohibitedLocationPersonIDs(self, v132, v133);
  v137 = objc_msgSend_copy(v134, v135, v136);
  objc_msgSend_setProhibitedLocationPersonIDs_(v21, v138, v137);

  v141 = objc_msgSend_organizationSortDescriptors(self, v139, v140);
  v144 = objc_msgSend_copy(v141, v142, v143);
  objc_msgSend_setOrganizationSortDescriptors_(v21, v145, v144);

  v148 = objc_msgSend_requiredOrganizationEmailDomain(self, v146, v147);
  v151 = objc_msgSend_copy(v148, v149, v150);
  objc_msgSend_setRequiredOrganizationEmailDomain_(v21, v152, v151);

  v155 = objc_msgSend_adminRequestor(self, v153, v154);
  v158 = objc_msgSend_copy(v155, v156, v157);
  objc_msgSend_setAdminRequestor_(v21, v159, v158);

  v162 = objc_msgSend_requiredClassMemberRole(self, v160, v161);
  objc_msgSend_setRequiredClassMemberRole_(v21, v163, v162);
  v166 = objc_msgSend_requiredClassMemberClassIDs(self, v164, v165);
  v169 = objc_msgSend_copy(v166, v167, v168);
  objc_msgSend_setRequiredClassMemberClassIDs_(v21, v170, v169);

  v173 = objc_msgSend_groupSortDescriptors(self, v171, v172);
  v176 = objc_msgSend_copy(v173, v174, v175);
  objc_msgSend_setGroupSortDescriptors_(v21, v177, v176);

  v180 = objc_msgSend_groupLocationIDs(self, v178, v179);
  v183 = objc_msgSend_copy(v180, v181, v182);
  objc_msgSend_setGroupLocationIDs_(v21, v184, v183);

  v187 = objc_msgSend_requiredGroupMemberGroupIDs(self, v185, v186);
  v190 = objc_msgSend_copy(v187, v188, v189);
  objc_msgSend_setRequiredGroupMemberGroupIDs_(v21, v191, v190);

  v194 = objc_msgSend_includeEmptyGroupsInResults(self, v192, v193);
  objc_msgSend_setIncludeEmptyGroupsInResults_(v21, v195, v194);
  return v21;
}

- (CLSSearchSpecification)initWithCoder:(id)a3
{
  v92[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v91.receiver = self;
  v91.super_class = CLSSearchSpecification;
  v5 = [(CLSSearchSpecification *)&v91 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v92[0] = objc_opt_class();
    v92[1] = objc_opt_class();
    v92[2] = objc_opt_class();
    v92[3] = objc_opt_class();
    v92[4] = objc_opt_class();
    v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v92, 5);
    v10 = objc_msgSend_setWithArray_(v6, v9, v8);

    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v12, v11, @"searchString");
    searchString = v5->_searchString;
    v5->_searchString = v13;

    v5->_compareOptions = objc_msgSend_decodeIntegerForKey_(v4, v15, @"compareOptions");
    v5->_options = objc_msgSend_decodeIntegerForKey_(v4, v16, @"options");
    v5->_behaviors = objc_msgSend_decodeIntegerForKey_(v4, v17, @"behaviors");
    v19 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v18, v10, @"classLocationIDs");
    classLocationIDs = v5->_classLocationIDs;
    v5->_classLocationIDs = v19;

    v22 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v21, v10, @"classSortDescriptors");
    classSortDescriptors = v5->_classSortDescriptors;
    v5->_classSortDescriptors = v22;

    v5->_includeUnsearchablePersons = objc_msgSend_decodeBoolForKey_(v4, v24, @"includeUnsearchablePersons");
    v26 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v25, v10, @"personSortDescriptors");
    personSortDescriptors = v5->_personSortDescriptors;
    v5->_personSortDescriptors = v26;

    v29 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v28, v10, @"personLocationIDs");
    personLocationIDs = v5->_personLocationIDs;
    v5->_personLocationIDs = v29;

    v32 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v31, v10, @"requiredRoleID");
    requiredRoleID = v5->_requiredRoleID;
    v5->_requiredRoleID = v32;

    v5->_requiredRoleType = objc_msgSend_decodeIntegerForKey_(v4, v34, @"requiredRoleType");
    v36 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v35, v10, @"requiredPrivilege");
    requiredPrivilege = v5->_requiredPrivilege;
    v5->_requiredPrivilege = v36;

    v39 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v38, v10, @"requiredPrivilegeLocationIDs");
    requiredPrivilegeLocationIDs = v5->_requiredPrivilegeLocationIDs;
    v5->_requiredPrivilegeLocationIDs = v39;

    v42 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v41, v10, @"prohibitedPrivilege");
    prohibitedPrivilege = v5->_prohibitedPrivilege;
    v5->_prohibitedPrivilege = v42;

    v45 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v44, v10, @"prohibitedPrivilegeLocationIDs");
    prohibitedPrivilegeLocationIDs = v5->_prohibitedPrivilegeLocationIDs;
    v5->_prohibitedPrivilegeLocationIDs = v45;

    v48 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v47, v10, @"locationSortDescriptors");
    locationSortDescriptors = v5->_locationSortDescriptors;
    v5->_locationSortDescriptors = v48;

    v51 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v50, v10, @"locationPersonIDs");
    locationPersonIDs = v5->_locationPersonIDs;
    v5->_locationPersonIDs = v51;

    v5->_requiredLocationRoleType = objc_msgSend_decodeIntegerForKey_(v4, v53, @"requiredLocationRoleType");
    v55 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v54, v10, @"requiredLocationPrivilege");
    requiredLocationPrivilege = v5->_requiredLocationPrivilege;
    v5->_requiredLocationPrivilege = v55;

    v58 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v57, v10, @"requiredLocationPersonIDs");
    requiredLocationPersonIDs = v5->_requiredLocationPersonIDs;
    v5->_requiredLocationPersonIDs = v58;

    v61 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v60, v10, @"prohibitedLocationPrivilege");
    prohibitedLocationPrivilege = v5->_prohibitedLocationPrivilege;
    v5->_prohibitedLocationPrivilege = v61;

    v64 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v63, v10, @"prohibitedLocationPersonIDs");
    prohibitedLocationPersonIDs = v5->_prohibitedLocationPersonIDs;
    v5->_prohibitedLocationPersonIDs = v64;

    v67 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v66, v10, @"organizationSortDescriptors");
    organizationSortDescriptors = v5->_organizationSortDescriptors;
    v5->_organizationSortDescriptors = v67;

    v70 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v69, v10, @"requiredOrganizationEmailDomain");
    requiredOrganizationEmailDomain = v5->_requiredOrganizationEmailDomain;
    v5->_requiredOrganizationEmailDomain = v70;

    v73 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v72, v10, @"adminRequestor");
    adminRequestor = v5->_adminRequestor;
    v5->_adminRequestor = v73;

    v5->_requiredClassMemberRole = objc_msgSend_decodeIntegerForKey_(v4, v75, @"requiredClassMemberRole");
    v77 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v76, v10, @"requiredClassMemberClassIDs");
    requiredClassMemberClassIDs = v5->_requiredClassMemberClassIDs;
    v5->_requiredClassMemberClassIDs = v77;

    v80 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v79, v10, @"groupSortDescriptors");
    groupSortDescriptors = v5->_groupSortDescriptors;
    v5->_groupSortDescriptors = v80;

    v83 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v82, v10, @"groupLocationIDs");
    groupLocationIDs = v5->_groupLocationIDs;
    v5->_groupLocationIDs = v83;

    v86 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v85, v10, @"requiredGroupMemberGroupIDs");
    requiredGroupMemberGroupIDs = v5->_requiredGroupMemberGroupIDs;
    v5->_requiredGroupMemberGroupIDs = v86;

    v5->_includeEmptyGroupsInResults = objc_msgSend_decodeBoolForKey_(v4, v88, @"includeEmptyGroupsInResults");
  }

  v89 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  searchString = self->_searchString;
  v36 = a3;
  objc_msgSend_encodeObject_forKey_(v36, v5, searchString, @"searchString");
  objc_msgSend_encodeInteger_forKey_(v36, v6, self->_compareOptions, @"compareOptions");
  objc_msgSend_encodeInteger_forKey_(v36, v7, self->_options, @"options");
  objc_msgSend_encodeInteger_forKey_(v36, v8, self->_behaviors, @"behaviors");
  objc_msgSend_encodeObject_forKey_(v36, v9, self->_classLocationIDs, @"classLocationIDs");
  objc_msgSend_encodeObject_forKey_(v36, v10, self->_classSortDescriptors, @"classSortDescriptors");
  objc_msgSend_encodeBool_forKey_(v36, v11, self->_includeUnsearchablePersons, @"includeUnsearchablePersons");
  objc_msgSend_encodeObject_forKey_(v36, v12, self->_personSortDescriptors, @"personSortDescriptors");
  objc_msgSend_encodeObject_forKey_(v36, v13, self->_personLocationIDs, @"personLocationIDs");
  objc_msgSend_encodeObject_forKey_(v36, v14, self->_requiredRoleID, @"requiredRoleID");
  objc_msgSend_encodeInteger_forKey_(v36, v15, self->_requiredRoleType, @"requiredRoleType");
  objc_msgSend_encodeObject_forKey_(v36, v16, self->_requiredPrivilege, @"requiredPrivilege");
  objc_msgSend_encodeObject_forKey_(v36, v17, self->_requiredPrivilegeLocationIDs, @"requiredPrivilegeLocationIDs");
  objc_msgSend_encodeObject_forKey_(v36, v18, self->_prohibitedPrivilege, @"prohibitedPrivilege");
  objc_msgSend_encodeObject_forKey_(v36, v19, self->_prohibitedPrivilegeLocationIDs, @"prohibitedPrivilegeLocationIDs");
  objc_msgSend_encodeObject_forKey_(v36, v20, self->_locationSortDescriptors, @"locationSortDescriptors");
  objc_msgSend_encodeObject_forKey_(v36, v21, self->_locationPersonIDs, @"locationPersonIDs");
  objc_msgSend_encodeInteger_forKey_(v36, v22, self->_requiredLocationRoleType, @"requiredLocationRoleType");
  objc_msgSend_encodeObject_forKey_(v36, v23, self->_requiredLocationPrivilege, @"requiredLocationPrivilege");
  objc_msgSend_encodeObject_forKey_(v36, v24, self->_requiredLocationPersonIDs, @"requiredLocationPersonIDs");
  objc_msgSend_encodeObject_forKey_(v36, v25, self->_prohibitedLocationPrivilege, @"prohibitedLocationPrivilege");
  objc_msgSend_encodeObject_forKey_(v36, v26, self->_prohibitedLocationPersonIDs, @"prohibitedLocationPersonIDs");
  objc_msgSend_encodeObject_forKey_(v36, v27, self->_organizationSortDescriptors, @"organizationSortDescriptors");
  objc_msgSend_encodeObject_forKey_(v36, v28, self->_requiredOrganizationEmailDomain, @"requiredOrganizationEmailDomain");
  objc_msgSend_encodeObject_forKey_(v36, v29, self->_adminRequestor, @"adminRequestor");
  objc_msgSend_encodeInteger_forKey_(v36, v30, self->_requiredClassMemberRole, @"requiredClassMemberRole");
  objc_msgSend_encodeObject_forKey_(v36, v31, self->_requiredClassMemberClassIDs, @"requiredClassMemberClassIDs");
  objc_msgSend_encodeObject_forKey_(v36, v32, self->_groupSortDescriptors, @"groupSortDescriptors");
  objc_msgSend_encodeObject_forKey_(v36, v33, self->_groupLocationIDs, @"groupLocationIDs");
  objc_msgSend_encodeObject_forKey_(v36, v34, self->_requiredGroupMemberGroupIDs, @"requiredGroupMemberGroupIDs");
  objc_msgSend_encodeBool_forKey_(v36, v35, self->_includeEmptyGroupsInResults, @"includeEmptyGroupsInResults");
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = NSStringFromSearchOptions(self->_options);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v5, v4, @"options");

  v6 = NSStringFromSearchBehaviors(self->_behaviors);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v7, v6, @"behaviors");

  searchString = self->_searchString;
  if (searchString)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v8, searchString, @"searchString");
    v10 = NSStringFromNSStringCompareOptions(self->_compareOptions);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v11, v10, @"compareOptions");
  }

  if ((self->_options & 2) != 0)
  {
    classLocationIDs = self->_classLocationIDs;
    if (classLocationIDs)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v3, v8, classLocationIDs, @"classLocationIDs");
    }

    classSortDescriptors = self->_classSortDescriptors;
    if (classSortDescriptors)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v3, v8, classSortDescriptors, @"classSortDescriptors");
    }
  }

  if ((self->_options & 0x10) != 0)
  {
    groupLocationIDs = self->_groupLocationIDs;
    if (groupLocationIDs)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v3, v8, groupLocationIDs, @"groupLocationIDs");
    }

    groupSortDescriptors = self->_groupSortDescriptors;
    if (groupSortDescriptors)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v3, v8, groupSortDescriptors, @"groupSortDescriptors");
    }
  }

  if (self->_options)
  {
    v16 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v8, self->_includeUnsearchablePersons);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v17, v16, @"includeUnsearchablePersons");

    requiredRoleType = self->_requiredRoleType;
    if (requiredRoleType)
    {
      v19 = objc_msgSend_stringForRoleType_(CLSRole, v8, requiredRoleType);
      objc_msgSend_setObject_forKeyedSubscript_(v3, v20, v19, @"requiredRoleType");
    }

    personSortDescriptors = self->_personSortDescriptors;
    if (personSortDescriptors)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v3, v8, personSortDescriptors, @"personSortDescriptors");
    }

    personLocationIDs = self->_personLocationIDs;
    if (personLocationIDs)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v3, v8, personLocationIDs, @"personLocationIDs");
    }

    requiredRoleID = self->_requiredRoleID;
    if (requiredRoleID)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v3, v8, requiredRoleID, @"requiredRoleID");
    }

    requiredPrivilege = self->_requiredPrivilege;
    if (requiredPrivilege)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v3, v8, requiredPrivilege, @"requiredPrivilege");
    }

    requiredPrivilegeLocationIDs = self->_requiredPrivilegeLocationIDs;
    if (requiredPrivilegeLocationIDs)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v3, v8, requiredPrivilegeLocationIDs, @"requiredPrivilegeLocationIDs");
    }

    prohibitedPrivilege = self->_prohibitedPrivilege;
    if (prohibitedPrivilege)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v3, v8, prohibitedPrivilege, @"prohibitedPrivilege");
    }

    prohibitedPrivilegeLocationIDs = self->_prohibitedPrivilegeLocationIDs;
    if (prohibitedPrivilegeLocationIDs)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v3, v8, prohibitedPrivilegeLocationIDs, @"prohibitedPrivilegeLocationIDs");
    }

    if (self->_requiredClassMemberClassIDs)
    {
      v28 = objc_msgSend_stringForRole_(CLSPerson, v8, self->_requiredClassMemberRole);
      objc_msgSend_setObject_forKeyedSubscript_(v3, v29, v28, @"requiredClassMemberRole");

      objc_msgSend_setObject_forKeyedSubscript_(v3, v30, self->_requiredClassMemberClassIDs, @"requiredClassMemberClassIDs");
    }

    requiredGroupMemberGroupIDs = self->_requiredGroupMemberGroupIDs;
    if (requiredGroupMemberGroupIDs)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v3, v8, requiredGroupMemberGroupIDs, @"requiredGroupMemberGroupIDs");
    }
  }

  if ((self->_options & 4) != 0)
  {
    locationSortDescriptors = self->_locationSortDescriptors;
    if (locationSortDescriptors)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v3, v8, locationSortDescriptors, @"locationSortDescriptors");
    }

    locationPersonIDs = self->_locationPersonIDs;
    if (locationPersonIDs)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v3, v8, locationPersonIDs, @"locationPersonIDs");
    }

    v34 = objc_msgSend_stringForRoleType_(CLSRole, v8, self->_requiredLocationRoleType);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v35, v34, @"requiredLocationRoleType");

    requiredLocationPrivilege = self->_requiredLocationPrivilege;
    if (requiredLocationPrivilege)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v3, v8, requiredLocationPrivilege, @"requiredLocationPrivilege");
    }

    requiredLocationPersonIDs = self->_requiredLocationPersonIDs;
    if (requiredLocationPersonIDs)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v3, v8, requiredLocationPersonIDs, @"requiredLocationPersonIDs");
    }

    prohibitedLocationPrivilege = self->_prohibitedLocationPrivilege;
    if (prohibitedLocationPrivilege)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v3, v8, prohibitedLocationPrivilege, @"prohibitedLocationPrivilege");
    }

    prohibitedLocationPersonIDs = self->_prohibitedLocationPersonIDs;
    if (prohibitedLocationPersonIDs)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v3, v8, prohibitedLocationPersonIDs, @"prohibitedLocationPersonIDs");
    }
  }

  if ((self->_options & 8) != 0)
  {
    organizationSortDescriptors = self->_organizationSortDescriptors;
    if (organizationSortDescriptors)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v3, v8, organizationSortDescriptors, @"organizationSortDescriptors");
    }

    requiredOrganizationEmailDomain = self->_requiredOrganizationEmailDomain;
    if (requiredOrganizationEmailDomain)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v3, v8, requiredOrganizationEmailDomain, @"requiredOrganizationEmailDomain");
    }
  }

  adminRequestor = self->_adminRequestor;
  if (adminRequestor)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v8, adminRequestor, @"adminRequestor");
  }

  if (self->_includeEmptyGroupsInResults)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v8, @"YES", @"includeEmptyGroupsInResults");
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v8, @"NO", @"includeEmptyGroupsInResults");
  }

  return v3;
}

- (NSArray)searchTokens
{
  searchString = self->_searchString;
  if (searchString && objc_msgSend_length(searchString, a2, v2))
  {
    v7 = objc_msgSend__cls_searchableTokens(self->_searchString, v5, v6);
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (id)predicateUsingSubPredicateBlock:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = objc_msgSend_searchTokens(self, v6, v7, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v25, v29, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        if (objc_msgSend_length(v16, v11, v12))
        {
          v18 = v4[2](v4, v16);
          if (v18)
          {
            objc_msgSend_addObject_(v5, v17, v18);
          }
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v25, v29, 16);
    }

    while (v13);
  }

  if (objc_msgSend_count(v5, v19, v20))
  {
    v22 = objc_msgSend_orPredicateWithSubpredicates_(MEMORY[0x277CCA920], v21, v5);
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)predicateForPersons
{
  if (objc_msgSend_canUsePersonPredicate(self, a2, v2))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_236FE8E74;
    v7[3] = &unk_278A19598;
    v7[4] = self;
    v5 = objc_msgSend_predicateUsingSubPredicateBlock_(self, v4, v7);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)predicateForPersonsWithPersonIDs:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_searchString(self, v5, v6);

  if (v7)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_236FE90A8;
    v12[3] = &unk_278A195C0;
    v12[4] = self;
    v13 = v4;
    v10 = objc_msgSend_predicateUsingSubPredicateBlock_(self, v9, v12);
  }

  else
  {
    v10 = objc_msgSend_predicateForPersonsWithObjectIDs_(self, v8, v4);
  }

  return v10;
}

- (id)predicateForClasses
{
  if (objc_msgSend_canUseClassPredicate(self, a2, v2))
  {
    v6 = objc_msgSend_classLocationIDs(self, v4, v5);
    v9 = objc_msgSend_count(v6, v7, v8);

    if (v9)
    {
      v12 = objc_msgSend_classLocationIDs(self, v10, v11);
      v14 = objc_msgSend_predicateWithLocationIDs_(self, v13, v12);
    }

    else
    {
      v14 = objc_msgSend_predicate(self, v10, v11);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)predicateForGroups
{
  if (objc_msgSend_canUseGroupPredicate(self, a2, v2))
  {
    v6 = objc_msgSend_groupLocationIDs(self, v4, v5);
    v9 = objc_msgSend_count(v6, v7, v8);

    if (v9)
    {
      v12 = objc_msgSend_groupLocationIDs(self, v10, v11);
      v14 = objc_msgSend_predicateWithLocationIDs_(self, v13, v12);
    }

    else
    {
      v14 = objc_msgSend_predicate(self, v10, v11);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)predicate
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_236FE9408;
  v4[3] = &unk_278A19598;
  v4[4] = self;
  v2 = objc_msgSend_predicateUsingSubPredicateBlock_(self, a2, v4);

  return v2;
}

- (id)predicateWithLocationIDs:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_236FE9584;
  v9[3] = &unk_278A195C0;
  v9[4] = self;
  v10 = v4;
  v5 = v4;
  v7 = objc_msgSend_predicateUsingSubPredicateBlock_(self, v6, v9);

  return v7;
}

- (BOOL)requiresDashboardEntitlement
{
  if (self->_includeUnsearchablePersons)
  {
    return 1;
  }

  if (objc_msgSend_isOrganizationSearch(self, a2, v2))
  {
    return 1;
  }

  v6 = objc_msgSend_adminRequestor(self, v4, v5);

  if (v6)
  {
    return 1;
  }

  if (objc_msgSend_isClassMemberSearch(self, v7, v8) & 1) != 0 || (objc_msgSend_isGroupMemberSearch(self, v10, v11))
  {
    return 0;
  }

  if (!self->_searchString || (objc_msgSend_hasPersonConstraints(self, v12, v13) & 1) != 0)
  {
    return 1;
  }

  return MEMORY[0x2821F9670](self, sel_hasLocationConstraints, v14);
}

- (BOOL)canUsePersonPredicate
{
  if (self->_options)
  {
    return objc_msgSend_hasPersonConstraints(self, a2, v2) ^ 1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)hasPersonConstraints
{
  if ((self->_options & 1) == 0)
  {
    return 0;
  }

  if (self->_personLocationIDs || !self->_searchString || self->_requiredRoleID || self->_requiredRoleType || self->_requiredPrivilege)
  {
    return 1;
  }

  return self->_prohibitedPrivilege != 0;
}

- (BOOL)isPersonSearch
{
  if (self->_options)
  {
    return objc_msgSend_isClassMemberSearch(self, a2, v2) ^ 1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isGroupMemberSearch
{
  if (self->_options)
  {
    requiredGroupMemberGroupIDs = self->_requiredGroupMemberGroupIDs;
    if (requiredGroupMemberGroupIDs)
    {
      LOBYTE(requiredGroupMemberGroupIDs) = objc_msgSend_count(requiredGroupMemberGroupIDs, a2, v2) != 0;
    }
  }

  else
  {
    LOBYTE(requiredGroupMemberGroupIDs) = 0;
  }

  return requiredGroupMemberGroupIDs;
}

- (BOOL)isClassMemberSearch
{
  if (self->_options)
  {
    requiredClassMemberClassIDs = self->_requiredClassMemberClassIDs;
    if (!requiredClassMemberClassIDs)
    {
      return requiredClassMemberClassIDs;
    }

    if (self->_requiredClassMemberRole)
    {
      LOBYTE(requiredClassMemberClassIDs) = objc_msgSend_count(requiredClassMemberClassIDs, a2, v2) != 0;
      return requiredClassMemberClassIDs;
    }
  }

  LOBYTE(requiredClassMemberClassIDs) = 0;
  return requiredClassMemberClassIDs;
}

- (void)sanitizeSpecForABMMAID
{
  options = self->_options;
  if ((options & 2) != 0)
  {
    v5 = self->_options;
    options &= ~2uLL;
    self->_options = options;
    if ((v5 & 0x10) == 0)
    {
      if (qword_280B2A720 != -1)
      {
        dispatch_once(&qword_280B2A720, &unk_284A07B28);
      }

      v6 = CLSLogSearch;
      if (os_log_type_enabled(CLSLogSearch, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_236F71000, v6, OS_LOG_TYPE_DEFAULT, "Search spec for ABM MAID included CLSSearchOptionsIncludeClasses - changing to groups", v11, 2u);
      }

      options = self->_options | 0x10;
      self->_options = options;
    }
  }

  requiredClassMemberClassIDs = self->_requiredClassMemberClassIDs;
  if (requiredClassMemberClassIDs)
  {
    v8 = objc_msgSend_copy(requiredClassMemberClassIDs, a2, v2);
    requiredGroupMemberGroupIDs = self->_requiredGroupMemberGroupIDs;
    self->_requiredGroupMemberGroupIDs = v8;

    v10 = self->_requiredClassMemberClassIDs;
    self->_requiredClassMemberClassIDs = 0;

    self->_requiredClassMemberRole = 0;
    options = self->_options;
  }

  objc_msgSend_setIncludeEmptyGroupsInResults_(self, a2, (options >> 5) & 1);
}

- (void)sanitizeSpecForEDUMAID
{
  options = self->_options;
  if ((options & 0x10) != 0)
  {
    self->_options = options & 0xFFFFFFFFFFFFFFEFLL;
    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v4 = CLSLogSearch;
    if (os_log_type_enabled(CLSLogSearch, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_236F71000, v4, OS_LOG_TYPE_ERROR, "Search spec for EDU MAID included CLSSearchOptionsIncludeGroups - removing", v6, 2u);
    }
  }

  requiredGroupMemberGroupIDs = self->_requiredGroupMemberGroupIDs;
  if (requiredGroupMemberGroupIDs)
  {
    self->_requiredGroupMemberGroupIDs = 0;
  }

  objc_msgSend_setIncludeEmptyGroupsInResults_(self, a2, 1);
}

- (id)predicateForPersonsWithObjectIDs:(id)a3
{
  v4 = a3;
  if (objc_msgSend_includeUnsearchablePersons(self, v5, v6))
  {
    objc_msgSend_predicateForObjectsWithObjectIDs_(CLSDataObserver, v7, v4);
  }

  else
  {
    objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v7, @"%K IN %@ && isSearchable == 1", @"objectID", v4);
  }
  v8 = ;

  return v8;
}

- (void)requireRoleType:(int64_t)a3 atLocationIDs:(id)a4
{
  v11 = a4;
  v9 = objc_msgSend_options(self, v7, v8);
  if (a3 && (v9 & 1) != 0)
  {
    requiredRoleID = self->_requiredRoleID;
    self->_requiredRoleID = 0;
    self->_requiredRoleType = a3;

    objc_storeStrong(&self->_personLocationIDs, a4);
  }
}

- (void)requireRole:(id)a3 atLocationIDs:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (objc_msgSend_options(self, v7, v8))
  {
    self->_requiredRoleType = 0;
    v11 = v13;
    if (v13)
    {
      v11 = objc_msgSend_objectID(v13, v9, v10);
    }

    requiredRoleID = self->_requiredRoleID;
    self->_requiredRoleID = v11;

    objc_storeStrong(&self->_personLocationIDs, a4);
  }
}

- (void)requirePrivilege:(id)a3 atLocationIDs:(id)a4
{
  v14 = a3;
  v7 = a4;
  if (objc_msgSend_options(self, v8, v9))
  {
    objc_storeStrong(&self->_requiredPrivilege, a3);
    v12 = objc_msgSend_copy(v7, v10, v11);
    requiredPrivilegeLocationIDs = self->_requiredPrivilegeLocationIDs;
    self->_requiredPrivilegeLocationIDs = v12;
  }
}

- (void)prohibitPrivilege:(id)a3 atLocationIDs:(id)a4
{
  v14 = a3;
  v7 = a4;
  if (objc_msgSend_options(self, v8, v9))
  {
    objc_storeStrong(&self->_prohibitedPrivilege, a3);
    v12 = objc_msgSend_copy(v7, v10, v11);
    prohibitedPrivilegeLocationIDs = self->_prohibitedPrivilegeLocationIDs;
    self->_prohibitedPrivilegeLocationIDs = v12;
  }
}

- (void)restrictToClassesAtLocationIDs:(id)a3
{
  v7 = a3;
  if ((objc_msgSend_options(self, v5, v6) & 2) != 0)
  {
    objc_storeStrong(&self->_classLocationIDs, a3);
  }
}

- (void)restrictToGroupsAtLocationIDs:(id)a3
{
  v7 = a3;
  if ((objc_msgSend_options(self, v5, v6) & 0x10) != 0)
  {
    objc_storeStrong(&self->_groupLocationIDs, a3);
  }
}

- (void)requireRoleType:(int64_t)a3 onPersonIDs:(id)a4
{
  v10 = a4;
  v9 = objc_msgSend_options(self, v7, v8);
  if (a3 && (v9 & 4) != 0)
  {
    self->_requiredLocationRoleType = a3;
    objc_storeStrong(&self->_locationPersonIDs, a4);
  }
}

- (void)requirePrivilege:(id)a3 onPersonIDs:(id)a4
{
  v14 = a3;
  v7 = a4;
  if ((objc_msgSend_options(self, v8, v9) & 4) != 0)
  {
    objc_storeStrong(&self->_requiredLocationPrivilege, a3);
    v12 = objc_msgSend_copy(v7, v10, v11);
    requiredLocationPersonIDs = self->_requiredLocationPersonIDs;
    self->_requiredLocationPersonIDs = v12;
  }
}

- (void)prohibitPrivilege:(id)a3 onPersonIDs:(id)a4
{
  v14 = a3;
  v7 = a4;
  if ((objc_msgSend_options(self, v8, v9) & 4) != 0)
  {
    objc_storeStrong(&self->_prohibitedLocationPrivilege, a3);
    v12 = objc_msgSend_copy(v7, v10, v11);
    prohibitedLocationPersonIDs = self->_prohibitedLocationPersonIDs;
    self->_prohibitedLocationPersonIDs = v12;
  }
}

- (void)restrictToOrganizationsMatchingEmailDomain:(id)a3
{
  v7 = a3;
  if ((objc_msgSend_options(self, v5, v6) & 8) != 0)
  {
    objc_storeStrong(&self->_requiredOrganizationEmailDomain, a3);
  }
}

- (void)requireClassMemberRole:(unint64_t)a3 forClassIDs:(id)a4
{
  v12 = a4;
  if (objc_msgSend_options(self, v6, v7))
  {
    self->_requiredClassMemberRole = a3;
    v10 = objc_msgSend_copy(v12, v8, v9);
    requiredClassMemberClassIDs = self->_requiredClassMemberClassIDs;
    self->_requiredClassMemberClassIDs = v10;
  }
}

- (void)requireGroupMemberIDs:(id)a3
{
  v10 = a3;
  if (objc_msgSend_options(self, v4, v5))
  {
    v8 = objc_msgSend_copy(v10, v6, v7);
    requiredGroupMemberGroupIDs = self->_requiredGroupMemberGroupIDs;
    self->_requiredGroupMemberGroupIDs = v8;
  }
}

@end