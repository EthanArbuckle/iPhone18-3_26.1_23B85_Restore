@interface AMDJSDebugHandler
+ (id)handleDebugRequest:(id)request error:(id *)error;
+ (id)testInference:(id)inference error:(id *)error;
+ (void)handleAsyncDebugRequest:(id)request withCompletionHandler:(id)handler;
@end

@implementation AMDJSDebugHandler

+ (id)handleDebugRequest:(id)request error:(id *)error
{
  v474 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v405[1] = a2;
  v405[0] = 0;
  objc_storeStrong(v405, request);
  errorCopy = error;
  v403 = [v405[0] objectForKey:@"event"];
  v402 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([v403 isEqualToString:@"fetch_taste_profiles"])
  {
    v401 = [AMDTasteProfile fetchTasteProfile:errorCopy];
    if (*errorCopy)
    {
      oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v399 = 1;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
      {
        log = oslog;
        type = v399;
        localizedDescription = [*errorCopy localizedDescription];
        v398 = MEMORY[0x277D82BE0](localizedDescription);
        __os_log_helper_16_2_1_8_64(v473, v398);
        _os_log_impl(&dword_240CB9000, log, type, "Error fetching all the Taste Profiles: %@", v473, 0xCu);
        MEMORY[0x277D82BD8](localizedDescription);
        objc_storeStrong(&v398, 0);
      }

      objc_storeStrong(&oslog, 0);
      v407 = 0;
      v397 = 1;
    }

    else
    {
      [v402 setObject:v401 forKey:@"taste_profiles"];
      v397 = 0;
    }

    objc_storeStrong(&v401, 0);
    if (!v397)
    {
      goto LABEL_350;
    }
  }

  else if ([v403 isEqualToString:@"fetch_events"])
  {
    v396 = [AMDAppEvent fetchEvents:errorCopy];
    if (*errorCopy)
    {
      v395 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v394 = 1;
      if (os_log_type_enabled(v395, OS_LOG_TYPE_INFO))
      {
        v167 = v395;
        v168 = v394;
        localizedDescription2 = [*errorCopy localizedDescription];
        v393 = MEMORY[0x277D82BE0](localizedDescription2);
        __os_log_helper_16_2_1_8_64(v472, v393);
        _os_log_impl(&dword_240CB9000, v167, v168, "Error fetching all the Events: %@", v472, 0xCu);
        MEMORY[0x277D82BD8](localizedDescription2);
        objc_storeStrong(&v393, 0);
      }

      objc_storeStrong(&v395, 0);
      v407 = 0;
      v397 = 1;
    }

    else
    {
      [v402 setObject:v396 forKey:@"events"];
      v397 = 0;
    }

    objc_storeStrong(&v396, 0);
    if (!v397)
    {
      goto LABEL_350;
    }
  }

  else if ([v403 isEqualToString:@"fetch_tab_info"])
  {
    v392 = [AMDAppTabInfo fetchAllTabInfo:errorCopy];
    if (*errorCopy)
    {
      v391 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v390 = 1;
      if (os_log_type_enabled(v391, OS_LOG_TYPE_INFO))
      {
        v164 = v391;
        v165 = v390;
        localizedDescription3 = [*errorCopy localizedDescription];
        v389 = MEMORY[0x277D82BE0](localizedDescription3);
        __os_log_helper_16_2_1_8_64(v471, v389);
        _os_log_impl(&dword_240CB9000, v164, v165, "Error fetching tab info: %@", v471, 0xCu);
        MEMORY[0x277D82BD8](localizedDescription3);
        objc_storeStrong(&v389, 0);
      }

      objc_storeStrong(&v391, 0);
      v407 = 0;
      v397 = 1;
    }

    else
    {
      [v402 setObject:v392 forKey:@"tabInfo"];
      v397 = 0;
    }

    objc_storeStrong(&v392, 0);
    if (!v397)
    {
      goto LABEL_350;
    }
  }

  else if ([v403 isEqualToString:@"fetch_model_urls"])
  {
    v388 = [AMDModel fetchAll:errorCopy];
    if (*errorCopy)
    {
      v387 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v386 = 1;
      if (os_log_type_enabled(v387, OS_LOG_TYPE_INFO))
      {
        v161 = v387;
        v162 = v386;
        localizedDescription4 = [*errorCopy localizedDescription];
        v385 = MEMORY[0x277D82BE0](localizedDescription4);
        __os_log_helper_16_2_1_8_64(v470, v385);
        _os_log_impl(&dword_240CB9000, v161, v162, "Error fetching all the ModelUrls: %@", v470, 0xCu);
        MEMORY[0x277D82BD8](localizedDescription4);
        objc_storeStrong(&v385, 0);
      }

      objc_storeStrong(&v387, 0);
      v407 = 0;
      v397 = 1;
    }

    else
    {
      [v402 setObject:v388 forKey:@"ModelUrls"];
      v397 = 0;
    }

    objc_storeStrong(&v388, 0);
    if (!v397)
    {
      goto LABEL_350;
    }
  }

  else if ([v403 isEqualToString:@"fetch_coldstart_urls"])
  {
    v384 = [AMDColdstartURL fetchAll:errorCopy];
    if (*errorCopy)
    {
      v383 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v382 = 1;
      if (os_log_type_enabled(v383, OS_LOG_TYPE_INFO))
      {
        v158 = v383;
        v159 = v382;
        localizedDescription5 = [*errorCopy localizedDescription];
        v381 = MEMORY[0x277D82BE0](localizedDescription5);
        __os_log_helper_16_2_1_8_64(v469, v381);
        _os_log_impl(&dword_240CB9000, v158, v159, "Error fetching all the ColdstartUrls: %@", v469, 0xCu);
        MEMORY[0x277D82BD8](localizedDescription5);
        objc_storeStrong(&v381, 0);
      }

      objc_storeStrong(&v383, 0);
      v407 = 0;
      v397 = 1;
    }

    else
    {
      [v402 setObject:v384 forKey:@"ColdstartUrls"];
      v397 = 0;
    }

    objc_storeStrong(&v384, 0);
    if (!v397)
    {
      goto LABEL_350;
    }
  }

  else if ([v403 isEqualToString:@"fetch_descriptors"])
  {
    v380 = [AMDDescriptor getDescriptorsForDomain:[AMDDomains getCodeForDomain:@"apps"] error:errorCopy];
    if (*errorCopy)
    {
      v379 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v378 = 1;
      if (os_log_type_enabled(v379, OS_LOG_TYPE_INFO))
      {
        v155 = v379;
        v156 = v378;
        localizedDescription6 = [*errorCopy localizedDescription];
        v377 = MEMORY[0x277D82BE0](localizedDescription6);
        __os_log_helper_16_2_1_8_64(v468, v377);
        _os_log_impl(&dword_240CB9000, v155, v156, "Error getting descriptors: %@", v468, 0xCu);
        MEMORY[0x277D82BD8](localizedDescription6);
        objc_storeStrong(&v377, 0);
      }

      objc_storeStrong(&v379, 0);
      v407 = 0;
      v397 = 1;
    }

    else
    {
      [v402 setObject:v380 forKey:@"descriptors_saved"];
      v397 = 0;
    }

    objc_storeStrong(&v380, 0);
    if (!v397)
    {
      goto LABEL_350;
    }
  }

  else if ([v403 isEqualToString:@"fetch_segments"])
  {
    v376 = [AMDAppSegment getSegmentsDictForAllTreatments:errorCopy];
    if (*errorCopy)
    {
      v375 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v374 = 1;
      if (os_log_type_enabled(v375, OS_LOG_TYPE_INFO))
      {
        v152 = v375;
        v153 = v374;
        localizedDescription7 = [*errorCopy localizedDescription];
        v373 = MEMORY[0x277D82BE0](localizedDescription7);
        __os_log_helper_16_2_1_8_64(v467, v373);
        _os_log_impl(&dword_240CB9000, v152, v153, "Error fetching the Segments Dict: %@", v467, 0xCu);
        MEMORY[0x277D82BD8](localizedDescription7);
        objc_storeStrong(&v373, 0);
      }

      objc_storeStrong(&v375, 0);
      v407 = 0;
      v397 = 1;
    }

    else
    {
      v372 = objc_alloc_init(MEMORY[0x277CBEB38]);
      memset(v370, 0, sizeof(v370));
      obj = MEMORY[0x277D82BE0](v376);
      v151 = [obj countByEnumeratingWithState:v370 objects:v466 count:16];
      if (v151)
      {
        v147 = *v370[2];
        v148 = 0;
        v149 = v151;
        while (1)
        {
          v146 = v148;
          if (*v370[2] != v147)
          {
            objc_enumerationMutation(obj);
          }

          v371 = *(v370[1] + 8 * v148);
          v369 = [v376 objectForKey:v371];
          v142 = v372;
          v464[0] = @"segmentsData";
          first = [v369 first];
          v465[0] = first;
          v464[1] = @"algoId";
          second = [v369 second];
          v465[1] = second;
          v143 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v465 forKeys:v464 count:2];
          [v142 setObject:? forKey:?];
          MEMORY[0x277D82BD8](v143);
          MEMORY[0x277D82BD8](second);
          MEMORY[0x277D82BD8](first);
          objc_storeStrong(&v369, 0);
          ++v148;
          if (v146 + 1 >= v149)
          {
            v148 = 0;
            v149 = [obj countByEnumeratingWithState:v370 objects:v466 count:16];
            if (!v149)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x277D82BD8](obj);
      [v402 setObject:v372 forKey:@"segments"];
      objc_storeStrong(&v372, 0);
      v397 = 0;
    }

    objc_storeStrong(&v376, 0);
    if (!v397)
    {
      goto LABEL_350;
    }
  }

  else if ([v403 isEqualToString:@"delete_taste_profiles"])
  {
    v368 = [AMDTasteProfile deleteAll:errorCopy];
    if (*errorCopy)
    {
      v367 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v366 = 1;
      if (os_log_type_enabled(v367, OS_LOG_TYPE_INFO))
      {
        v139 = v367;
        v140 = v366;
        localizedDescription8 = [*errorCopy localizedDescription];
        v365 = MEMORY[0x277D82BE0](localizedDescription8);
        __os_log_helper_16_2_1_8_64(v463, v365);
        _os_log_impl(&dword_240CB9000, v139, v140, "Error clearing the Taste Profile table: %@", v463, 0xCu);
        MEMORY[0x277D82BD8](localizedDescription8);
        objc_storeStrong(&v365, 0);
      }

      objc_storeStrong(&v367, 0);
      v407 = 0;
      v397 = 1;
    }

    else
    {
      [v402 setObject:v368 forKey:@"taste_profiles_deleted"];
      v397 = 0;
    }

    objc_storeStrong(&v368, 0);
    if (!v397)
    {
      goto LABEL_350;
    }
  }

  else if ([v403 isEqualToString:@"delete_events"])
  {
    v364 = [AMDAppEvent deleteAllEvents:errorCopy];
    if (*errorCopy)
    {
      v363 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v362 = 1;
      if (os_log_type_enabled(v363, OS_LOG_TYPE_INFO))
      {
        v136 = v363;
        v137 = v362;
        localizedDescription9 = [*errorCopy localizedDescription];
        v361 = MEMORY[0x277D82BE0](localizedDescription9);
        __os_log_helper_16_2_1_8_64(v462, v361);
        _os_log_impl(&dword_240CB9000, v136, v137, "Error clearing the events table: %@", v462, 0xCu);
        MEMORY[0x277D82BD8](localizedDescription9);
        objc_storeStrong(&v361, 0);
      }

      objc_storeStrong(&v363, 0);
      v407 = 0;
      v397 = 1;
    }

    else
    {
      [v402 setObject:v364 forKey:@"events_deleted"];
      v397 = 0;
    }

    objc_storeStrong(&v364, 0);
    if (!v397)
    {
      goto LABEL_350;
    }
  }

  else if ([v403 isEqualToString:@"clear_core_data"])
  {
    v360 = [AMDAppTabInfo deleteAllTabs:errorCopy];
    if (*errorCopy)
    {
      v359 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v358 = 1;
      if (os_log_type_enabled(v359, OS_LOG_TYPE_INFO))
      {
        v133 = v359;
        v134 = v358;
        localizedDescription10 = [*errorCopy localizedDescription];
        v357 = MEMORY[0x277D82BE0](localizedDescription10);
        __os_log_helper_16_2_1_8_64(v461, v357);
        _os_log_impl(&dword_240CB9000, v133, v134, "Error clearing the AppTabInfo table: %@", v461, 0xCu);
        MEMORY[0x277D82BD8](localizedDescription10);
        objc_storeStrong(&v357, 0);
      }

      objc_storeStrong(&v359, 0);
      v407 = 0;
      v397 = 1;
    }

    else
    {
      v356 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v355 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v356, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_64(v460, v360);
        _os_log_impl(&dword_240CB9000, v356, v355, "Deleted %@ tabs", v460, 0xCu);
      }

      objc_storeStrong(&v356, 0);
      [v402 setObject:v360 forKey:@"tabs_deleted"];
      v354 = [AMDDescriptor deleteAll:errorCopy];
      if (*errorCopy)
      {
        v353 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v352 = 1;
        if (os_log_type_enabled(v353, OS_LOG_TYPE_INFO))
        {
          v130 = v353;
          v131 = v352;
          localizedDescription11 = [*errorCopy localizedDescription];
          v351 = MEMORY[0x277D82BE0](localizedDescription11);
          __os_log_helper_16_2_1_8_64(v459, v351);
          _os_log_impl(&dword_240CB9000, v130, v131, "Error clearing the descriptors table: %@", v459, 0xCu);
          MEMORY[0x277D82BD8](localizedDescription11);
          objc_storeStrong(&v351, 0);
        }

        objc_storeStrong(&v353, 0);
        v407 = 0;
        v397 = 1;
      }

      else
      {
        v350 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v349 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v350, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_64(v458, v354);
          _os_log_impl(&dword_240CB9000, v350, v349, "Deleted %@ descriptors", v458, 0xCu);
        }

        objc_storeStrong(&v350, 0);
        [v402 setObject:v354 forKey:@"descriptors_deleted"];
        v348 = [AMDModel deleteAllModelUrls:errorCopy];
        if (*errorCopy)
        {
          v347 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v346 = 1;
          if (os_log_type_enabled(v347, OS_LOG_TYPE_INFO))
          {
            v127 = v347;
            v128 = v346;
            localizedDescription12 = [*errorCopy localizedDescription];
            v345 = MEMORY[0x277D82BE0](localizedDescription12);
            __os_log_helper_16_2_1_8_64(v457, v345);
            _os_log_impl(&dword_240CB9000, v127, v128, "Error clearing the Model Url table: %@", v457, 0xCu);
            MEMORY[0x277D82BD8](localizedDescription12);
            objc_storeStrong(&v345, 0);
          }

          objc_storeStrong(&v347, 0);
          v407 = 0;
          v397 = 1;
        }

        else
        {
          v344 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v343 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(v344, OS_LOG_TYPE_INFO))
          {
            __os_log_helper_16_2_1_8_64(v456, v348);
            _os_log_impl(&dword_240CB9000, v344, v343, "Deleted %@ Model Urs", v456, 0xCu);
          }

          objc_storeStrong(&v344, 0);
          [v402 setObject:v348 forKey:@"model_urls_deleted"];
          v342 = [AMDColdstartURL deleteAllColdstartUrls:errorCopy];
          if (*errorCopy)
          {
            v341 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v340 = 1;
            if (os_log_type_enabled(v341, OS_LOG_TYPE_INFO))
            {
              v124 = v341;
              v125 = v340;
              localizedDescription13 = [*errorCopy localizedDescription];
              v339 = MEMORY[0x277D82BE0](localizedDescription13);
              __os_log_helper_16_2_1_8_64(v455, v339);
              _os_log_impl(&dword_240CB9000, v124, v125, "Error clearing the Coldstart Url table: %@", v455, 0xCu);
              MEMORY[0x277D82BD8](localizedDescription13);
              objc_storeStrong(&v339, 0);
            }

            objc_storeStrong(&v341, 0);
            v407 = 0;
            v397 = 1;
          }

          else
          {
            v338 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v337 = OS_LOG_TYPE_INFO;
            if (os_log_type_enabled(v338, OS_LOG_TYPE_INFO))
            {
              __os_log_helper_16_2_1_8_64(v454, v342);
              _os_log_impl(&dword_240CB9000, v338, v337, "Deleted %@ Coldstart Urs", v454, 0xCu);
            }

            objc_storeStrong(&v338, 0);
            [v402 setObject:v342 forKey:@"coldstart_urls_deleted"];
            v336 = [AMDUserDataManager deleteAllUserData:errorCopy];
            if (*errorCopy)
            {
              v335 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
              v334 = 1;
              if (os_log_type_enabled(v335, OS_LOG_TYPE_INFO))
              {
                v121 = v335;
                v122 = v334;
                localizedDescription14 = [*errorCopy localizedDescription];
                v333 = MEMORY[0x277D82BE0](localizedDescription14);
                __os_log_helper_16_2_1_8_64(v453, v333);
                _os_log_impl(&dword_240CB9000, v121, v122, "Error clearing the User Data tables: %@", v453, 0xCu);
                MEMORY[0x277D82BD8](localizedDescription14);
                objc_storeStrong(&v333, 0);
              }

              objc_storeStrong(&v335, 0);
              v407 = 0;
              v397 = 1;
            }

            else
            {
              v332 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
              v331 = OS_LOG_TYPE_INFO;
              if (os_log_type_enabled(v332, OS_LOG_TYPE_INFO))
              {
                __os_log_helper_16_2_1_8_64(v452, v336);
                _os_log_impl(&dword_240CB9000, v332, v331, "Deleted %@ UserData entries", v452, 0xCu);
              }

              objc_storeStrong(&v332, 0);
              [v402 setObject:v336 forKey:@"user_data_deleted"];
              v330 = [AMDWorkflow deleteAllWorkflows:errorCopy];
              if (*errorCopy)
              {
                v329 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                v328 = OS_LOG_TYPE_INFO;
                if (os_log_type_enabled(v329, OS_LOG_TYPE_INFO))
                {
                  v118 = v329;
                  v119 = v328;
                  localizedDescription15 = [*errorCopy localizedDescription];
                  v327 = MEMORY[0x277D82BE0](localizedDescription15);
                  __os_log_helper_16_2_1_8_64(v451, v327);
                  _os_log_impl(&dword_240CB9000, v118, v119, "Error clearing the Workflow table: %@", v451, 0xCu);
                  MEMORY[0x277D82BD8](localizedDescription15);
                  objc_storeStrong(&v327, 0);
                }

                objc_storeStrong(&v329, 0);
                v407 = 0;
                v397 = 1;
              }

              else
              {
                v326 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                v325 = OS_LOG_TYPE_INFO;
                if (os_log_type_enabled(v326, OS_LOG_TYPE_INFO))
                {
                  __os_log_helper_16_2_1_8_64(v450, v330);
                  _os_log_impl(&dword_240CB9000, v326, v325, "Deleted %@ workflow entries", v450, 0xCu);
                }

                objc_storeStrong(&v326, 0);
                [v402 setObject:v330 forKey:@"workflows_deleted"];
                v324 = [AMDWorkflowInFlight deleteAllInflightWorkflows:errorCopy];
                if (*errorCopy)
                {
                  v323 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                  v322 = OS_LOG_TYPE_INFO;
                  if (os_log_type_enabled(v323, OS_LOG_TYPE_INFO))
                  {
                    v115 = v323;
                    v116 = v322;
                    localizedDescription16 = [*errorCopy localizedDescription];
                    v321 = MEMORY[0x277D82BE0](localizedDescription16);
                    __os_log_helper_16_2_1_8_64(v449, v321);
                    _os_log_impl(&dword_240CB9000, v115, v116, "Error clearing the Inflight Workflow table: %@", v449, 0xCu);
                    MEMORY[0x277D82BD8](localizedDescription16);
                    objc_storeStrong(&v321, 0);
                  }

                  objc_storeStrong(&v323, 0);
                  v407 = 0;
                  v397 = 1;
                }

                else
                {
                  v320 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                  v319 = OS_LOG_TYPE_INFO;
                  if (os_log_type_enabled(v320, OS_LOG_TYPE_INFO))
                  {
                    __os_log_helper_16_2_1_8_64(v448, v324);
                    _os_log_impl(&dword_240CB9000, v320, v319, "Deleted %@ in-flight workflow entries", v448, 0xCu);
                  }

                  objc_storeStrong(&v320, 0);
                  [v402 setObject:v324 forKey:@"inflight_workflows_deleted"];
                  v318 = [AMDAppStoreEvent deleteAllEvents:errorCopy];
                  if (*errorCopy)
                  {
                    v317 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                    v316 = OS_LOG_TYPE_INFO;
                    if (os_log_type_enabled(v317, OS_LOG_TYPE_INFO))
                    {
                      v112 = v317;
                      v113 = v316;
                      localizedDescription17 = [*errorCopy localizedDescription];
                      v315 = MEMORY[0x277D82BE0](localizedDescription17);
                      __os_log_helper_16_2_1_8_64(v447, v315);
                      _os_log_impl(&dword_240CB9000, v112, v113, "Error clearing the Appstore events table: %@", v447, 0xCu);
                      MEMORY[0x277D82BD8](localizedDescription17);
                      objc_storeStrong(&v315, 0);
                    }

                    objc_storeStrong(&v317, 0);
                    v407 = 0;
                    v397 = 1;
                  }

                  else
                  {
                    v314 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                    v313 = OS_LOG_TYPE_INFO;
                    if (os_log_type_enabled(v314, OS_LOG_TYPE_INFO))
                    {
                      __os_log_helper_16_2_1_8_64(v446, v324);
                      _os_log_impl(&dword_240CB9000, v314, v313, "Deleted %@ appstore event entries", v446, 0xCu);
                    }

                    objc_storeStrong(&v314, 0);
                    [v402 setObject:v318 forKey:@"deleted_appstore_events"];
                    v312 = [AMDKVStore deleteWithPredicate:0 error:errorCopy];
                    if (*errorCopy)
                    {
                      v311 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                      v310 = OS_LOG_TYPE_INFO;
                      if (os_log_type_enabled(v311, OS_LOG_TYPE_INFO))
                      {
                        v109 = v311;
                        v110 = v310;
                        localizedDescription18 = [*errorCopy localizedDescription];
                        v309 = MEMORY[0x277D82BE0](localizedDescription18);
                        __os_log_helper_16_2_1_8_64(v445, v309);
                        _os_log_impl(&dword_240CB9000, v109, v110, "Error clearing the KVStore table: %@", v445, 0xCu);
                        MEMORY[0x277D82BD8](localizedDescription18);
                        objc_storeStrong(&v309, 0);
                      }

                      objc_storeStrong(&v311, 0);
                      v407 = 0;
                      v397 = 1;
                    }

                    else
                    {
                      v308 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                      v307 = OS_LOG_TYPE_INFO;
                      if (os_log_type_enabled(v308, OS_LOG_TYPE_INFO))
                      {
                        __os_log_helper_16_2_1_8_64(v444, v312);
                        _os_log_impl(&dword_240CB9000, v308, v307, "Deleted %@ kv entries", v444, 0xCu);
                      }

                      objc_storeStrong(&v308, 0);
                      [v402 setObject:v312 forKey:@"deleted_kv_entries"];
                      v397 = 0;
                    }

                    objc_storeStrong(&v312, 0);
                  }

                  objc_storeStrong(&v318, 0);
                }

                objc_storeStrong(&v324, 0);
              }

              objc_storeStrong(&v330, 0);
            }

            objc_storeStrong(&v336, 0);
          }

          objc_storeStrong(&v342, 0);
        }

        objc_storeStrong(&v348, 0);
      }

      objc_storeStrong(&v354, 0);
    }

    objc_storeStrong(&v360, 0);
    if (!v397)
    {
      goto LABEL_350;
    }
  }

  else if ([v403 isEqualToString:@"fetch_workflows"])
  {
    v306 = [AMDWorkflow fetchAllWorkflows:errorCopy];
    if (*errorCopy)
    {
      v305 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v304 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v305, OS_LOG_TYPE_INFO))
      {
        v106 = v305;
        v107 = v304;
        localizedDescription19 = [*errorCopy localizedDescription];
        v303 = MEMORY[0x277D82BE0](localizedDescription19);
        __os_log_helper_16_2_1_8_64(v443, v303);
        _os_log_impl(&dword_240CB9000, v106, v107, "Error getting workflows: %@", v443, 0xCu);
        MEMORY[0x277D82BD8](localizedDescription19);
        objc_storeStrong(&v303, 0);
      }

      objc_storeStrong(&v305, 0);
      v407 = 0;
      v397 = 1;
    }

    else
    {
      [v402 setObject:v306 forKey:@"workflows_saved"];
      v397 = 0;
    }

    objc_storeStrong(&v306, 0);
    if (!v397)
    {
      goto LABEL_350;
    }
  }

  else if ([v403 isEqualToString:@"fetch_appstore_events"])
  {
    v302 = [AMDAppStoreEvent fetchEvents:errorCopy];
    if (*errorCopy)
    {
      v301 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v300 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v301, OS_LOG_TYPE_INFO))
      {
        v103 = v301;
        v104 = v300;
        localizedDescription20 = [*errorCopy localizedDescription];
        v299 = MEMORY[0x277D82BE0](localizedDescription20);
        __os_log_helper_16_2_1_8_64(v442, v299);
        _os_log_impl(&dword_240CB9000, v103, v104, "Error getting appstore events: %@", v442, 0xCu);
        MEMORY[0x277D82BD8](localizedDescription20);
        objc_storeStrong(&v299, 0);
      }

      objc_storeStrong(&v301, 0);
      v407 = 0;
      v397 = 1;
    }

    else
    {
      [v402 setObject:v302 forKey:@"appstore_events_saved"];
      v397 = 0;
    }

    objc_storeStrong(&v302, 0);
    if (!v397)
    {
      goto LABEL_350;
    }
  }

  else if ([v403 isEqualToString:@"fetch_inflight_workflows"])
  {
    v298 = [AMDWorkflowInFlight fetchAllWorkflows:errorCopy];
    if (*errorCopy)
    {
      v297 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v296 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v297, OS_LOG_TYPE_INFO))
      {
        v100 = v297;
        v101 = v296;
        localizedDescription21 = [*errorCopy localizedDescription];
        v295 = MEMORY[0x277D82BE0](localizedDescription21);
        __os_log_helper_16_2_1_8_64(v441, v295);
        _os_log_impl(&dword_240CB9000, v100, v101, "Error getting inflight workflows: %@", v441, 0xCu);
        MEMORY[0x277D82BD8](localizedDescription21);
        objc_storeStrong(&v295, 0);
      }

      objc_storeStrong(&v297, 0);
      v407 = 0;
      v397 = 1;
    }

    else
    {
      [v402 setObject:v298 forKey:@"inflight_workflows_saved"];
      v397 = 0;
    }

    objc_storeStrong(&v298, 0);
    if (!v397)
    {
      goto LABEL_350;
    }
  }

  else if ([v403 isEqualToString:@"fetch_arcade_games"])
  {
    v294 = [AMDTasteProfile getPurchasedArcadeGamesSet:errorCopy];
    if (*errorCopy)
    {
      v293 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v292 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v293, OS_LOG_TYPE_INFO))
      {
        v97 = v293;
        v98 = v292;
        localizedDescription22 = [*errorCopy localizedDescription];
        v291 = MEMORY[0x277D82BE0](localizedDescription22);
        __os_log_helper_16_2_1_8_64(v440, v291);
        _os_log_impl(&dword_240CB9000, v97, v98, "Error fetching purchased arcade games: %@", v440, 0xCu);
        MEMORY[0x277D82BD8](localizedDescription22);
        objc_storeStrong(&v291, 0);
      }

      objc_storeStrong(&v293, 0);
      v407 = 0;
      v397 = 1;
    }

    else
    {
      allObjects = [v294 allObjects];
      [v402 setObject:? forKey:?];
      MEMORY[0x277D82BD8](allObjects);
      v397 = 0;
    }

    objc_storeStrong(&v294, 0);
    if (!v397)
    {
      goto LABEL_350;
    }
  }

  else
  {
    if (([v403 isEqualToString:@"fetch_purchased_apps"] & 1) == 0)
    {
      if ([v403 isEqualToString:@"fetch_device_storage"])
      {
        v286 = 0;
        v284 = 0;
        v91 = [AMDDeviceStorage queryDeviceStorageWithError:&v284];
        objc_storeStrong(&v286, v284);
        v285 = v91;
        if (v286)
        {
          v89 = v402;
          localizedDescription23 = [v286 localizedDescription];
          [v89 setObject:? forKey:?];
          MEMORY[0x277D82BD8](localizedDescription23);
        }

        else
        {
          [v402 setObject:v285 forKey:@"storage_info"];
        }

        objc_storeStrong(&v285, 0);
        objc_storeStrong(&v286, 0);
      }

      else
      {
        if ([v403 isEqualToString:@"test_segment_computation"])
        {
          v283 = MEMORY[0x277D82BE0](&unk_2852BB308);
          v282 = [AMDAppSegment assignSegmentsWithParameters:v283 error:errorCopy];
          if (v282)
          {
            v281 = objc_alloc_init(MEMORY[0x277CBEB38]);
            memset(__b, 0, sizeof(__b));
            v87 = MEMORY[0x277D82BE0](v282);
            v88 = [v87 countByEnumeratingWithState:__b objects:v438 count:16];
            if (v88)
            {
              v84 = *__b[2];
              v85 = 0;
              v86 = v88;
              while (1)
              {
                v83 = v85;
                if (*__b[2] != v84)
                {
                  objc_enumerationMutation(v87);
                }

                v280 = *(__b[1] + 8 * v85);
                v80 = v281;
                v82 = [v282 objectForKey:v280];
                v280 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v280];
                [v80 setObject:v82 forKey:?];
                MEMORY[0x277D82BD8](v280);
                MEMORY[0x277D82BD8](v82);
                ++v85;
                if (v83 + 1 >= v86)
                {
                  v85 = 0;
                  v86 = [v87 countByEnumeratingWithState:__b objects:v438 count:16];
                  if (!v86)
                  {
                    break;
                  }
                }
              }
            }

            MEMORY[0x277D82BD8](v87);
            [v402 setObject:v281 forKey:@"segmentRefreshSummary"];
            objc_storeStrong(&v281, 0);
          }

          else
          {
            [v402 setObject:@"Segment Computation Error" forKey:@"segmentRefreshSummary"];
          }

          objc_storeStrong(&v282, 0);
          objc_storeStrong(&v283, 0);
          goto LABEL_350;
        }

        if ([v403 isEqualToString:@"add_taste_profiles"])
        {
          v278 = [v405[0] objectForKey:@"tasteProfiles"];
          memset(v276, 0, sizeof(v276));
          v78 = MEMORY[0x277D82BE0](v278);
          v79 = [v78 countByEnumeratingWithState:v276 objects:v437 count:16];
          if (v79)
          {
            v75 = *v276[2];
            v76 = 0;
            v77 = v79;
            while (1)
            {
              v74 = v76;
              if (*v276[2] != v75)
              {
                objc_enumerationMutation(v78);
              }

              v277 = *(v276[1] + 8 * v76);
              v275 = [v278 objectForKey:v277];
              memset(v273, 0, sizeof(v273));
              v72 = MEMORY[0x277D82BE0](v275);
              v73 = [v72 countByEnumeratingWithState:v273 objects:v436 count:16];
              if (v73)
              {
                v69 = *v273[2];
                v70 = 0;
                v71 = v73;
                while (1)
                {
                  v68 = v70;
                  if (*v273[2] != v69)
                  {
                    objc_enumerationMutation(v72);
                  }

                  v274 = *(v273[1] + 8 * v70);
                  v272 = [v275 objectForKey:v274];
                  v271 = 0;
                  v270 = 0;
                  v4 = [AMDTasteProfile saveTasteProfileEntriesFromDict:v272 inDomain:v277 forSource:v274 error:&v270];
                  objc_storeStrong(&v271, v270);
                  if (v271)
                  {
                    v407 = MEMORY[0x277D82BE0](v402);
                    v397 = 1;
                  }

                  else
                  {
                    v397 = 0;
                  }

                  objc_storeStrong(&v271, 0);
                  objc_storeStrong(&v272, 0);
                  if (v397)
                  {
                    break;
                  }

                  ++v70;
                  if (v68 + 1 >= v71)
                  {
                    v70 = 0;
                    v71 = [v72 countByEnumeratingWithState:v273 objects:v436 count:16];
                    if (!v71)
                    {
                      goto LABEL_216;
                    }
                  }
                }
              }

              else
              {
LABEL_216:
                v397 = 0;
              }

              MEMORY[0x277D82BD8](v72);
              if (!v397)
              {
                v397 = 0;
              }

              objc_storeStrong(&v275, 0);
              if (v397)
              {
                break;
              }

              ++v76;
              if (v74 + 1 >= v77)
              {
                v76 = 0;
                v77 = [v78 countByEnumeratingWithState:v276 objects:v437 count:16];
                if (!v77)
                {
                  goto LABEL_222;
                }
              }
            }
          }

          else
          {
LABEL_222:
            v397 = 0;
          }

          MEMORY[0x277D82BD8](v78);
          if (!v397)
          {
            [v402 setObject:@"success" forKey:@"status"];
            v397 = 0;
          }

          objc_storeStrong(&v278, 0);
          if (!v397)
          {
            goto LABEL_350;
          }

          goto LABEL_351;
        }

        if ([v403 isEqualToString:@"test_biome"])
        {
          v67 = [v405[0] objectForKey:@"testPayload"];
          v269 = [AMDBiomeTest test:?];
          MEMORY[0x277D82BD8](v67);
          [v402 setObject:v269 forKey:@"biomeTestStatus"];
          objc_storeStrong(&v269, 0);
        }

        else if ([v403 isEqualToString:@"test_megadome"])
        {
          v66 = [v405[0] objectForKey:@"testPayload"];
          v268 = [AMDMegadomeTest testMegadome:?];
          MEMORY[0x277D82BD8](v66);
          [v402 setObject:v268 forKey:@"megadomeTestStatus"];
          objc_storeStrong(&v268, 0);
        }

        else if ([v403 isEqualToString:@"test_memory_feature_provider_save"])
        {
          v267 = [AMDFeatureProvider getProviderForSource:0x2852AB488 WithDomain:@"foo"];
          v266 = 0;
          v265 = [v405[0] objectForKey:@"testPayload"];
          v264 = 0;
          v64 = v267;
          v65 = [v265 objectForKey:@"featureData"];
          v263 = v266;
          [v64 storeFeatureData:? error:?];
          objc_storeStrong(&v266, v263);
          MEMORY[0x277D82BD8](v65);
          if (v266)
          {
            v434 = @"failure";
            localizedDescription24 = [v266 localizedDescription];
            v435 = localizedDescription24;
            v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v435 forKeys:&v434 count:1];
            v6 = v264;
            v264 = v5;
            MEMORY[0x277D82BD8](v6);
            MEMORY[0x277D82BD8](localizedDescription24);
          }

          else
          {
            objc_storeStrong(&v264, @"saved");
          }

          [v402 setObject:v264 forKey:@"memoryFeatureProviderSaveTestStatus"];
          objc_storeStrong(&v264, 0);
          objc_storeStrong(&v265, 0);
          objc_storeStrong(&v266, 0);
          objc_storeStrong(&v267, 0);
        }

        else if ([v403 isEqualToString:@"test_memory_feature_provider_fetch"])
        {
          v262 = [AMDFeatureProvider getProviderForSource:0x2852AB488 WithDomain:@"bar"];
          v261 = 0;
          v260 = [v405[0] objectForKey:@"testPayload"];
          v259 = [v260 objectForKey:@"featureName"];
          v258 = 0;
          v256 = v261;
          v62 = [v262 getFeatureWithName:v259 withColumn:0 error:&v256];
          objc_storeStrong(&v261, v256);
          v257 = v62;
          if (v261)
          {
            v432 = @"failure";
            localizedDescription25 = [v261 localizedDescription];
            v433 = localizedDescription25;
            v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v433 forKeys:&v432 count:1];
            v8 = v258;
            v258 = v7;
            MEMORY[0x277D82BD8](v8);
            MEMORY[0x277D82BD8](localizedDescription25);
          }

          else
          {
            v430 = @"featureValue";
            getValue = [v257 getValue];
            v431 = getValue;
            v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v431 forKeys:&v430 count:1];
            v10 = v258;
            v258 = v9;
            MEMORY[0x277D82BD8](v10);
            MEMORY[0x277D82BD8](getValue);
          }

          [v402 setObject:v258 forKey:@"memoryFeatureProviderFetchTestStatus"];
          objc_storeStrong(&v257, 0);
          objc_storeStrong(&v258, 0);
          objc_storeStrong(&v259, 0);
          objc_storeStrong(&v260, 0);
          objc_storeStrong(&v261, 0);
          objc_storeStrong(&v262, 0);
        }

        else if ([v403 isEqualToString:@"test_inference"])
        {
          v255 = 0;
          v254 = [v405[0] objectForKey:@"testPayload"];
          v252 = v255;
          v59 = [selfCopy testInference:v254 error:&v252];
          objc_storeStrong(&v255, v252);
          v253 = v59;
          v251 = 0;
          if (v255)
          {
            v428 = @"failure";
            localizedDescription26 = [v255 localizedDescription];
            v429 = localizedDescription26;
            v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v429 forKeys:&v428 count:1];
            v12 = v251;
            v251 = v11;
            MEMORY[0x277D82BD8](v12);
            MEMORY[0x277D82BD8](localizedDescription26);
          }

          else
          {
            v426 = @"inferenceResult";
            v427 = v253;
            v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v427 forKeys:&v426 count:1];
            v14 = v251;
            v251 = v13;
            MEMORY[0x277D82BD8](v14);
          }

          [v402 setObject:v251 forKey:@"inferenceTestStatus"];
          objc_storeStrong(&v251, 0);
          objc_storeStrong(&v253, 0);
          objc_storeStrong(&v254, 0);
          objc_storeStrong(&v255, 0);
        }

        else if ([v403 isEqualToString:@"test_SQLite"])
        {
          v250 = 0;
          v249 = [v405[0] objectForKey:@"testPayload"];
          v247 = v250;
          v57 = [AMDJSDebugTestSQLite test:v249 error:&v247];
          objc_storeStrong(&v250, v247);
          v248 = v57;
          v246 = 0;
          if (v250)
          {
            v424 = @"failure";
            localizedDescription27 = [v250 localizedDescription];
            v425 = localizedDescription27;
            v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v425 forKeys:&v424 count:1];
            v16 = v246;
            v246 = v15;
            MEMORY[0x277D82BD8](v16);
            MEMORY[0x277D82BD8](localizedDescription27);
          }

          else
          {
            v422 = @"result";
            v423 = v248;
            v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v423 forKeys:&v422 count:1];
            v18 = v246;
            v246 = v17;
            MEMORY[0x277D82BD8](v18);
          }

          [v402 setObject:v246 forKey:@"SQLiteTestStatus"];
          objc_storeStrong(&v246, 0);
          objc_storeStrong(&v248, 0);
          objc_storeStrong(&v249, 0);
          objc_storeStrong(&v250, 0);
        }

        else if ([v403 isEqualToString:@"test_modelPath"])
        {
          v245 = 0;
          v244 = [v405[0] objectForKey:@"testPayload"];
          v243 = [v244 objectForKey:0x2852A8FC8];
          v242 = [v244 objectForKey:0x2852A86A8];
          v241 = [v244 objectForKey:0x2852B0AA8];
          v240 = [v244 objectForKey:0x2852AAB08];
          v238 = v245;
          v55 = [AMDModel getModelPathForUsecase:v243 inDomain:v242 forModelId:v241 withTreatmentId:v240 error:&v238];
          objc_storeStrong(&v245, v238);
          v239 = v55;
          if (v55)
          {
            v54 = v239;
          }

          else
          {
            v54 = MEMORY[0x277CBEC10];
          }

          [v402 setObject:v54 forKey:@"modelPathResponse"];
          objc_storeStrong(&v239, 0);
          objc_storeStrong(&v240, 0);
          objc_storeStrong(&v241, 0);
          objc_storeStrong(&v242, 0);
          objc_storeStrong(&v243, 0);
          objc_storeStrong(&v244, 0);
          objc_storeStrong(&v245, 0);
        }

        else if ([v403 isEqualToString:@"test_DR_newDevicePayloadCreation"])
        {
          v237 = 0;
          v235 = 0;
          v53 = [AMDJSDebugDataSync testNewDevicePayloadCreation:&v235];
          objc_storeStrong(&v237, v235);
          v236 = v53;
          [v402 setObject:v53 forKey:@"drResponse"];
          objc_storeStrong(&v236, 0);
          objc_storeStrong(&v237, 0);
        }

        else if ([v403 isEqualToString:@"test_DR_fullSyncInitiation"])
        {
          v234 = 0;
          v232 = 0;
          v52 = [AMDJSDebugDataSync testfullSyncInitiation:&v232];
          objc_storeStrong(&v234, v232);
          v233 = v52;
          [v402 setObject:v52 forKey:@"drResponse"];
          objc_storeStrong(&v233, 0);
          objc_storeStrong(&v234, 0);
        }

        else if ([v403 isEqualToString:@"test_DR_fullSyncDataIngestion"])
        {
          v231 = 0;
          v229 = 0;
          v51 = [AMDJSDebugDataSync testfullSyncDataIngestion:&v229];
          objc_storeStrong(&v231, v229);
          v230 = v51;
          [v402 setObject:v51 forKey:@"drResponse"];
          objc_storeStrong(&v230, 0);
          objc_storeStrong(&v231, 0);
        }

        else if ([v403 isEqualToString:@"test_DR_fullSyncRequestCompletion"])
        {
          v228 = 0;
          v226 = 0;
          v50 = [AMDJSDebugDataSync testfullSyncRequestCompletion:&v226];
          objc_storeStrong(&v228, v226);
          v227 = v50;
          [v402 setObject:v50 forKey:@"drResponse"];
          objc_storeStrong(&v227, 0);
          objc_storeStrong(&v228, 0);
        }

        else if ([v403 isEqualToString:@"test_DR_eventDeltaAlgorithm"])
        {
          v225 = 0;
          v223 = 0;
          v49 = [AMDJSDebugDataSync testEventDeltaAlgorithm:&v223];
          objc_storeStrong(&v225, v223);
          v224 = v49;
          [v402 setObject:v49 forKey:@"drResponse"];
          objc_storeStrong(&v224, 0);
          objc_storeStrong(&v225, 0);
        }

        else if ([v403 isEqualToString:@"fetch_device_ID"])
        {
          v222 = 0;
          v220 = 0;
          v48 = [AMDDataSync fetchDeviceID:&v220];
          objc_storeStrong(&v222, v220);
          v221 = v48;
          if (v222)
          {
            v46 = v402;
            localizedDescription28 = [v222 localizedDescription];
            [v46 setObject:? forKey:?];
            MEMORY[0x277D82BD8](localizedDescription28);
          }

          else
          {
            [v402 setObject:v221 forKey:@"drResponse"];
          }

          objc_storeStrong(&v221, 0);
          objc_storeStrong(&v222, 0);
        }

        else if ([v403 isEqualToString:@"fetch_kv_store"])
        {
          v219 = 0;
          v217 = 0;
          v45 = [AMDKVStore fetchAllKeyValues:&v217];
          objc_storeStrong(&v219, v217);
          v218 = v45;
          if (v219)
          {
            v43 = v402;
            localizedDescription29 = [v219 localizedDescription];
            [v43 setObject:? forKey:?];
            MEMORY[0x277D82BD8](localizedDescription29);
          }

          else
          {
            [v402 setObject:v218 forKey:@"kvResponse"];
          }

          objc_storeStrong(&v218, 0);
          objc_storeStrong(&v219, 0);
        }

        else if ([v403 isEqualToString:@"add_pir_call_handle"])
        {
          v216 = 0;
          v215 = 0;
          [AMDKVStore setValue:&unk_2852BB330 forKey:@"test_call_handle" error:&v215];
          objc_storeStrong(&v216, v215);
          if (v216)
          {
            v41 = v402;
            localizedDescription30 = [v216 localizedDescription];
            [v41 setObject:? forKey:?];
            MEMORY[0x277D82BD8](localizedDescription30);
          }

          else
          {
            [v402 setObject:@"success" forKey:@"pirCallHandleAdd"];
          }

          objc_storeStrong(&v216, 0);
        }

        else if ([v403 isEqualToString:@"test_pir"])
        {
          v40 = [v405[0] objectForKey:@"testPayload"];
          v214 = [AMDPirTest testPir:?];
          MEMORY[0x277D82BD8](v40);
          [v402 setObject:v214 forKey:@"pirTestStatus"];
          objc_storeStrong(&v214, 0);
        }

        else if ([v403 isEqualToString:@"test_batched_sql_queries"])
        {
          v213 = [AMDJSCustomAggregator runBatchedSQLDescriptorsUsing:v405[0] error:errorCopy];
          [v402 setObject:v213 forKey:@"aggregationResult"];
          objc_storeStrong(&v213, 0);
        }

        else if ([v403 isEqualToString:@"test_sql_event_truncation"])
        {
          v39 = [v405[0] objectForKey:@"testPayload"];
          v212 = [AMDSQLite trimEventsForStreams:"trimEventsForStreams:error:" error:?];
          MEMORY[0x277D82BD8](v39);
          if (*errorCopy)
          {
            localizedDescription31 = [*errorCopy localizedDescription];
            [v402 setObject:? forKey:?];
            MEMORY[0x277D82BD8](localizedDescription31);
          }

          else
          {
            [v402 setObject:v212 forKey:@"eventDeletionSummary"];
          }

          objc_storeStrong(&v212, 0);
        }

        else if ([v403 isEqualToString:@"test_get_version"])
        {
          v37 = +[AMDJSRequestHandler getVersion];
          [v402 setObject:? forKey:?];
          MEMORY[0x277D82BD8](v37);
        }

        else if ([v403 isEqualToString:@"test_vector_db_init"])
        {
          v211 = MEMORY[0x277D82BE0](&unk_2852BB358);
          v420 = @"dbConfigArray";
          v419 = v211;
          v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v419 count:?];
          v421 = v36;
          v210 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v421 forKeys:&v420 count:1];
          MEMORY[0x277D82BD8](v36);
          v209 = [_TtC19AppleMediaDiscovery18AMDVectorDBManager createVectorDBWithCreateDBPayload:v210 error:errorCopy];
          if (*errorCopy)
          {
            localizedDescription32 = [*errorCopy localizedDescription];
            [v402 setObject:? forKey:?];
            MEMORY[0x277D82BD8](localizedDescription32);
          }

          else
          {
            [v402 setObject:v209 forKey:@"response"];
          }

          objc_storeStrong(&v209, 0);
          objc_storeStrong(&v210, 0);
          objc_storeStrong(&v211, 0);
        }

        else if ([v403 isEqualToString:@"test_vector_db_insert"])
        {
          v208 = MEMORY[0x277D82BE0](&unk_2852BB380);
          v207 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v206 = objc_alloc_init(MEMORY[0x277CBEB18]);
          for (i = 1; i <= 32; ++i)
          {
            v34 = [MEMORY[0x277CCABB0] numberWithInt:i];
            [v206 addObject:?];
            MEMORY[0x277D82BD8](v34);
          }

          for (j = 1; j <= 5000; ++j)
          {
            v418 = v206;
            v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v418 count:1];
            v32 = [MEMORY[0x277CCABB0] numberWithInt:j];
            stringValue = [v32 stringValue];
            [v207 setObject:v33 forKey:?];
            MEMORY[0x277D82BD8](stringValue);
            MEMORY[0x277D82BD8](v32);
            MEMORY[0x277D82BD8](v33);
          }

          v416[0] = @"vectorDBConfig";
          v417[0] = v208;
          v416[1] = @"vectorDict";
          v417[1] = v207;
          v203 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v417 forKeys:v416 count:2];
          v202 = [_TtC19AppleMediaDiscovery18AMDVectorDBManager insertVectorsHandlerWithInsertVectorsPayload:v203 error:errorCopy];
          if (*errorCopy)
          {
            localizedDescription33 = [*errorCopy localizedDescription];
            [v402 setObject:? forKey:?];
            MEMORY[0x277D82BD8](localizedDescription33);
          }

          else
          {
            [v402 setObject:v202 forKey:@"response"];
          }

          objc_storeStrong(&v202, 0);
          objc_storeStrong(&v203, 0);
          objc_storeStrong(&v206, 0);
          objc_storeStrong(&v207, 0);
          objc_storeStrong(&v208, 0);
        }

        else if ([v403 isEqualToString:@"test_vector_db_search"])
        {
          v201 = MEMORY[0x277D82BE0](&unk_2852BB3A8);
          v200 = objc_alloc_init(MEMORY[0x277CBEB18]);
          for (k = 1; k <= 32; ++k)
          {
            v29 = [MEMORY[0x277CCABB0] numberWithInt:k];
            [v200 addObject:?];
            MEMORY[0x277D82BD8](v29);
          }

          v414 = @"queryVector";
          v415 = v200;
          v198 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v415 forKeys:&v414 count:1];
          v412[0] = @"vectorDBConfig";
          v413[0] = v201;
          v412[1] = @"queryDict";
          v413[1] = v198;
          v197 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v413 forKeys:v412 count:2];
          v196 = [_TtC19AppleMediaDiscovery18AMDVectorDBManager runVectorDBSearchWithSearchPayload:v197 error:errorCopy];
          if (*errorCopy)
          {
            localizedDescription34 = [*errorCopy localizedDescription];
            [v402 setObject:? forKey:?];
            MEMORY[0x277D82BD8](localizedDescription34);
          }

          else
          {
            [v402 setObject:v196 forKey:@"response"];
          }

          objc_storeStrong(&v196, 0);
          objc_storeStrong(&v197, 0);
          objc_storeStrong(&v198, 0);
          objc_storeStrong(&v200, 0);
          objc_storeStrong(&v201, 0);
        }

        else if ([v403 isEqualToString:@"test_vector_db_delete"])
        {
          v195 = MEMORY[0x277D82BE0](&unk_2852BB3D0);
          v410 = @"vectorDBConfig";
          v411 = v195;
          v194 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v411 forKeys:&v410 count:1];
          v193 = [_TtC19AppleMediaDiscovery18AMDVectorDBManager clearVectorsHandlerWithClearVectorDBPayload:v194 error:errorCopy];
          if (*errorCopy)
          {
            localizedDescription35 = [*errorCopy localizedDescription];
            [v402 setObject:? forKey:?];
            MEMORY[0x277D82BD8](localizedDescription35);
          }

          else
          {
            [v402 setObject:v193 forKey:@"response"];
          }

          objc_storeStrong(&v193, 0);
          objc_storeStrong(&v194, 0);
          objc_storeStrong(&v195, 0);
        }

        else if ([v403 isEqualToString:@"test_vector_db_file_delete"])
        {
          v192 = [v405[0] objectForKey:@"vectorDBName"];
          v408 = @"dbName";
          v409 = v192;
          v191 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v409 forKeys:&v408 count:1];
          v190 = [_TtC19AppleMediaDiscovery18AMDVectorDBManager deleteVectorDatabaseWithDeletionPayload:v191 error:errorCopy];
          if (*errorCopy)
          {
            localizedDescription36 = [*errorCopy localizedDescription];
            [v402 setObject:? forKey:?];
            MEMORY[0x277D82BD8](localizedDescription36);
          }

          else
          {
            [v402 setObject:v190 forKey:@"response"];
          }

          objc_storeStrong(&v190, 0);
          objc_storeStrong(&v191, 0);
          objc_storeStrong(&v192, 0);
        }

        else if ([v403 isEqualToString:@"test_swift_str_to_int"])
        {
          v189 = [v405[0] objectForKey:@"strValue"];
          v188 = [_TtC19AppleMediaDiscovery13AMDSwiftTests strToIntWithStrValue:v189];
          [v402 setObject:v188 forKey:@"result"];
          objc_storeStrong(&v188, 0);
          objc_storeStrong(&v189, 0);
        }

        else if ([v403 isEqualToString:@"test_sql_add_table_schema"])
        {
          v187 = [v405[0] objectForKey:@"table_name"];
          v186 = [v405[0] objectForKey:@"table_schema"];
          v185 = +[AMDSQLite getSharedInstance];
          getDataSchema = [v185 getDataSchema];
          v183 = [getDataSchema addTable:v187 withSchema:v186 error:errorCopy];
          if (*errorCopy)
          {
            localizedDescription37 = [*errorCopy localizedDescription];
            [v402 setObject:? forKey:?];
            MEMORY[0x277D82BD8](localizedDescription37);
          }

          else
          {
            [v402 setObject:v183 forKey:@"schemaAddSummary"];
            v182 = [v185 applySchema:getDataSchema error:errorCopy];
            if (*errorCopy)
            {
              localizedDescription38 = [*errorCopy localizedDescription];
              [v402 setObject:? forKey:?];
              MEMORY[0x277D82BD8](localizedDescription38);
            }

            else
            {
              [v402 setObject:v182 forKey:@"schemaApplySummary"];
            }

            objc_storeStrong(&v182, 0);
          }

          objc_storeStrong(&v183, 0);
          objc_storeStrong(&getDataSchema, 0);
          objc_storeStrong(&v185, 0);
          objc_storeStrong(&v186, 0);
          objc_storeStrong(&v187, 0);
        }

        else if ([v403 isEqualToString:@"test_sql_create_indexes"])
        {
          v181 = [v405[0] objectForKey:AMD_SQLITE_SCHEMA_INDICES];
          v180 = +[AMDSQLite getSharedInstance];
          getDataSchema2 = [v180 getDataSchema];
          v178 = [getDataSchema2 addIndices:v181 error:errorCopy];
          if (*errorCopy)
          {
            localizedDescription39 = [*errorCopy localizedDescription];
            [v402 setObject:? forKey:?];
            MEMORY[0x277D82BD8](localizedDescription39);
          }

          else
          {
            [v402 setObject:v178 forKey:@"indexesAddSummary"];
            v177 = [v180 applySchema:getDataSchema2 error:errorCopy];
            if (*errorCopy)
            {
              localizedDescription40 = [*errorCopy localizedDescription];
              [v402 setObject:? forKey:?];
              MEMORY[0x277D82BD8](localizedDescription40);
            }

            else
            {
              [v402 setObject:v177 forKey:@"schemaApplySummary"];
            }

            objc_storeStrong(&v177, 0);
          }

          objc_storeStrong(&v178, 0);
          objc_storeStrong(&getDataSchema2, 0);
          objc_storeStrong(&v180, 0);
          objc_storeStrong(&v181, 0);
        }

        else if ([v403 isEqualToString:@"insert_app_lang_event"])
        {
          v176 = MEMORY[0x277D82BE0](&unk_2852BB420);
          v175 = [AMDBiomeIntegration writeToBiome:v176 withError:errorCopy];
          if (*errorCopy)
          {
            localizedDescription41 = [*errorCopy localizedDescription];
            [v402 setObject:? forKey:?];
            MEMORY[0x277D82BD8](localizedDescription41);
          }

          else
          {
            [v402 setObject:v175 forKey:@"result"];
          }

          objc_storeStrong(&v175, 0);
          objc_storeStrong(&v176, 0);
        }

        else
        {
          v403 = [MEMORY[0x277CCACA8] stringWithFormat:@"Action '%@' not found", v403];
          [v402 setObject:v403 forKey:@"status"];
          objc_storeStrong(&v403, 0);
        }
      }

LABEL_350:
      v407 = MEMORY[0x277D82BE0](v402);
      v397 = 1;
      goto LABEL_351;
    }

    v290 = [AMDTasteProfile getPurchasedAppsSet:errorCopy];
    if (*errorCopy)
    {
      v289 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v288 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v289, OS_LOG_TYPE_INFO))
      {
        v93 = v289;
        v94 = v288;
        localizedDescription42 = [*errorCopy localizedDescription];
        v287 = MEMORY[0x277D82BE0](localizedDescription42);
        __os_log_helper_16_2_1_8_64(v439, v287);
        _os_log_impl(&dword_240CB9000, v93, v94, "Error fetching purchased apps: %@", v439, 0xCu);
        MEMORY[0x277D82BD8](localizedDescription42);
        objc_storeStrong(&v287, 0);
      }

      objc_storeStrong(&v289, 0);
      v407 = 0;
      v397 = 1;
    }

    else
    {
      allObjects2 = [v290 allObjects];
      [v402 setObject:? forKey:?];
      MEMORY[0x277D82BD8](allObjects2);
      v397 = 0;
    }

    objc_storeStrong(&v290, 0);
    if (!v397)
    {
      goto LABEL_350;
    }
  }

LABEL_351:
  objc_storeStrong(&v402, 0);
  objc_storeStrong(&v403, 0);
  objc_storeStrong(v405, 0);
  *MEMORY[0x277D85DE8];
  v19 = v407;

  return v19;
}

+ (id)testInference:(id)inference error:(id *)error
{
  v143 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, inference);
  errorCopy = error;
  v128 = [location[0] objectForKey:@"inferencePayload"];
  if (v128)
  {
    v123 = [v128 objectForKey:0x2852A86A8];
    v57 = MEMORY[0x277CBEB98];
    v58 = [v128 objectForKey:0x2852B1B68];
    v122 = [v57 setWithArray:?];
    MEMORY[0x277D82BD8](v58);
    if (v123 && v122)
    {
      v120 = [AMDDomains getCodeForDomain:v123];
      if (v120)
      {
        v118 = [location[0] objectForKey:@"inferenceWorkflow"];
        if (v118)
        {
          [AMDWorkflowInFlight saveWorkflow:v118 forDomain:v120 withCallUUID:@"TEST" error:errorCopy];
          v114 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v113 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
          {
            v52 = v114;
            v53 = v113;
            __os_log_helper_16_0_0(v112);
            _os_log_impl(&dword_240CB9000, v52, v53, "Saved the model workflow successfully.", v112, 2u);
          }

          objc_storeStrong(&v114, 0);
          v111 = [location[0] objectForKey:@"tasteProfiles"];
          if (!v111)
          {
            goto LABEL_44;
          }

          v110 = [v111 objectForKey:@"serverTasteProfiles"];
          if (!v110)
          {
            goto LABEL_28;
          }

          memset(__b, 0, sizeof(__b));
          v50 = MEMORY[0x277D82BE0](v110);
          v51 = [v50 countByEnumeratingWithState:__b objects:v140 count:16];
          if (v51)
          {
            v47 = *__b[2];
            v48 = 0;
            v49 = v51;
            while (1)
            {
              v46 = v48;
              if (*__b[2] != v47)
              {
                objc_enumerationMutation(v50);
              }

              v109 = *(__b[1] + 8 * v48);
              v8 = [AMDTasteProfile saveTasteProfileEntriesFromDict:v109 inDomain:@"apps" forSource:0x2852B1248 error:errorCopy];
              if (*errorCopy)
              {
                break;
              }

              ++v48;
              if (v46 + 1 >= v49)
              {
                v48 = 0;
                v49 = [v50 countByEnumeratingWithState:__b objects:v140 count:16];
                if (!v49)
                {
                  goto LABEL_26;
                }
              }
            }

            v131 = 0;
            v124 = 1;
          }

          else
          {
LABEL_26:
            v124 = 0;
          }

          MEMORY[0x277D82BD8](v50);
          if (!v124)
          {
LABEL_28:
            v107 = [v111 objectForKey:@"onDeviceTasteProfiles"];
            if (!v107)
            {
              goto LABEL_39;
            }

            memset(v105, 0, sizeof(v105));
            v44 = MEMORY[0x277D82BE0](v107);
            v45 = [v44 countByEnumeratingWithState:v105 objects:v139 count:16];
            if (v45)
            {
              v41 = *v105[2];
              v42 = 0;
              v43 = v45;
              while (1)
              {
                v40 = v42;
                if (*v105[2] != v41)
                {
                  objc_enumerationMutation(v44);
                }

                v106 = *(v105[1] + 8 * v42);
                v9 = [AMDTasteProfile saveTasteProfileEntriesFromDict:v106 inDomain:@"apps" forSource:0x2852B1228 error:errorCopy];
                if (*errorCopy)
                {
                  break;
                }

                ++v42;
                if (v40 + 1 >= v43)
                {
                  v42 = 0;
                  v43 = [v44 countByEnumeratingWithState:v105 objects:v139 count:16];
                  if (!v43)
                  {
                    goto LABEL_37;
                  }
                }
              }

              v131 = 0;
              v124 = 1;
            }

            else
            {
LABEL_37:
              v124 = 0;
            }

            MEMORY[0x277D82BD8](v44);
            if (!v124)
            {
LABEL_39:
              v104 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
              v103 = OS_LOG_TYPE_INFO;
              if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
              {
                v38 = v104;
                v39 = v103;
                __os_log_helper_16_0_0(v102);
                _os_log_impl(&dword_240CB9000, v38, v39, "Saved the model taste profiles successfully.", v102, 2u);
              }

              objc_storeStrong(&v104, 0);
              v124 = 0;
            }

            objc_storeStrong(&v107, 0);
          }

          objc_storeStrong(&v110, 0);
          if (!v124)
          {
LABEL_44:
            v101 = [v118 objectForKey:0x2852A8E08];
            v100 = [v118 objectForKey:0x2852AAAC8];
            v99 = [AMDModel getModelInfo:v101 error:errorCopy];
            if (!*errorCopy && v99)
            {
              [AMDModelDownloader deleteModelFromStorage:v99 isVersionChange:0 error:errorCopy];
            }

            if (v100)
            {
              v98 = [AMDModel getModelInfo:v100 error:errorCopy];
              if (!*errorCopy && v98)
              {
                [AMDModelDownloader deleteModelFromStorage:v98 isVersionChange:0 error:errorCopy];
              }

              objc_storeStrong(&v98, 0);
            }

            if (*errorCopy)
            {
              v97 = MEMORY[0x277D82BE0](@"Unable to reset Models table and delete older models");
              v96 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
              v95 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
              {
                __os_log_helper_16_2_1_8_64(v138, v97);
                _os_log_error_impl(&dword_240CB9000, v96, v95, "%@", v138, 0xCu);
              }

              objc_storeStrong(&v96, 0);
              v37 = [AMDError allocError:15 withMessage:v97];
              v10 = v37;
              *errorCopy = v37;
              v131 = 0;
              v124 = 1;
              objc_storeStrong(&v97, 0);
            }

            else
            {
              v11 = [AMDModel deleteAllModelUrls:errorCopy];
              v94 = [location[0] objectForKey:@"modelDownloadPayload"];
              if (v94)
              {
                memset(v89, 0, sizeof(v89));
                v34 = MEMORY[0x277D82BE0](v94);
                v35 = [v34 countByEnumeratingWithState:v89 objects:v136 count:16];
                if (v35)
                {
                  v31 = *v89[2];
                  v32 = 0;
                  v33 = v35;
                  while (1)
                  {
                    v30 = v32;
                    if (*v89[2] != v31)
                    {
                      objc_enumerationMutation(v34);
                    }

                    v90 = *(v89[1] + 8 * v32);
                    v13 = [AMDModelDownloader processModelDownload:v90 withStorefrontID:@"143441" error:errorCopy];
                    if (*errorCopy)
                    {
                      break;
                    }

                    v88 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                    v87 = OS_LOG_TYPE_ERROR;
                    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
                    {
                      v27 = v88;
                      v28 = v87;
                      v29 = [v90 objectForKey:@"modelId"];
                      v86 = MEMORY[0x277D82BE0](v29);
                      __os_log_helper_16_2_1_8_64(v135, v86);
                      _os_log_error_impl(&dword_240CB9000, v27, v28, "Saved the compiled model %@ successfully", v135, 0xCu);
                      MEMORY[0x277D82BD8](v29);
                      objc_storeStrong(&v86, 0);
                    }

                    objc_storeStrong(&v88, 0);
                    ++v32;
                    if (v30 + 1 >= v33)
                    {
                      v32 = 0;
                      v33 = [v34 countByEnumeratingWithState:v89 objects:v136 count:16];
                      if (!v33)
                      {
                        goto LABEL_70;
                      }
                    }
                  }

                  v131 = 0;
                  v124 = 1;
                }

                else
                {
LABEL_70:
                  v124 = 0;
                }

                MEMORY[0x277D82BD8](v34);
                if (!v124)
                {
                  v85 = [v128 objectForKey:0x2852AB2C8];
                  if (v85)
                  {
                    v83 = [v128 objectForKey:0x2852AB2A8];
                    if (v83)
                    {
                      v81 = [v128 objectForKey:0x2852AB548];
                      if (!v81 || ((v80 = +[AMDFeatureProvider getProviderForSource:WithDomain:](AMDFeatureProvider, "getProviderForSource:WithDomain:", 0x2852AB488, v123), [v80 storeFeatureData:v81 error:errorCopy], !*errorCopy) ? (v124 = 0) : (v131 = 0, v124 = 1), objc_storeStrong(&v80, 0), !v124))
                      {
                        v79 = [v128 objectForKey:@"auxillaryData"];
                        if (!v79 || ((v78 = +[AMDFeatureProvider getProviderForSource:WithDomain:](AMDFeatureProvider, "getProviderForSource:WithDomain:", 0x2852AB488, v123), [v78 storeOutputRemapData:v79 error:errorCopy], !*errorCopy) ? (v124 = 0) : (v131 = 0, v124 = 1), objc_storeStrong(&v78, 0), !v124))
                        {
                          v77 = [v128 objectForKey:@"usecaseId"];
                          first = [v128 objectForKey:0x2852AAB08];
                          v75 = [AMDWorkflow getCurrentWorkflowForDomain:v120 andTreatmentId:first andUseCaseId:v77 error:errorCopy];
                          if (*errorCopy)
                          {
                            v131 = 0;
                            v124 = 1;
                          }

                          else
                          {
                            second = [v75 second];
                            if (!first)
                            {
                              first = [v75 first];
                              MEMORY[0x277D82BD8](0);
                            }

                            if (second && [second count])
                            {
                              v70 = [[AMDUseCaseWorkflow alloc] initWithDictionary:second];
                              if ([v70 isValid])
                              {
                                getMaxItemsToDisplay = [v70 getMaxItemsToDisplay];
                                v66 = [v70 getPredictions:(objc_msgSend(getMaxItemsToDisplay forDomain:"unsignedIntValue") * 1.5) error:{v123, errorCopy}];
                                MEMORY[0x277D82BD8](0);
                                MEMORY[0x277D82BD8](getMaxItemsToDisplay);
                                v65 = [v128 objectForKey:0x2852B19C8];
                                if (v65)
                                {
                                  objc_storeStrong(&v65, v65);
                                }

                                else
                                {
                                  objc_storeStrong(&v65, MEMORY[0x277CBEC10]);
                                }

                                v64 = [v65 objectForKey:v77];
                                if (v64)
                                {
                                  v63 = [AMDJSInference persist:v66 withUsecase:v77 withConfig:v64 domainName:v123];
                                  v131 = MEMORY[0x277D82BE0](v63);
                                  v124 = 1;
                                  objc_storeStrong(&v63, 0);
                                }

                                else if (*errorCopy)
                                {
                                  v131 = 0;
                                  v124 = 1;
                                }

                                else if (v66)
                                {
                                  v131 = MEMORY[0x277D82BE0](v66);
                                  v124 = 1;
                                }

                                else
                                {
                                  v62 = MEMORY[0x277D82BE0](@"Inference output is nil");
                                  v61 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                                  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                                  {
                                    __os_log_helper_16_2_1_8_64(v132, v62);
                                    _os_log_error_impl(&dword_240CB9000, v61, OS_LOG_TYPE_ERROR, "%@", v132, 0xCu);
                                  }

                                  objc_storeStrong(&v61, 0);
                                  v21 = [AMDError allocError:15 withMessage:v62];
                                  v18 = v21;
                                  *errorCopy = v21;
                                  v131 = 0;
                                  v124 = 1;
                                  objc_storeStrong(&v62, 0);
                                }

                                objc_storeStrong(&v64, 0);
                                objc_storeStrong(&v65, 0);
                                objc_storeStrong(&v66, 0);
                              }

                              else
                              {
                                v69 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid workflow for use case %@, treatment %@", v77, first];
                                v68 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                                v67 = OS_LOG_TYPE_ERROR;
                                if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
                                {
                                  __os_log_helper_16_2_1_8_64(v133, v69);
                                  _os_log_error_impl(&dword_240CB9000, v68, v67, "%@", v133, 0xCu);
                                }

                                objc_storeStrong(&v68, 0);
                                v23 = [AMDError allocError:15 withMessage:v69];
                                v17 = v23;
                                *errorCopy = v23;
                                v131 = 0;
                                v124 = 1;
                                objc_storeStrong(&v69, 0);
                              }

                              objc_storeStrong(&v70, 0);
                            }

                            else
                            {
                              v73 = [MEMORY[0x277CCACA8] stringWithFormat:@"no workflow for use case %@, treatment %@", v77, first];
                              oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                              v71 = OS_LOG_TYPE_ERROR;
                              if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
                              {
                                __os_log_helper_16_2_1_8_64(v134, v73);
                                _os_log_error_impl(&dword_240CB9000, oslog, v71, "%@", v134, 0xCu);
                              }

                              objc_storeStrong(&oslog, 0);
                              v24 = [AMDError allocError:15 withMessage:v73];
                              v16 = v24;
                              *errorCopy = v24;
                              v131 = 0;
                              v124 = 1;
                              objc_storeStrong(&v73, 0);
                            }

                            objc_storeStrong(&second, 0);
                          }

                          objc_storeStrong(&v75, 0);
                          objc_storeStrong(&first, 0);
                          objc_storeStrong(&v77, 0);
                        }

                        objc_storeStrong(&v79, 0);
                      }

                      objc_storeStrong(&v81, 0);
                    }

                    else
                    {
                      v82 = MEMORY[0x277D82BE0](@"Missing dsId");
                      v25 = [AMDError allocError:15 withMessage:v82];
                      v15 = v25;
                      *errorCopy = v25;
                      v131 = 0;
                      v124 = 1;
                      objc_storeStrong(&v82, 0);
                    }

                    objc_storeStrong(&v83, 0);
                  }

                  else
                  {
                    v84 = MEMORY[0x277D82BE0](@"Missing storeFrontId");
                    v26 = [AMDError allocError:15 withMessage:v84];
                    v14 = v26;
                    *errorCopy = v26;
                    v131 = 0;
                    v124 = 1;
                    objc_storeStrong(&v84, 0);
                  }

                  objc_storeStrong(&v85, 0);
                }
              }

              else
              {
                v93 = MEMORY[0x277D82BE0](@"Missing model download payload");
                v92 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                v91 = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
                {
                  __os_log_helper_16_2_1_8_64(v137, v93);
                  _os_log_error_impl(&dword_240CB9000, v92, v91, "%@", v137, 0xCu);
                }

                objc_storeStrong(&v92, 0);
                v36 = [AMDError allocError:15 withMessage:v93];
                v12 = v36;
                *errorCopy = v36;
                v131 = 0;
                v124 = 1;
                objc_storeStrong(&v93, 0);
              }

              objc_storeStrong(&v94, 0);
            }

            objc_storeStrong(&v99, 0);
            objc_storeStrong(&v100, 0);
            objc_storeStrong(&v101, 0);
          }

          objc_storeStrong(&v111, 0);
        }

        else
        {
          v117 = MEMORY[0x277D82BE0](@"Missing inference workflow");
          v116 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v115 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_1_8_64(v141, v117);
            _os_log_error_impl(&dword_240CB9000, v116, v115, "%@", v141, 0xCu);
          }

          objc_storeStrong(&v116, 0);
          v54 = [AMDError allocError:15 withMessage:v117];
          v7 = v54;
          *errorCopy = v54;
          v131 = 0;
          v124 = 1;
          objc_storeStrong(&v117, 0);
        }

        objc_storeStrong(&v118, 0);
      }

      else
      {
        v119 = MEMORY[0x277D82BE0](@"Unknown domain");
        v55 = [AMDError allocError:15 withMessage:v119];
        v6 = v55;
        *errorCopy = v55;
        v131 = 0;
        v124 = 1;
        objc_storeStrong(&v119, 0);
      }
    }

    else
    {
      v121 = MEMORY[0x277D82BE0](@"Missing domain or use cases");
      v56 = [AMDError allocError:15 withMessage:v121];
      v5 = v56;
      *errorCopy = v56;
      v131 = 0;
      v124 = 1;
      objc_storeStrong(&v121, 0);
    }

    objc_storeStrong(&v122, 0);
    objc_storeStrong(&v123, 0);
  }

  else
  {
    v127 = MEMORY[0x277D82BE0](@"Missing inference payload");
    v126 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v142, v127);
      _os_log_error_impl(&dword_240CB9000, v126, type, "%@", v142, 0xCu);
    }

    objc_storeStrong(&v126, 0);
    v59 = [AMDError allocError:15 withMessage:v127];
    v4 = v59;
    *errorCopy = v59;
    v131 = 0;
    v124 = 1;
    objc_storeStrong(&v127, 0);
  }

  objc_storeStrong(&v128, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v19 = v131;

  return v19;
}

+ (void)handleAsyncDebugRequest:(id)request withCompletionHandler:(id)handler
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v49 = 0;
  objc_storeStrong(&v49, handler);
  v48 = 0;
  v47 = [location[0] objectForKey:@"event"];
  if ([v47 isEqualToString:@"query_search_tool"])
  {
    v12 = objc_alloc_init(_TtC19AppleMediaDiscovery22SearchToolQueryHandler);
    v11 = location[0];
    v40 = MEMORY[0x277D85DD0];
    v41 = -1073741824;
    v42 = 0;
    v43 = __67__AMDJSDebugHandler_handleAsyncDebugRequest_withCompletionHandler___block_invoke;
    v44 = &unk_278CB59B8;
    v46 = MEMORY[0x277D82BE0](v49);
    v45 = MEMORY[0x277D82BE0](v48);
    [(SearchToolQueryHandler *)v12 querySearchToolWithSearchtoolQueryConfig:v11 completionHandler:&v40];
    MEMORY[0x277D82BD8](v12);
    objc_storeStrong(&v45, 0);
    objc_storeStrong(&v46, 0);
  }

  else if ([v47 isEqualToString:@"filter_fitcored_catalog"])
  {
    v10 = objc_alloc_init(_TtC19AppleMediaDiscovery18FitCoreDQueryClass);
    v9 = location[0];
    v33 = MEMORY[0x277D85DD0];
    v34 = -1073741824;
    v35 = 0;
    v36 = __67__AMDJSDebugHandler_handleAsyncDebugRequest_withCompletionHandler___block_invoke_2;
    v37 = &unk_278CB59B8;
    v39 = MEMORY[0x277D82BE0](v49);
    v38 = MEMORY[0x277D82BE0](v48);
    [(FitCoreDQueryClass *)v10 filterFitcoreDCatalogDebugWithCatalogFilterConfig:v9 completionHandler:&v33];
    MEMORY[0x277D82BD8](v10);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
  }

  else if ([v47 isEqualToString:@"fetch_workout_info"])
  {
    v8 = objc_alloc_init(_TtC19AppleMediaDiscovery18FitCoreDQueryClass);
    v7 = location[0];
    v26 = MEMORY[0x277D85DD0];
    v27 = -1073741824;
    v28 = 0;
    v29 = __67__AMDJSDebugHandler_handleAsyncDebugRequest_withCompletionHandler___block_invoke_3;
    v30 = &unk_278CB59B8;
    v32 = MEMORY[0x277D82BE0](v49);
    v31 = MEMORY[0x277D82BE0](v48);
    [(FitCoreDQueryClass *)v8 queryWorkoutReferencesWithWorkoutQueryConfig:v7 completionHandler:&v26];
    MEMORY[0x277D82BD8](v8);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
  }

  else if ([v47 isEqualToString:@"fetch_catalog"])
  {
    v6 = objc_alloc_init(_TtC19AppleMediaDiscovery18FitCoreDQueryClass);
    v20 = MEMORY[0x277D85DD0];
    v21 = -1073741824;
    v22 = 0;
    v23 = __67__AMDJSDebugHandler_handleAsyncDebugRequest_withCompletionHandler___block_invoke_4;
    v24 = &unk_278CB59E0;
    v25 = MEMORY[0x277D82BE0](v49);
    [(FitCoreDQueryClass *)v6 fetchCatalogMetadataWithCompletionHandler:&v20];
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&v25, 0);
  }

  else if ([v47 isEqualToString:@"fetch_bootstrap_catalog"])
  {
    v5 = objc_alloc_init(_TtC19AppleMediaDiscovery18FitCoreDQueryClass);
    v4 = location[0];
    v14 = MEMORY[0x277D85DD0];
    v15 = -1073741824;
    v16 = 0;
    v17 = __67__AMDJSDebugHandler_handleAsyncDebugRequest_withCompletionHandler___block_invoke_596;
    v18 = &unk_278CB59E0;
    v19 = MEMORY[0x277D82BE0](v49);
    [(FitCoreDQueryClass *)v5 runBootstrapCatalogSyncWithBootstrapCatalogSyncConfig:v4 completionHandler:&v14];
    MEMORY[0x277D82BD8](v5);
    objc_storeStrong(&v19, 0);
  }

  else
  {
    (*(v49 + 2))(v49, &unk_2852BB448, v48);
  }

  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(location, 0);
}

void __67__AMDJSDebugHandler_handleAsyncDebugRequest_withCompletionHandler___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = a1[4];
  (*(a1[5] + 16))();
  objc_storeStrong(location, 0);
}

void __67__AMDJSDebugHandler_handleAsyncDebugRequest_withCompletionHandler___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = a1[4];
  (*(a1[5] + 16))();
  objc_storeStrong(location, 0);
}

void __67__AMDJSDebugHandler_handleAsyncDebugRequest_withCompletionHandler___block_invoke_3(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = a1[4];
  (*(a1[5] + 16))();
  objc_storeStrong(location, 0);
}

void __67__AMDJSDebugHandler_handleAsyncDebugRequest_withCompletionHandler___block_invoke_4(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16 = 0;
  objc_storeStrong(&v16, a3);
  v15[1] = a1;
  if (v16)
  {
    v15[0] = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v14 = 16;
    if (os_log_type_enabled(v15[0], OS_LOG_TYPE_ERROR))
    {
      log = v15[0];
      type = v14;
      v7 = [v16 localizedDescription];
      v13 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_1_8_64(v18, v13);
      _os_log_error_impl(&dword_240CB9000, log, type, "Data fetch from fitcored failed with error: %@", v18, 0xCu);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v13, 0);
    }

    objc_storeStrong(v15, 0);
    (*(a1[4] + 16))();
  }

  v12 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v11 = 1;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v3 = v12;
    v4 = v11;
    __os_log_helper_16_0_0(v10);
    _os_log_impl(&dword_240CB9000, v3, v4, "Calling completion handler", v10, 2u);
  }

  objc_storeStrong(&v12, 0);
  (*(a1[4] + 16))();
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __67__AMDJSDebugHandler_handleAsyncDebugRequest_withCompletionHandler___block_invoke_596(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  (*(a1[4] + 16))();
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

@end